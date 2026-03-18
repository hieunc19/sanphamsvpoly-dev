<?php

namespace App\Http\Controllers;

use App\Models\Subject;
use App\Models\SubjectAttribute;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class SubjectAttributeController extends Controller
{
    public function getAttribute(Request $request){
        $attribute = SubjectAttribute::find($request->id);
        if(!$attribute){
            return response()->json([
                'success' => false,
                'msg' => "id không tồn tại"
            ]);
        }
        return response()->json([
            'success' => true,
            'data' => $attribute
        ]);
    }

    public function checkName(Request $request){
        if(empty($request->subject_id)){
            return response()->json([
                'success' => 0
            ]);
        }

        if(empty($request->id)){
            $count = SubjectAttribute::where('name', $request->name)
                            ->where('subject_id', $request->subject_id)
                            ->count();
            return response()->json([
                'success' => $count
            ]);
        }

        $count = SubjectAttribute::where('name', $request->name)
                        ->where('subject_id', $request->subject_id)
                        ->where('id', '!=', $request->id)
                        ->count();
        return response()->json([
            'success' => $count
        ]);
    }

    public function saveAttr(Request $request){
        if(empty($request->id)){
            $model = new SubjectAttribute();
        }else{
            $model = SubjectAttribute::find($request->id);
        }
        DB::beginTransaction();
        try{
            $model->subject_id = $request->subject_id;
            $model->name = $request->name;
            $model->save();
            DB::commit();
            return response()->json([
                'success' => true,
                'data' => $model
            ]);
        }catch(Exception $ex){
            DB::rollBack();
            return response()->json([
                'success' => false,
                'data' => "Lỗi khi thực hiện lưu dữ liệu, hãy thử lại!"
            ]);
        }
        
    }

    public function removeAttr(Request $request){
        Db::beginTransaction();
        try{
            $attribute = SubjectAttribute::find($request->id);
            $attribute->product_evaluates()->detach();
            $responseData = $attribute->toArray();
            $attribute->delete();
            DB::commit();
            return response()->json([
                'success' => true,
                'data' => $responseData
            ]);
        }catch(Exception $ex){
            DB::rollBack();
            return response()->json([
                'success' => true,
                'msg' => 'Xóa không thành công, hãy thử lại!'
            ]);
        }
        
        
    }
}
