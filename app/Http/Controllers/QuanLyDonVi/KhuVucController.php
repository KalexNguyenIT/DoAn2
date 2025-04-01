<?php

namespace App\Http\Controllers\QuanLyDonVi;

use App\Http\Controllers\Controller;
use App\Models\KhuVuc;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Illuminate\Http\Request;
use PhpOffice\PhpSpreadsheet\IOFactory;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use Ramsey\Uuid\Type\Integer;

class KhuVucController extends Controller
{
    public function index(Request $request)
    {
        $perPage = $request->input('per_page', 5);
        $sortField = $request->input('sort_by', 'id_kv');
        $sortDirection = $request->input('sort_direction', 'asc');

        // Debug: Log các tham số sắp xếp
        Log::info('Sort Parameters:', [
            'field' => $sortField,
            'direction' => $sortDirection
        ]);

        $query = KhuVuc::query();

        // Xử lý sắp xếp
        switch ($sortField) {
            case 'id_kv':
                $query->orderBy('id_kv', $sortDirection);
                break;
            case 'ten_kv':
                $query->orderBy(DB::raw('LOWER(ten_kv)'), $sortDirection)
                    ->orderBy('id_kv', 'asc');
                break;
            case 'mota':
                $query->orderBy(DB::raw('LOWER(mota)'), $sortDirection)
                    ->orderBy('id_kv', 'asc');
                break;
            default:
                $query->orderBy('id_kv', 'asc');
        }

        // Debug: Log SQL query
        Log::info('SQL Query:', [
            'sql' => $query->toSql(),
            'bindings' => $query->getBindings()
        ]);

        $khuVucs = $query->paginate($perPage);

        return view('QuanLyDonVi.KhuVuc.index', [
            'khuVucs' => $khuVucs,
            'sortField' => $sortField,
            'sortDirection' => $sortDirection
        ]);
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
            'ten_kv' => 'required|string|max:255',
            'mota' => 'nullable|string',
        ]);

        KhuVuc::create($request->all());
        return redirect()->route('khuvuc.index')->with('success', 'Thêm khu vực thành công!');
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
    public function update(Request $request, KhuVuc $khuVuc)
    {
        $request->validate([
            'ten_kv' => 'required|string|max:255',
            'mota' => 'nullable|string',
        ]);

        $khuVuc->update($request->only(['ten_kv', 'mota']));
        return redirect()->route('khuvuc.index')->with('success', 'Cập nhật khu vực thành công!');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(KhuVuc $khuVuc)
    {
        $khuVuc->delete();
        return redirect()->route('khuvuc.index')->with('success', 'Xóa khu vực thành công!');
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
                    KhuVuc::create([
                        'ten_kv' => $row[0],
                        'mota' => $row[1] ?? null
                    ]);
                }
            }

            return redirect()->route('khuvuc.index')->with('success', 'Import dữ liệu thành công!');
        } catch (\Exception $e) {
            return redirect()->route('khuvuc.index')->with('error', 'Có lỗi xảy ra khi import: ' . $e->getMessage());
        }
    }

    public function download()
    {
        try {
            $spreadsheet = new Spreadsheet();
            $sheet = $spreadsheet->getActiveSheet();

            // Thêm tiêu đề
            $sheet->setCellValue('A1', 'Tên Khu Vực');
            $sheet->setCellValue('B1', 'Mô Tả');

            // Lấy dữ liệu từ database
            $khuVucs = KhuVuc::all();
            $row = 2;

            foreach ($khuVucs as $kv) {
                $sheet->setCellValue('A' . $row, $kv->ten_kv);
                $sheet->setCellValue('B' . $row, $kv->mota);
                $row++;
            }

            // Tự động điều chỉnh độ rộng cột
            foreach (range('A', 'B') as $col) {
                $sheet->getColumnDimension($col)->setAutoSize(true);
            }

            // Tạo file Excel
            $writer = IOFactory::createWriter($spreadsheet, 'Xlsx');
            $filename = 'danh_sach_khu_vuc_' . date('Y-m-d') . '.xlsx';
            $writer->save(storage_path('app/public/' . $filename));

            return response()->download(storage_path('app/public/' . $filename))->deleteFileAfterSend();
        } catch (\Exception $e) {
            return redirect()->route('khuvuc.index')->with('error', 'Có lỗi xảy ra khi xuất file: ' . $e->getMessage());
        }
    }
}
