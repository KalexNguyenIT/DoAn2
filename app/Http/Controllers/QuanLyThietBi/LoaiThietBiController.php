<?php

namespace App\Http\Controllers\QuanLyThietBi;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\LoaiThietBi;
use PhpOffice\PhpSpreadsheet\IOFactory;
use PhpOffice\PhpSpreadsheet\Spreadsheet;


class LoaiThietBiController extends Controller
{
    function index(Request $request)
    {
        $perPage = (int) $request->input('perpage', 5);

        // Đảm bảo per_page là một trong các giá trị cho phép
        $allowedPerPage = [5, 10, 25, 50];
        if (!in_array($perPage, $allowedPerPage)) {
            $perPage = 5;
        }

        $loaiThietBi = LoaiThietBi::orderBy('id_ltb', 'asc')->paginate( $perPage);
        return view('QuanLyThietBi.LoaiThietBi.index', compact('loaiThietBi'));
    }

    public function store(Request $request)
    {
        $ltb= new LoaiThietBi(); 
        $ltb->ten_ltb = $request->input('ten_ltb');
        $ltb->mota = $request->input('mota;');
        $ltb->save();
        return redirect()->route('loaithietbi.index')->with('success', 'Equipment type created successfully.');
    }

    public function update(Request $request, $id)
    {
        $ltb = LoaiThietBi::find($id);
        $ltb->ten_ltb = $request->input('ten_ltb');
        $ltb->mota = $request->input('mota');
        $ltb->save();
        return redirect()->route('loaithietbi.index')->with('success', 'Equipment type updated successfully.');
    }

    public function destroy($id)
    {
        $ltb = LoaiThietBi::find($id);
        $ltb->delete();
        return redirect()->route('loaithietbi.index')->with('success', 'Equipment type deleted successfully.');
    }

    public function edit(Request $request, $id)
    {
        $ltb = LoaiThietBi::find($id);
        $ltb->ten_ltb = $request->input('edit_ten_ltb');
        $ltb->mota = $request->input('edit_mota');
        $ltb->save();
        return redirect()->route('loaithietbi.index')->with('error', 'Equipment type not found.');

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
