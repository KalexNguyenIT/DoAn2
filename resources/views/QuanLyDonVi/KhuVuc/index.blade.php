@extends('layouts.app')

@section('title', 'Quản lý khu vực')

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

    .sort-icon {
        display: inline-flex;
        align-items: center;
        transition: all 0.2s;
    }

    .sort-icon.active {
        color: #2563eb;
    }

    .sort-icon i {
        font-size: 1rem;
    }

    button:hover .sort-icon:not(.active) {
        color: #6b7280;
    }
</style>
<div class="flex flex-col h-full">
    <!-- Fixed Header Section -->
    <div class="bg-white shadow-sm z-20 sticky top-0">
        <div class="container mx-auto px-4 py-4">
            <!-- Header -->
            <div class="flex justify-between items-center mb-4">
                <h1 class="text-2xl font-bold text-gray-800">Quản lý khu vực</h1>
                <div class="flex space-x-4">
                    <button onclick="document.getElementById('addModal').classList.remove('hidden')" class="bg-blue-500 hover:bg-blue-600 text-white px-4 py-2 rounded-lg flex items-center">
                        <i class="bi bi-plus-circle mr-2"></i> Thêm khu vực
                    </button>
                    <button onclick="document.getElementById('importModal').classList.remove('hidden')" class="bg-green-500 hover:bg-green-600 text-white px-4 py-2 rounded-lg flex items-center">
                        <i class="bi bi-file-earmark-excel mr-2"></i> Import Excel
                    </button>
                    <a href="{{ route('khuvuc.download') }}" class="bg-indigo-500 hover:bg-indigo-600 text-white px-4 py-2 rounded-lg flex items-center">
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
                            <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider cursor-pointer hover:bg-gray-100" onclick="sortTable('id_kv')">
                                <div class="flex items-center">
                                    STT
                                    <span class="ml-2">
                                        @if(request('sort_by') == 'id_kv')
                                        @if(request('sort_direction') == 'asc')
                                        <i class="bi bi-arrow-up text-blue-600"></i>
                                        @else
                                        <i class="bi bi-arrow-down text-blue-600"></i>
                                        @endif
                                        @else
                                        <i class="bi bi-arrow-down-up text-gray-400"></i>
                                        @endif
                                    </span>
                                </div>
                            </th>
                            <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider cursor-pointer hover:bg-gray-100" onclick="sortTable('ten_kv')">
                                <div class="flex items-center">
                                    Tên khu vực
                                    <span class="ml-2">
                                        @if(request('sort_by') == 'ten_kv')
                                        @if(request('sort_direction') == 'asc')
                                        <i class="bi bi-arrow-up text-blue-600"></i>
                                        @else
                                        <i class="bi bi-arrow-down text-blue-600"></i>
                                        @endif
                                        @else
                                        <i class="bi bi-arrow-down-up text-gray-400"></i>
                                        @endif
                                    </span>
                                </div>
                            </th>
                            <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider cursor-pointer hover:bg-gray-100" onclick="sortTable('mota')">
                                <div class="flex items-center">
                                    Mô tả
                                    <span class="ml-2">
                                        @if(request('sort_by') == 'mota')
                                        @if(request('sort_direction') == 'asc')
                                        <i class="bi bi-arrow-up text-blue-600"></i>
                                        @else
                                        <i class="bi bi-arrow-down text-blue-600"></i>
                                        @endif
                                        @else
                                        <i class="bi bi-arrow-down-up text-gray-400"></i>
                                        @endif
                                    </span>
                                </div>
                            </th>
                            <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Thao tác</th>
                        </tr>
                    </thead>
                    <tbody class="bg-white divide-y divide-gray-200">
                        @foreach($khuVucs as $index => $khuVuc)
                        <tr class="hover:bg-gray-50">
                            <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-900">
                                {{ ($khuVucs->currentPage() - 1) * $khuVucs->perPage() + $loop->iteration }}
                            </td>
                            <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-900">{{ $khuVuc->ten_kv }}</td>
                            <td class="px-6 py-4 text-sm text-gray-900">{{ $khuVuc->mota }}</td>
                            <td class="px-6 py-4 whitespace-nowrap text-sm font-medium">
                                <button onclick="openEditModal('{{ $khuVuc->id_kv }}', '{{ $khuVuc->ten_kv }}', '{{ $khuVuc->mota }}')"
                                    class="text-blue-600 hover:text-blue-900 mr-3"
                                    data-tooltip="Sửa khu vực">
                                    <i class="bi bi-pencil"></i>
                                </button>
                                <button onclick="openDeleteModal('{{ $khuVuc->id_kv }}')"
                                    class="text-red-600 hover:text-red-900"
                                    data-tooltip="Xóa khu vực">
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
            {{ $khuVucs->appends(['per_page' => request('per_page'), 'sort_by' => request('sort_by'), 'sort_direction' => request('sort_direction')])->links() }}
        </div>
    </div>
</div>

@include('QuanLyDonVi.KhuVuc.partials.modals')
@section('script')
<script>
    function changePerPage(value) {
        const currentUrl = new URL(window.location.href);
        currentUrl.searchParams.set('per_page', value);
        currentUrl.searchParams.delete('page');
        window.location.href = currentUrl.toString();
    }

    function sortTable(field) {
        console.log('Sorting by:', field); // Debug log
        const currentUrl = new URL(window.location.href);
        const currentSortField = currentUrl.searchParams.get('sort_by');
        const currentSortDirection = currentUrl.searchParams.get('sort_direction');

        let newDirection = 'asc';
        if (field === currentSortField) {
            newDirection = currentSortDirection === 'asc' ? 'desc' : 'asc';
        }

        currentUrl.searchParams.set('sort_by', field);
        currentUrl.searchParams.set('sort_direction', newDirection);
        currentUrl.searchParams.delete('page');

        window.location.href = currentUrl.toString();
    }

    function updateUrl(params) {
        const url = new URL(window.location.href);

        // Cập nhật hoặc xóa các tham số
        Object.keys(params).forEach(key => {
            if (params[key] === null) {
                url.searchParams.delete(key);
            } else {
                url.searchParams.set(key, params[key]);
            }
        });

        // Chuyển hướng đến URL mới
        window.location.href = url.toString();
    }

    // Highlight cột đang sắp xếp
    document.addEventListener('DOMContentLoaded', function() {
        const params = new URLSearchParams(window.location.search);
        const currentSortField = params.get('sort_by');
        const currentSortDirection = params.get('sort_direction');

        if (currentSortField) {
            const button = document.querySelector(`button[onclick="sortTable('${currentSortField}')"]`);
            if (button) {
                const icon = button.querySelector('.sort-icon i');
                icon.classList.remove('bi-arrow-down-up');
                icon.classList.add(currentSortDirection === 'asc' ? 'bi-arrow-up' : 'bi-arrow-down');
                button.querySelector('.sort-icon').classList.add('active');
            }
        }
    });
</script>
@endsection
@endsection