<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Subject;
use App\Models\Majors;
use App\Models\SubjectAttribute;

class SubjectController extends Controller
{
    public function index(Request $request){
       
        $searchValue = $request->has('search_value') ? $request->search_value : "";
        $subject = Subject::where('name','like', "%$request->search_value%")
                        ->orWhere('code', 'like', "%$request->search_value%")->paginate(10);
        $subject->appends($request->except('_token'));

        $major=Majors::get();
        return view('admin.subject.view',compact('subject','major', 'searchValue'));
        
    }
    
    public function editForm($id){
        $subject=Subject::find($id);
        $subject->load('attributes');
        $major=Majors::get();
        return view('admin.subject.edit',compact('subject','major'));
    }
    public function edit(Request $request,$id){
        $request->validate([
            'name'=>'required',
            'code'=>"required|unique:subjects,code,$id",
            'attr.*' => [
                "required",
                function ($attribute, $value, $fail) use ($request){
                    $count = 0;
                    foreach($request->attr as $item){
                        if($value == $item){
                            $count++;
                        }
                    }
                    if($count > 1){
                        $fail('Giá trị bị trùng.');
                    }
                }
            ]
        ],[
            'name.required'=>'Tên Môn Không Được Để Trống',
            'code.required'=>'Mã Môn Không Được Để Trống',
            'code.unique'=>'Mã Môn Không Được Để Trùng Lặp',
            'attr.*.required' => "Không để trống giá trị chuẩn đầu ra môn học"
        ]);
        $subject=Subject::find($id);
        $subject->fill($request->all());
        $subject->save();
        if($subject->save()){
            return redirect()->route('mon-hoc')->with('message', 'Chỉnh Sửa Thành Công');
        }
        else{
            return redirect()->back()->with('error', 'Đã Có Lỗi Xảy Ra');
        }
        
    }
    public function addForm(){
        $major=Majors::get();
        return view('admin.subject.add',compact('major'));
    }
    public function add(Request $request){
        $request->validate([
            'name'=>'required',
            'code'=>'required|unique:subjects,code',
            'attr.*' => [
                "required",
                function ($attribute, $value, $fail) use ($request){
                    $count = 0;
                    foreach($request->attr as $item){
                        if($value == $item){
                            $count++;
                        }
                    }
                    if($count > 1){
                        $fail('Giá trị bị trùng.');
                    }
                }
            ]
        ],[
            'name.required'=>'Tên Môn Không Được Để Trống',
            'code.required'=>'Mã Môn Không Được Để Trống',
            'code.unique'=>'Mã Môn Không Được Để Trùng Lặp',
            'attr.*.required' => "Không để trống giá trị chuẩn đầu ra môn học"
        ]);
        
        $subject= new Subject;
        $subject->fill($request->all());
        if($subject->save()){
            foreach ($request->attr as $item) {
                $attribute = new SubjectAttribute();
                $attribute->fill([
                    'subject_id' => $subject->id,
                    'name' => $item
                ]);
                $attribute->save();
            }
            return redirect()->route('mon-hoc')->with('message', 'Thêm Thành Công');
        }
        else{
            return redirect()->route('mon-hoc')->with('error', 'Đã Có Lỗi Xảy Ra');
        }
    }
    public function del($id){
        Subject::destroy($id);
        return redirect()->route('mon-hoc')->with('message', 'Xóa Thành Công');
    }
    public function searchKey(Request $request){
        $subject=Subject::where('name','like','%'.$request->key.'%')->get();
        $subject->load('major_obj');
        return response() -> json( $subject);

    }
    public function ExcelAddForm(){
        return view('admin.subject.exceladd');
    }
    public function ExcelAdd(Request $request){
            
    }

}
