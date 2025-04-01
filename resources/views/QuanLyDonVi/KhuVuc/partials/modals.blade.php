<!-- Modal Thêm -->
<div id="addModal" class="fixed inset-0 bg-gray-600 bg-opacity-50 hidden overflow-y-auto h-full w-full z-50">
    <div class="relative top-20 mx-auto p-5 border w-96 shadow-lg rounded-md bg-white">
        <div class="flex justify-between items-center mb-4">
            <h3 class="text-lg font-medium text-gray-900">Thêm khu vực mới</h3>
            <button onclick="document.getElementById('addModal').classList.add('hidden')" class="text-gray-400 hover:text-gray-500">
                <i class="bi bi-x-lg"></i>
            </button>
        </div>
        <form action="{{ route('khuvuc.create') }}" method="POST">
            @csrf
            <div class="mb-4">
                <label for="ten_kv" class="block text-sm font-medium text-gray-700">Tên khu vực</label>
                <input type="text" name="ten_kv" id="ten_kv" class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500" required>
            </div>
            <div class="mb-4">
                <label for="mota" class="block text-sm font-medium text-gray-700">Mô tả</label>
                <textarea name="mota" id="mota" rows="3" class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"></textarea>
            </div>
            <div class="flex justify-end space-x-3">
                <button type="button" onclick="document.getElementById('addModal').classList.add('hidden')" class="bg-gray-500 hover:bg-gray-600 text-white px-4 py-2 rounded-lg">
                    Hủy
                </button>
                <button type="submit" class="bg-blue-500 hover:bg-blue-600 text-white px-4 py-2 rounded-lg">
                    Thêm
                </button>
            </div>
        </form>
    </div>
</div>

<!-- Modal Sửa -->
<div id="editModal" class="fixed inset-0 bg-gray-600 bg-opacity-50 hidden overflow-y-auto h-full w-full z-50">
    <div class="relative top-20 mx-auto p-5 border w-96 shadow-lg rounded-md bg-white">
        <div class="flex justify-between items-center mb-4">
            <h3 class="text-lg font-medium text-gray-900">Chỉnh sửa khu vực</h3>
            <button onclick="document.getElementById('editModal').classList.add('hidden')" class="text-gray-400 hover:text-gray-500">
                <i class="bi bi-x-lg"></i>
            </button>
        </div>
        <form id="editForm" method="POST">
            @csrf
            @method('PUT')
            <div class="mb-4">
                <label for="edit_ten_kv" class="block text-sm font-medium text-gray-700">Tên khu vực</label>
                <input type="text" name="ten_kv" id="edit_ten_kv" class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500" required>
            </div>
            <div class="mb-4">
                <label for="edit_mota" class="block text-sm font-medium text-gray-700">Mô tả</label>
                <textarea name="mota" id="edit_mota" rows="3" class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"></textarea>
            </div>
            <div class="flex justify-end space-x-3">
                <button type="button" onclick="document.getElementById('editModal').classList.add('hidden')" class="bg-gray-500 hover:bg-gray-600 text-white px-4 py-2 rounded-lg">
                    Hủy
                </button>
                <button type="submit" class="bg-blue-500 hover:bg-blue-600 text-white px-4 py-2 rounded-lg">
                    Cập nhật
                </button>
            </div>
        </form>
    </div>
</div>

<!-- Modal Xóa -->
<div id="deleteModal" class="fixed inset-0 bg-gray-600 bg-opacity-50 hidden overflow-y-auto h-full w-full z-50">
    <div class="relative top-20 mx-auto p-5 border w-96 shadow-lg rounded-md bg-white">
        <div class="flex justify-between items-center mb-4">
            <h3 class="text-lg font-medium text-gray-900">Xác nhận xóa</h3>
            <button onclick="document.getElementById('deleteModal').classList.add('hidden')" class="text-gray-400 hover:text-gray-500">
                <i class="bi bi-x-lg"></i>
            </button>
        </div>
        <p class="text-gray-700 mb-4">Bạn có chắc chắn muốn xóa khu vực này?</p>
        <form id="deleteForm" method="POST">
            @csrf
            @method('DELETE')
            <div class="flex justify-end space-x-3">
                <button type="button" onclick="document.getElementById('deleteModal').classList.add('hidden')" class="bg-gray-500 hover:bg-gray-600 text-white px-4 py-2 rounded-lg">
                    Hủy
                </button>
                <button type="submit" class="bg-red-500 hover:bg-red-600 text-white px-4 py-2 rounded-lg">
                    Xóa
                </button>
            </div>
        </form>
    </div>
</div>

<!-- Modal Import -->
<div id="importModal" class="fixed inset-0 bg-gray-600 bg-opacity-50 hidden overflow-y-auto h-full w-full z-50">
    <div class="relative top-20 mx-auto p-5 border w-96 shadow-lg rounded-md bg-white">
        <div class="flex justify-between items-center mb-4">
            <h3 class="text-lg font-medium text-gray-900">Import dữ liệu từ Excel</h3>
            <button onclick="document.getElementById('importModal').classList.add('hidden')" class="text-gray-400 hover:text-gray-500">
                <i class="bi bi-x-lg"></i>
            </button>
        </div>
        <form action="{{ route('khuvuc.upload') }}" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="mb-4">
                <label for="file" class="block text-sm font-medium text-gray-700">Chọn file Excel</label>
                <input type="file" name="file" id="file" class="mt-1 block w-full text-sm text-gray-500 file:mr-4 file:py-2 file:px-4 file:rounded-full file:border-0 file:text-sm file:font-semibold file:bg-blue-50 file:text-blue-700 hover:file:bg-blue-100" accept=".xlsx,.xls" required>
            </div>
            <div class="flex justify-end">
                <button type="submit" class="bg-blue-500 hover:bg-blue-600 text-white px-4 py-2 rounded-lg">
                    Import
                </button>
            </div>
        </form>
    </div>
</div>

<script>
    function openEditModal(id, ten_kv, mota) {
        document.getElementById('edit_ten_kv').value = ten_kv;
        document.getElementById('edit_mota').value = mota;
        document.getElementById('editForm').action = `/qlkv_upd/${id}`;
        document.getElementById('editModal').classList.remove('hidden');
    }

    function openDeleteModal(id) {
        document.getElementById('deleteForm').action = `/qlkv_del/${id}`;
        document.getElementById('deleteModal').classList.remove('hidden');
    }
</script>