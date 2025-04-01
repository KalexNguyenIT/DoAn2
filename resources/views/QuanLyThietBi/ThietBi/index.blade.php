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

    /* Vertical layout CSS - ordered from top to bottom */
    .wbody {
        margin-top: 0px;
        display: flex; 
        flex-direction: column;
        gap: 1rem;
        width: 100%;
        height: 100%;
        font-family: Arial;
        font-size: 20px;
        background-color:rgb(251, 251, 254);
    }
    .wtitle {
        font-weight: bold;
    }

    .wdiv_width{
        display: flex;
        justify-content: space-between;
        align-items: center;
        width: 100%;
        flex-direction: row;
    }

    .wdiv_search{
        display: flex;
        justify-content: flex-start;
        align-items: center;
        width: 100%;
        flex-direction: row;
    }

    .winput {
        padding: 0.5rem;
        margin-left: 5px;
        border: 1px solidrgb(152, 153, 154);
        border-radius: 0.375rem;
        width: 70%;
        line-height: 1.25rem;
        color: #374151;
        background-color: #fff;
        transition: border-color 0.15s ease-in-out;
        margin-right: 2px;

    }

    .winput:focus {
        outline: none;
        border-color: #2563eb;
        box-shadow: 0 0 0 2px rgba(37, 99, 235, 0.2);
    }

    .winput::placeholder {
        color: #9ca3af;
    }

   .wbutton {
        padding: 0.5rem 1rem;
        background-color: rgb(255, 255, 255);
        color: white;
        border-radius: 0.375rem;
        border: 1px solid rgb(152, 153, 154); 
        cursor: pointer;
        line-height: 1.25rem;
        transition: all 0.15s ease-in-out;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }

   .wbutton:hover {
        border-color: #2563eb;

    }

    .wbutton:hover {
        outline: none;
        border-color: #2563eb;
        box-shadow: 0 0 0 2px rgba(37, 99, 235, 0.2);
    }
    
    .wbutton.clear {
        color: red;
    }

    .wbutton.insert {
        color: #059669;
        margin-right: 0.5rem;
    }
    .wbutton.upload {
        color: #2563eb;
        margin-right: 0.5rem;
    }

    .wbutton.download {
        color:rgb(193, 4, 73);
        margin-right: 0.5rem;
    }

    .wbutton.update {
        color:rgb(75, 6, 224);
        margin-right: 0.5rem;
        box-shadow: none;
    }

    .wbutton.delete {
        color:rgb(216, 10, 10);
        margin-right: 0.5rem;
        box-shadow: none;
    }

    .wbutton.save {
        color:rgb(212, 75, 6);
        margin-right: 0.5rem;
    }

    .wdiv_button {
        display: flex;
        justify-content: flex-end;
        align-items: center;
        width: 100%;
        flex-direction: row;
        gap: 0.5rem; /* Add consistent spacing between buttons */
    }

    .wdiv_group {
        display: flex;
        justify-content: space-evenly; /* Distribute space evenly between items */
        align-items: center;
        width: 100%;
        flex-direction: row;
        gap: 0.3rem; /* Add consistent spacing between buttons */
        margin-right: 3px; /* Add 3px spacing between group items */
    }

    .wselect{
        padding: 0.5rem;
        margin-left: 0.5rem;
        border: 1px solid rgb(152, 153, 154);
        border-radius: 0.375rem;
        width: 30%;
        line-height: 1.25rem;
        color: #374151;
        background-color: #fff;
        transition: border-color 0.15s ease-in-out;
        margin-right: 5px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }

    .wselect:hover {
        border-color: #2563eb;
    }

    .wselect:focus {
        outline: none;
        border-color: #2563eb;
        box-shadow: 0 0 0 2px rgba(37, 99, 235, 0.2);
    }

    .wtable-container {
        height: 350px;
        overflow: auto; /* Changed to auto to show scrollbars when needed */
        border: 1px solid #e5e7eb;
        border-radius: 0.375rem;
        font-size: 18px;
    }

    .wtable {
        width: 100%;
        border-collapse: collapse;
        font-size: 17px;
        text-align: center;
        table-layout: fixed; /* Added to ensure consistent column widths */
    }

    .wtable thead {
        background-color: rgb(2, 35, 100);
        position: sticky;
        top: 0;
        z-index: 1;
    }

    .wtable th {
        padding: 0.75rem;
        color: #ffffff;
        border-bottom: 1px solid #e5e7eb;
        white-space: nowrap;
        font-weight: 600;
        text-align: center;
        background-color: rgb(2, 35, 100); /* Added to maintain header background during scroll */
    }

    .wtable tbody {
        width: 100%;
        text-align: center;
    }

    .wtable tr {
        width: 100%;
        display: table-row; /* Changed to table-row for proper alignment */
    }

    .wtable td {
        padding: 0.75rem;
        color: #4b5563;
        border-bottom: 1px solid #e5e7eb;
        font-size: 17px;
        text-align: center;
        vertical-align: middle;
        overflow: hidden; /* Prevent content overflow */
        text-overflow: ellipsis; /* Add ellipsis for overflowing text */
        white-space: nowrap; /* Prevent text wrapping */
    }

    .wtable tbody tr:hover {
        background-color: #f9fafb;
    }

    .wpagination {
        display: flex;
        justify-content: center;
        align-items: center;
        margin-top: 0.75rem;
        gap: 0.25rem;
    }

    .wpagination-item {
        padding: 0.25rem 0.5rem;
        border: 2px solid #e5e7eb; /* Increased border width */
        border-radius: 0.25rem;
        color: #374151;
        background-color: #fff;
        cursor: pointer;
        transition: all 0.2s;
        font-size: 0.875rem;
        box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1); /* Added subtle shadow */
    }

    .wpagination-item:hover {
        background-color: #f3f4f6;
    }

    .wpagination-item.active {
        background-color: #2563eb;
        color: #fff;
        border-color: #2563eb;
    }

    .wpagination-item.disabled {
        cursor: not-allowed;
        opacity: 0.5;
    }

</style>

<div class="wbody">
    <h3 class="wtitle">    Quản lý thiết bị</h3>
    <div class="wdiv_width">
        <div class="wdiv_search">
            <input type="text" id="search" class="winput" placeholder="Tìm kiếm..." onkeyup="searchTable()">
            <button class="wbutton clear" onclick="clearSearch()">
                <i class="fas fa-times"></i>
            </button>
        </div>
        <div class="wdiv_button">
            <button class="wbutton insert" data-toggle="modal" data-target="#modalInsert" onclick="document.getElementById('addModal').classList.remove('hidden')">
                <i class="fas fa-plus"></i>
            </button>
            <button class="wbutton upload" data-toggle="modal" data-target="#modalUpload" onclick="document.getElementById('importModal').classList.remove('hidden')">
                <i class="fas fa-upload"></i>
            </button>
            <button class="wbutton download" onclick="download()">
                <i class="fas fa-download"></i>
            </button>
            <select id="perpage" class="wselect" onchange="changePerPage(this.value)">
                <option value="5" {{ request('perpage', 5) == 5 ? 'selected' : '' }}>5 row/page</option>
                <option value="10" {{ request('perpage', 5) == 10 ? 'selected' : '' }}>10 row/page</option>
                <option value="25" {{ request('perpage', 5) == 25 ? 'selected' : '' }}>25 row/page</option>
                <option value="50" {{ request('perpage', 5) == 50 ? 'selected' : '' }}>50 row/page</option>
            </select>
        </div>     
    </div>
    <div class="wtable-container">
        <table class="wtable" id="tablethietBi">
            <thead>
                <tr>
                    <th style="width: 100px">STT</th>
                    <th style="width: 100px">ID</th>
                    <th>Tên Thiết Bị</th>
                    <th>Loại Thiết Bị</th>
                    <th>Đơn Vị Tính</th>
                    <th>Gía Thiết Bị</th>
                    <th style="width: 200px">Thao tác</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($thietBi as $key => $item)
                <tr>
                    <td style="width: 100px">{{ $key + 1 }}</td>
                    <td style="width: 100px">{{ $item->id_tb }}</td>
                    <td>{{ $item->ten_tb }}</td>
                    @php
                        $trichxuat = $item->trichxuat;
                        $list = explode('-', $trichxuat);
                        $ltb= $list[0];
                        $dvt= $list[1];
                    @endphp
                    <td>{{ $ltb}}</td>
                    <td>{{ $dvt}}</td>
                    <td>{{ $item->giatb }}</td>


                    <td style="width: 100px">
                        <div class="wdiv_group">
                            <button class="wbutton update" onclick="openEditModal('{{ $item->id_tb }}', '{{ $item->ten_tb }}', '{{ $item->id_ltb }}', '{{ $item->id_dvt }}', '{{ $item->giatb }}')">
                                <i class="fas fa-edit"></i>    
                            </button>
                            <button class="wbutton delete" onclick="openDeleteModal('{{ $item->id_tb }}')"
                            >
                                <i class="fas fa-trash-alt"></i>
                            </button>
                        </div>
                    </td>
                       
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
    <div class="wpagination">
        @if ($thietBi->onFirstPage())
            <span class="wpagination-item disabled">
                <i class="fas fa-angle-double-left"></i>
            </span>
            <span class="wpagination-item disabled">
                <i class="fas fa-chevron-left"></i>
            </span>
        @else
            <a href="{{ $thietBi->url(1) }}" class="wpagination-item">
                <i class="fas fa-angle-double-left"></i>
            </a>
            <a href="{{ $thietBi->previousPageUrl() }}" class="wpagination-item">
                <i class="fas fa-chevron-left"></i>
            </a>
        @endif

        @foreach ($thietBi->getUrlRange(1, $thietBi->lastPage()) as $page => $url)
            <a href="{{ $url }}" 
            class="wpagination-item {{ $page == $thietBi->currentPage() ? 'active' : '' }}">
                {{ $page }}
            </a>
        @endforeach

        @if ($thietBi->hasMorePages())
            <a href="{{ $thietBi->nextPageUrl() }}" class="wpagination-item">
                <i class="fas fa-chevron-right"></i>
            </a>
            <a href="{{ $thietBi->url($thietBi->lastPage()) }}" class="wpagination-item">
                <i class="fas fa-angle-double-right"></i>
            </a>
        @else
            <span class="wpagination-item disabled">
                <i class="fas fa-chevron-right"></i>
            </span>
            <span class="wpagination-item disabled">
                <i class="fas fa-angle-double-right"></i>
            </span>
        @endif
    </div>
</div>


@include('QuanLyThietBi.thietBi.partials.modals')
@section('script')
<script>
    function changePerPage(value) {
        const currentUrl = new URL(window.location.href);
        currentUrl.searchParams.set('perpage', value);
        currentUrl.searchParams.delete('page');
        window.location.href = currentUrl.toString();
    }

    function download() {
       window.location.href="/thiet-bi/loai-thiet-bi/download";
    }

function searchTable() {
    // Get input value and convert to lowercase for case-insensitive search
    var input = document.getElementById("search").value.toLowerCase();
    var table = document.getElementById("tablethietBi");
    var rows = table.getElementsByTagName("tr");

    // Loop through all table rows except header
    for (var i = 1; i < rows.length; i++) {
        var showRow = false;
        var cells = rows[i].getElementsByTagName("td");

        // Check each cell in the row
        for (var j = 0; j < cells.length; j++) {
            var cellText = cells[j].textContent || cells[j].innerText;
            
            // If cell text contains search input, show the row
            if (cellText.toLowerCase().indexOf(input) > -1) {
                showRow = true;
                break;
            }
        }

        // Set row display style based on search result
        rows[i].style.display = showRow ? "" : "none";
    }
}

// Clear search input and reset table
function clearSearch() {
    document.getElementById("search").value = "";
    searchTable();
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