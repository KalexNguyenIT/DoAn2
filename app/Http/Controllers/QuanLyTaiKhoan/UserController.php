<?php

namespace App\Http\Controllers\QuanLyTaiKhoan;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;

class UserController extends Controller
{
    //
    public function index(Request $request)
    {
        // Lấy thông tin sort từ request (mặc định là 'name' và 'asc')
        $sortField = $request->get('sort', 'name');
        $sortOrder = $request->get('order', 'asc');

        // Lấy danh sách user theo thứ tự đã chọn + phân trang
        $users = User::orderBy($sortField, $sortOrder)->paginate(5);

        return view('users.user', compact('users', 'sortField', 'sortOrder'));
    }
}
