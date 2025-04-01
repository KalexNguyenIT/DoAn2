<?php

use App\Http\Controllers\QuanLyTaiKhoan\ProfileController;
use App\Http\Controllers\QuanLyDonVi\KhuVucController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\QuanLyTaiKhoan\UserController;
use App\Http\Controllers\QuanLyDonVi\LoaiPhongController;
use App\Http\Controllers\QuanLyDonVi\ViTriController;
use App\Http\Controllers\QuanLyThietBi\LoaiThietBiController;
use App\Http\Controllers\QuanLyThietBi\ThietBiController;


Route::get('/', function () {
    return redirect('/login');
});

Route::get('/thiet-bi/loai-thiet-bi', [LoaiThietBiController::class, 'index'])->name('loaithietbi.index');
Route::post('/thiet-bi/loai-thiet-bi/add', [LoaiThietBiController::class, 'store'])->name('loaithietbi.create');
Route::put('/thiet-bi/loai-thiet-bi/edit/{id_ltb}', [LoaiThietBiController::class, 'edit'])->name('loaithietbi.edit');
Route::delete('/thiet-bi/loai-thiet-bi/delete/{id_ltb}', [LoaiThietBiController::class, 'destroy'])->name('loaithietbi.destroy');
Route::post('/thiet-bi/loai-thiet-bi/upload', [LoaiThietBiController::class, 'upload'])->name('loaithietbi.upload');
Route::get('/thiet-bi/loai-thiet-bi/download', [LoaiThietBiController::class, 'download'])->name('loaithietbi.download');

Route::get('/thiet-bi/thiet-bi', [ThietBiController::class, 'index'])->name('thietbi.index');
Route::post('/thiet-bi/thiet-bi/add', [ThietBiController::class, 'store'])->name('thietbi.create');
Route::put('/thiet-bi/thiet-bi/edit/{id_tb}', [ThietBiController::class, 'edit'])->name('thietbi.edit');
Route::delete('/thiet-bi/thiet-bi/delete/{id_tb}', [ThietBiController::class, 'destroy'])->name('thietbi.destroy');
Route::post('/thiet-bi/thiet-bi/upload', [ThietBiController::class, 'upload'])->name('thietbi.upload');
Route::get('/thiet-bi/thiet-bi/download', [ThietBiController::class, 'download'])->name('thietbi.download');

Route::get('/dashboard', function () {
    return view('layouts.app');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

Route::get('/users', [UserController::class, 'index'])->name('users.index');
Route::get('/khu-vuc', [KhuVucController::class, 'index'])->name('khuvuc.index');
Route::get('/loai-phong', [LoaiPhongController::class, 'index'])->name('loaiphong.index');
Route::get('/vi-tri', [ViTriController::class, 'index'])->name('vitri.index');

Route::middleware('auth')->group(function () {
    Route::delete('/qlkv_del/{khuVuc}', [KhuVucController::class, 'destroy'])->name('khuvuc.delete');
    Route::get('/qlkv_upd/{khuVuc}', [KhuVucController::class, 'edit'])->name('khuvuc.edit');
    Route::put('/qlkv_upd/{khuVuc}', [KhuVucController::class, 'update'])->name('khuvuc.update');
    Route::post('/qlkv_add', [KhuVucController::class, 'store'])->name('khuvuc.create');
    Route::post('/qlkv/upload', [KhuVucController::class, 'upload'])->name('khuvuc.upload');
    Route::get('/qlkv/download', [KhuVucController::class, 'download'])->name('khuvuc.download');

    // Routes cho Loại Phòng
    Route::delete('/qllp_del/{loaiPhong}', [LoaiPhongController::class, 'destroy'])->name('loaiphong.delete');
    Route::get('/qllp_upd/{loaiPhong}', [LoaiPhongController::class, 'edit'])->name('loaiphong.edit');
    Route::put('/qllp_upd/{loaiPhong}', [LoaiPhongController::class, 'update'])->name('loaiphong.update');
    Route::post('/qllp_add', [LoaiPhongController::class, 'store'])->name('loaiphong.create');
    Route::post('/qllp/upload', [LoaiPhongController::class, 'upload'])->name('loaiphong.upload');
    Route::get('/qllp/download', [LoaiPhongController::class, 'download'])->name('loaiphong.download');

    // Routes cho Vị Trí
    Route::delete('/qlvt_del/{viTri}', [ViTriController::class, 'destroy'])->name('vitri.delete');
    Route::get('/qlvt_upd/{viTri}', [ViTriController::class, 'edit'])->name('vitri.edit');
    Route::put('/qlvt_upd/{viTri}', [ViTriController::class, 'update'])->name('vitri.update');
    Route::post('/qlvt_add', [ViTriController::class, 'store'])->name('vitri.create');
    Route::post('/qlvt/upload', [ViTriController::class, 'upload'])->name('vitri.upload');
    Route::get('/qlvt/download', [ViTriController::class, 'download'])->name('vitri.download');
});

require __DIR__ . '/auth.php';
