<?php

namespace App\Http\Controllers;

use App\Models\Majors;
use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\ProductType;
use App\Models\ProductEvaluate;
use App\Models\Semester;
use App\Models\Subject;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\DB;

class ProductByMajorController extends Controller
{

    public function ListProductByMajor(Request $request, $slug)
    {

        // lấy ra slug và tách id
        $regex = '/[0-9]*$/';
        preg_match($regex, $slug, $matches, PREG_OFFSET_CAPTURE, 0);
        $idMajor = $matches[0][0];

        //truy vấn hiện thị các sản phẩm theo đúng chuyên ngành
        $products = Product::select("products.*")
            ->leftJoin('subjects', 'products.code_subject', '=', 'subjects.code')
            ->leftJoin('majors', 'subjects.major_id', '=', 'majors.id')
            ->where('subjects.major_id', $idMajor)
            ->where('products.status', 5);

        // lọc theo môn học
        $attributes = [];
        if ($request->input("subject")) {
            $products = $products->where('products.code_subject', $request->input("subject"));
            $attributes = Subject::where('code', $request->input('subject'))->firstOrFail()->attributes;
        }

        // lọc theo thuộc tính môn học
        $productIdFiltered = [];
        $productIdsByEvaluations = ProductEvaluate::select('product_id');
        $countEvaluation = 0;
        $responseMessage = '';
        foreach ($request->all() as $key => $path) {
            if (str_contains($key, 'evaluation') && isset(explode('-', $key)[1]) && isset(explode('-', $path)[1])) {
                $evaluationId = explode('-', $key)[1];
                $score = explode('-', $path)[1];
                $productIdsByEvaluations = $productIdsByEvaluations->orWhere(function ($query) use ($evaluationId, $score) {
                    $query->where('attribute_id', '=', $evaluationId)
                    ->where('evaluate_score', '=', $score);
                });
                $countEvaluation++;
            }
        }
        $productIdsByEvaluationsWithCount = array_count_values($productIdsByEvaluations->pluck('product_id')->toArray());
        foreach($productIdsByEvaluationsWithCount as $productId => $count) {
            if ($count >= $countEvaluation) {
                array_push($productIdFiltered, $productId);
            }
        }

        if (count($productIdFiltered)) {
            $products->whereIn('products.id', $productIdFiltered);
        } else {
            $responseMessage = 'Không tìm thấy sản phẩm phù hợp! Vui lòng xem các sản phẩm tương tự.';
        }


        //lọc theo lựa chọn
        if ($request->input("sort")) {
            if ($request->input("sort") == "view_asc") {
                $products = $products->orderBy('products.view');
            } else if ($request->input("sort") == "view_desc") {
                $products = $products->orderByDesc('products.view');
            } else if ($request->input("sort") == "name_asc") {
                $products = $products->orderBy('products.name');
            } else if ($request->input("sort") == "name_desc") {
                $products = $products->orderByDesc('products.name');
            }
        }

        // phân trang và append thêm param vào paginate
        $products = $products->paginate(16)->appends($request->query());

        $product_type = ProductType::all();
        $semester = Semester::orderByDesc("id")->get();
        $products->load('user_product', 'product_gallery');

        $major = Majors::find($idMajor);
        $major_name = $major->name;
        $subjectsByMajor = $major->subjects;

        return view(
            "page.list_product.list_products_by_marjor",
            compact('products', 'semester', 'product_type', 'major_name', 'subjectsByMajor', 'attributes', 'responseMessage')
        );
    }



    public function ajaxProductByMajor(Request $request)
    {
        // chuyển param thành mảng
        $components = parse_url($request->param);
        parse_str($components['query'], $results);

        //trang nếu trang chi tiết
        if ($request->pathname == "/san-pham") {
            $query = Product::where('status', 5);
        } else { // nếu là trang chuyên ngành thì cắt chuỗi và truy vấn
            $regex = '/[0-9]*$/';
            preg_match($regex, $request->pathname, $matches, PREG_OFFSET_CAPTURE, 0);
            $idMajor = $matches[0][0];

            $query = Product::select("products.*")
                ->leftJoin('subjects', 'products.code_subject', '=', 'subjects.code')
                ->leftJoin('majors', 'subjects.major_id', '=', 'majors.id')
                ->where('subjects.major_id', $idMajor)
                ->where('products.status', 5);


        }

        // lọc theo môn
        $attributes = [];
        $sortAttributesViewData = '';
        if (isset($results['subject']) && $results['subject'] !== "") {
            $query = $query->where('products.code_subject', $results['subject']);
            $attributes = Subject::where('code', $results['subject'])->firstOrFail()->attributes;
            $sortAttributesViewData = view('page.list_product._partials.sort_attributes', compact('attributes'))->render();
        }

        // lọc theo thuộc tính môn học
        $productIdFiltered = [];
        $productIdsByEvaluations = ProductEvaluate::select('product_id');
        $countEvaluation = 0;
        $responseMessage = '';
        foreach ($results as $key => $path) {
            if (str_contains($key, 'evaluation') && isset(explode('-', $key)[1]) && isset(explode('-', $path)[1])) {
                $evaluationId = explode('-', $key)[1];
                $score = explode('-', $path)[1];
                $productIdsByEvaluations = $productIdsByEvaluations->orWhere(function ($query) use ($evaluationId, $score) {
                    $query->where('attribute_id', '=', $evaluationId)
                    ->where('evaluate_score', '=', $score);
                });
                $countEvaluation++;
            }
        }
        $productIdsByEvaluationsWithCount = array_count_values($productIdsByEvaluations->pluck('product_id')->toArray());
        foreach($productIdsByEvaluationsWithCount as $productId => $count) {
            if ($count >= $countEvaluation) {
                array_push($productIdFiltered, $productId);
            }
        }

        if (count($productIdFiltered)) {
            $query->whereIn('products.id', $productIdFiltered);
        } else {
            $responseMessage = 'Không tìm thấy sản phẩm phù hợp! Vui lòng xem các sản phẩm tương tự.';
        }

        // sắp xếp theo các lựa chọn
        if (isset($results['sort']) && $results['sort'] !== "") {
            if ($results['sort'] == "view_asc") {
                $query = $query->orderBy('products.view');
            } else if ($results['sort'] == "view_desc") {
                $query = $query->orderByDesc('products.view');
            } else if ($results['sort'] == "name_asc") {
                $query = $query->orderBy('products.name');
            } else if ($results['sort'] == "name_desc") {
                $query = $query->orderByDesc('products.name');
            }
        }
        // phân tran và thêm param cho link paginate
        $products = $query->paginate(16)->withPath($request->pathname)->appends($results);
        $results = count($products);

        $viewData = view('page.list_product._partials.base_products', compact('products', 'results', 'responseMessage'))->render();

        return response()->json([
            "success" => true,
            "data" => $viewData,
            "arrResult" => $products,
            'attributesView' => $sortAttributesViewData,
            'attributes' => $attributes,
            'responseMessage' => $responseMessage,
        ]);
    }
}
