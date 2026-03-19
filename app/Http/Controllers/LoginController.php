<?php

namespace App\Http\Controllers;

use Session;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Laravel\Socialite\Facades\Socialite;

class LoginController extends Controller
{
    public function loginScreen(){
        Session::put('url_now',url()->previous());
        return view('auth.loginForm');
    }

    public function redirectGGAuth(){
        return Socialite::driver('google')->redirect();
    }

    public function ggAuthCallback(){
        $ggUser = Socialite::driver('google')->user();
        $email = $ggUser->email;
        $user = User::where('email', $email)->first();
        
        // Nếu user chưa tồn tại, kiểm tra domain và tạo mới
        if (!$user) {
            if (str_ends_with($email, '@fpt.edu.vn') || str_ends_with($email, '@fe.edu.vn')) {
                $user = new User();
                $user->name = $ggUser->name;
                $user->email = $email;
                $user->avatar = $ggUser->avatar;
                $user->campus_id = 1; // Mặc định Toàn quốc
                $user->save();
                
                // Gán quyền sinh viên cho tài khoản mới
                $user->assignRole('student');
            }
        }

        if($user){
            // Cập nhật avatar và tên nếu có thay đổi từ Google
            $user->avatar = $ggUser->avatar;
            $user->name = $ggUser->name;
            $user->save();
            
            Auth::login($user);
            
            if (Session::get('url_now')) { // kiểm tra xem có tồn tại url cũ không
                $url_before = Session::get('url_now'); //lấy ra url trước khi người dùng login
                Session::forget('url_now');
                return redirect($url_before);
            } else {
                return redirect(route('home'));
            }
        }
        
        return redirect(route('login'))->with('error', 'Email không được phép đăng nhập vào hệ thống. Vui lòng sử dụng email @fpt.edu.vn hoặc @fe.edu.vn');
    }


    public function logout(){
        Auth::logout();
        return redirect()->back();
    }
}
