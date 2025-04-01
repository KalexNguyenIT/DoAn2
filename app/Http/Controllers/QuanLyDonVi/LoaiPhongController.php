<?php

namespace App\Http\Controllers\QuanLyDonVi;

use App\Http\Controllers\Controller;
use App\Models\KhuVuc;
use App\Models\LoaiPhong;
use Illuminate\Http\Request;

class LoaiPhongController extends Controller
{

    public function index(Request $request)
    {
        $perPage = (int) $request->input('per_page', 5);

        // Đảm bảo per_page là một trong các giá trị cho phép
        $allowedPerPage = [5, 10, 25, 50];
        if (!in_array($perPage, $allowedPerPage)) {
            $perPage = 5;
        }

        $loaiPhongs = LoaiPhong::orderBy('id_lp', 'desc')->paginate($perPage);
        return view('QuanLyDonVi.LoaiPhong.index', compact('loaiPhongs'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'ten_lp' => 'required|string|max:255',
            'mota' => 'nullable|string',
        ]);

        LoaiPhong::create($request->all());
        return redirect()->route('loaiphong.index')->with('success', 'Thêm loại phòng thành công!');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, LoaiPhong $loaiPhong)
    {
        $request->validate([
            'ten_lp' => 'required|string|max:255',
            'mota' => 'nullable|string',
        ]);

        $loaiPhong->update($request->all());
        return redirect()->route('loaiphong.index')->with('success', 'Cập nhật loại phòng thành công!');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(KhuVuc $loaiPhong)
    {
        $loaiPhong->delete();
        return redirect()->route('loaiphong.index')->with('success', 'Xóa loại phòng thành công!');
    }
}
