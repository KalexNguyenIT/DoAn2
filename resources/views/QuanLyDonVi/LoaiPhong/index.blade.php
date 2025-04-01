@extends('layouts.app')

@section('title', 'Quản lý loại phòng')

@section('main')
<style>
    [data-tooltip] {
        position: relative;
    }

    [data-tooltip]:hover::before {
        content: attr(data-tooltip);
        position: absolute;
        bottom: 100%;
        left: 50%;
        transform: translateX(-50%);
        padding: 4px 8px;
        background-color: rgba(0, 0, 0, 0.8);
        color: white;
        font-size: 12px;
        border-radius: 4px;
        white-space: nowrap;
        z-index: 100;
    }
</style>
<div class="flex flex-col h-full">
    <!-- Fixed Header Section -->
    <div class="bg-white shadow-sm z-20 sticky top-0">
        <div class="container mx-auto px-4 py-4">
            <!-- Header -->
            <div class="flex justify-between items-center mb-4">
                <h1 class="text-2xl font-bold text-gray-800">Quản lý loại phòng</h1>
                <div class="flex space-x-4">
                    <button onclick="document.getElementById('addModal').classList.remove('hidden')" class="bg-blue-500 hover:bg-blue-600 text-white px-4 py-2 rounded-lg flex items-center">
                        <i class="bi bi-plus-circle mr-2"></i> Thêm loại phòng
                    </button>
                    <button onclick="document.getElementById('importModal').classList.remove('hidden')" class="bg-green-500 hover:bg-green-600 text-white px-4 py-2 rounded-lg flex items-center">
                        <i class="bi bi-file-earmark-excel mr-2"></i> Import Excel
                    </button>
                    <a href="{{ route('loaiphong.download') }}" class="bg-indigo-500 hover:bg-indigo-600 text-white px-4 py-2 rounded-lg flex items-center">
                        <i class="bi bi-download mr-2"></i> Xuất Excel
                    </a>
                </div>
            </div>

            <!-- Table Controls -->
            <div class="flex justify-between items-center">
                <div class="flex items-center space-x-2">
                    <label for="per_page" class="text-sm text-gray-700">Hiển thị:</label>
                    <select id="per_page" class="rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500" onchange="changePerPage(this.value)">
                        <option value="5" {{ request('per_page', 5) == 5 ? 'selected' : '' }}>5</option>
                        <option value="10" {{ request('per_page', 5) == 10 ? 'selected' : '' }}>10</option>
                        <option value="25" {{ request('per_page', 5) == 25 ? 'selected' : '' }}>25</option>
                        <option value="50" {{ request('per_page', 5) == 50 ? 'selected' : '' }}>50</option>
                    </select>
                    <span class="text-sm text-gray-700">hàng</span>
                </div>
            </div>
        </div>
    </div>

    <!-- Scrollable Content -->
    <div class="flex-1 container mx-auto px-4 py-4 overflow-auto">
        <!-- Table -->
        <div class="bg-white rounded-lg shadow-md overflow-hidden">
            <div class="overflow-x-auto">
                <table class="min-w-full divide-y divide-gray-200">
                    <thead class="bg-gray-50">
                        <tr>
                            <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">STT</th>
                            <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Tên loại phòng</th>
                            <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Mô tả</th>
                            <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Thao tác</th>
                        </tr>
                    </thead>
                    <tbody class="bg-white divide-y divide-gray-200">
                        @foreach($loaiPhongs as $loaiPhong)
                        <tr class="hover:bg-gray-50">
                            <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-900">{{ $loop->iteration }}</td>
                            <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-900">{{ $loaiPhong->ten_lp }}</td>
                            <td class="px-6 py-4 text-sm text-gray-900">{{ $loaiPhong->mota }}</td>
                            <td class="px-6 py-4 whitespace-nowrap text-sm font-medium">
                                <button onclick="openEditModal('{{ $loaiPhong->id_lp }}', '{{ $loaiPhong->ten_lp }}', '{{ $loaiPhong->mota }}')"
                                    class="text-blue-600 hover:text-blue-900 mr-3"
                                    data-tooltip="Sửa loại phòng">
                                    <i class="bi bi-pencil"></i>
                                </button>
                                <button onclick="openDeleteModal('{{ $loaiPhong->id_lp }}')"
                                    class="text-red-600 hover:text-red-900"
                                    data-tooltip="Xóa loại phòng">
                                    <i class="bi bi-trash"></i>
                                </button>
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
        <!-- Pagination -->
        <div class="mt-4">
            {{ $loaiPhongs->appends(['per_page' => request('per_page')])->links() }}
        </div>
    </div>
</div>

@include('QuanLyDonVi.LoaiPhong.partials.modals')

<script>
    function changePerPage(value) {
        const currentUrl = window.location.href;
        const url = new URL(currentUrl);
        url.searchParams.set('per_page', value);
        url.searchParams.delete('page');
        window.location.href = url.toString();
    }
</script>
@endsection