<?php

namespace App\Http\Controllers\QuanLyThietBi;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\LoaiThietBi;
use App\Models\ThietBi;
use App\Models\DonViTinh;



use PhpOffice\PhpSpreadsheet\IOFactory;
use PhpOffice\PhpSpreadsheet\Spreadsheet;

class ThietBiController extends Controller
{
    function index(Request $request)
    {
        $perPage = (int) $request->input('perpage', 5);

        // Đảm bảo per_page là một trong các giá trị cho phép
        $allowedPerPage = [5, 10, 25, 50];
        if (!in_array($perPage, $allowedPerPage)) {
            $perPage = 5;
        }

        $thietBi = ThietBi::orderBy('id_ltb', 'asc')->paginate( $perPage);
        $donViTinh = DonViTinh::all();
        $loaiThietBi = LoaiThietBi::all();
        return view('QuanLyThietBi.ThietBi.index', compact('thietBi', 'donViTinh', 'loaiThietBi'));
    }

    public function store(Request $request)
    {
        $tb= new ThietBi();
        $tb->ten_tb = $request->input('ten_tb');
        $tb->id_ltb = $request->input('id_ltb');
        $tb->id_dvt = $request->input('id_dvt');    

        $ltb = LoaiThietBi::find($request->input('id_ltb'));
        $dvt= DonViTinh::find($request->input('id_dvt'));
        
        $tb->trichxuat = $ltb->ten_ltb. '-'. $dvt->ten_dvt;
        $tb->giatb = $request->input('giatb');
        $tb->save();
        return redirect()->route('thietbi.index')->with('success', 'Equipment type created successfully.');
    }

    public function update(Request $request, $id)
    {
    //     $tb = ThietBi::find($id);
    //     $tb->ten_tb = $request->input('edit_ten_tb');
    //     $tb->id_ltb = $request->input('edit_id_ltb');
    //     $tb->id_dvt = $request->input('edit_id_dvt');    

  
        
     
    //     $tb->giatb = $request->input('edit_giatb');
    //     $tb->save();
        return redirect()->route('thietbi.index')->with('success', 'Equipment type updated successfully.');
    }

    public function destroy($id)
    {
        $tb = ThietBi::find($id);
        $tb->delete();
        return redirect()->route('thietbi.index')->with('success', 'Equipment type deleted successfully.');
    }

    public function edit(Request $request, $id)
    {
        $tb = ThietBi::find($id);
        $tb->ten_tb = $request->input('edit_ten_tb');
        $tb->id_ltb = $request->input('edit_id_ltb');
        $tb->id_dvt = $request->input('edit_id_dvt');
        $ltb = LoaiThietBi::find($request->input('edit_id_ltb'));
        $dvt= DonViTinh::find($request->input('edit_id_dvt'));

        $tb->trichxuat = $ltb->ten_ltb. '-'. $dvt->ten_dvt;
        $tb->giatb = $request->input('edit_giatb');
        $tb->save();
        return redirect()->route('thietbi.index')->with('success', 'Equipment type updated successfully.'); 
        return redirect()->route('thietbi.index')->with('error', 'Equipment type not found.');

    }

    public function upload(Request $request)
    {
        $request->validate([
            'file' => 'required|mimes:xlsx,xls'
        ]);

        try {
            $file = $request->file('file');
            $spreadsheet = IOFactory::load($file);
            $worksheet = $spreadsheet->getActiveSheet();
            $rows = $worksheet->toArray();

            // Bỏ qua hàng tiêu đề
            array_shift($rows);

            foreach ($rows as $row) {
                if (!empty($row[0])) { // Kiểm tra nếu có dữ liệu
                    LoaiThietBi::create([
                        'ten_ltb' => $row[0],
                        'mota' => $row[1] ?? null
                    ]);
                }
            }
            return redirect()->route('loaithietbi.index')->with('success', 'Import dữ liệu thành công!');
        } catch (\Exception $e) {
            return redirect()->route('loaithietbi.index')->with('error', 'Có lỗi xảy ra khi import: ' . $e->getMessage());
        }
    }

    public function download()
    {
        try {
            $spreadsheet = new Spreadsheet();
            $sheet = $spreadsheet->getActiveSheet();

            // Thêm tiêu đề
            $sheet->setCellValue('A1', 'Tên loại thiết bị');
            $sheet->setCellValue('B1', 'Mô Tả');

            // Lấy dữ liệu từ database
            $ltb = LoaiThietBi::all();
            $row = 2;

            foreach ($ltb as $item) {
                $sheet->setCellValue('A' . $row, $item->ten_ltb);
                $sheet->setCellValue('B' . $row, $item->mota);
                $row++;
            }

            // Tự động điều chỉnh độ rộng cột
            foreach (range('A', 'B') as $col) {
                $sheet->getColumnDimension($col)->setAutoSize(true);
            }

            // Tạo file Excel
            $writer = IOFactory::createWriter($spreadsheet, 'Xlsx');
            $filename = 'danh_sach_loai_thiet_bi_' . date('Y-m-d') . '.xlsx';
            $writer->save(storage_path('app/public/' . $filename));

            return response()->download(storage_path('app/public/' . $filename))->deleteFileAfterSend();
        } catch (\Exception $e) {
            return redirect()->route('loaithietbi.index')->with('error', 'Có lỗi xảy ra khi xuất file: ' . $e->getMessage());
        }
    }
}
