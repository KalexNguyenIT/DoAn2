<?php

namespace App\Http\Controllers\QuanLyDonVi;

use App\Http\Controllers\Controller;

use App\Models\ViTri;
use Illuminate\Http\Request;

class ViTriController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $perPage = (int) $request->input('per_page', 5);

        // Đảm bảo per_page là một trong các giá trị cho phép
        $allowedPerPage = [5, 10, 25, 50];
        if (!in_array($perPage, $allowedPerPage)) {
            $perPage = 5;
        }

        $viTris = ViTri::orderBy('id_vt', 'desc')->paginate($perPage);
        return view('QuanLyDonVi.ViTri.index', compact('viTris'));
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
            'ten_vt' => 'required|string|max:255',
            'mota' => 'nullable|string',
        ]);

        ViTri::create($request->all());
        return redirect()->route('vitri.index')->with('success', 'Thêm vị trí thành công!');
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
    public function update(Request $request, ViTri $viTri)
    {
        $request->validate([
            'ten_vt' => 'required|string|max:255',
            'mota' => 'nullable|string',
        ]);

        $viTri->update($request->all());
        return redirect()->route('vitri.index')->with('success', 'Cập nhật vị trí thành công!');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(ViTri $viTri)
    {
        $viTri->delete();
        return redirect()->route('vitri.index')->with('success', 'Xóa vị trí thành công!');
    }
}
