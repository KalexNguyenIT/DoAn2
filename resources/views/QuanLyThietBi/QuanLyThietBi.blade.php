<x-app-layout>
    <!-- Header -->
    <style>
        /* Body */
        .body {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: flex-start;
            min-height: 100vh;
            background: #f5f5f5;
            padding: 20px;
            width: 100%;
            margin-top: 50px;
        }

        /* Header */
        .header {
            text-align: center;
            padding: 20px;
            background-color: white;
            width: 100%;
            max-width: 1000px;
            border-radius: 10px;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
        }

        .title {
            font-size: 28px;
            font-weight: bold;
            color: black;
        }

        .subtitle {
            font-size: 16px;
            color: black;
        }

        /* Container chính */
        .container {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 15px;
            background: white;
            padding: 20px;
            width: 100%;
            max-width: 1000px;
            border-radius: 10px;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
        }

        .search-container {
            display: flex;
            align-items: center;
            gap: 5px;
        }

        .search-container input {
            width: 300px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
        }

        .clear-btn {
            background: #e74c3c;
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 14px;
            display: flex;
            align-items: center;
            gap: 5px;
        }

        .clear-btn:hover {
            background: #c0392b;
        }

        /* Action Buttons */
        .button-group {
            display: flex;
            gap: 10px;
        }

        .action-btn {
            background: #28a745;
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 14px;
            display: flex;
            align-items: center;
            gap: 5px;
        }

        .action-btn:hover {
            background-color: #e74c3c;
        }

        /* Dropdown */
        .dropdown {
            border: 1px solid #ccc;
            padding: 10px;
            border-radius: 5px;
            font-size: 14px;
            cursor: pointer;
        }

        /* Table */
        .table-container {
            width: 100%;
            margin-top: 20px;
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
            overflow-x: auto;
            /* Đảm bảo bảng không bị tràn màn hình nhỏ */
            max-width: 1000px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            font-size: 16px;
            text-align: left;
            max-width: 950px;
        }

        thead {
            background-color: #4CAF50;
            color: white;
        }

        th {
            text-align: center;
            /* Căn giữa tiêu đề */
            padding: 12px 15px;
            border: 1px solid #ddd;
        }

        td {
            padding: 12px 15px;
            border: 1px solid #ddd;
            text-align: center;
            /* Căn giữa nội dung của các cột */
        }

        /* Căn giữa nội dung trong cột CHỨC NĂNG */
        td:last-child {
            display: flex;
            justify-content: center;
            align-items: center;
        }

        /* Căn giữa các nút trong action-btns */
        .action-btns {
            display: flex;
            justify-content: center;
            /* Căn giữa các nút */
            align-items: center;
            gap: 10px;
        }

        .action-btns button {
            background-color: #28a745;
            color: white;
            border: none;
            padding: 8px 12px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 14px;
            display: flex;
            align-items: center;
            gap: 5px;
        }

        .action-btns button.delete {
            background-color: #e74c3c;
        }

        .action-btns button:hover {
            opacity: 0.8;
        }

        .pagination {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            font-family: Arial, sans-serif;
            margin-top: 20px;
        }

        .pagination button {
            border: none;
            padding: 8px 15px;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
            font-weight: bold;
        }

        .pagination .prev {
            background: #3905e5;
            color: white;
            cursor: pointer;
        }

        .pagination .next {
            background: #3905e5;
            color: white;
        }

        .pagination .prev:hover {
            background: #0056b3;
        }

        .pagination .next:hover {
            background: #0056b3;
        }

        .pagination .prev:disabled {
            background-color: #ccc;
            color: #666;
        }

        .pagination .next:disabled {
            background-color: #ccc;
            color: #666;
        }

        .page-number {
            font-size: 16px;
            font-style: italic;
        }

        .insert-btn {
            background: #28a745;
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 14px;
            display: flex;
            align-items: center;
            gap: 5px;
        }

        .insert-btn:hover {
            background-color: #e74c3c;
        }

        .insert-btn i {
            font-size: 16px;
            pointer-events: none;
        }

        .form-popup {
            display: none;
            position: fixed;
            max-width: 600px;
            left: 50%;
            top: 50%;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            transform: translate(-50%, -50%);
            background-color: white;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            border-radius: 10px;
        }

        .form-popup input,
        .form-popup textarea {
            width: 100%;
            padding: 8px;
            margin: 5px 0;
            border: 1px solid #ccc;
            font-size: 16px;
            border-radius: 4px;
        }

        .form-popup button {
            margin-top: 10px;
            padding: 8px;
            border: none;
            cursor: pointer;
            border-radius: 4px;
        }

        .save-btn {
            background-color: green;
            color: white;
        }

        .reset-btn {
            background-color: red;
            color: white;
        }
    </style>
    <div class="body">
        <header class="header">
            <h1 class="title">QUẢN LÝ LOẠI THIẾT BỊ</h1>
            <p class="subtitle"><i class="fas fa-book"></i> <em>The table has 20 records.</em></p>
        </header>

        <!-- Container chứa công cụ -->
        <div class="container">
            <!-- Search Input -->
            <div class="search-container">
                <input type="text" placeholder="Search name..." id="searchInput" onkeyup="searchTable()">
                <button class="clear-btn" onclick="clearSearch()"><i class="fas fa-times"></i> Clear</button>
            </div>

            <!-- Upload & Download Buttons -->
            <div class="button-group">
                <button class="action-btn"><i class="fas fa-upload"></i> Upload File</button>
                <button class="action-btn"><i class="fas fa-download"></i> Download File</button>
                <button class="insert-btn" onclick="openForm()"><i class="fas fa-plus"></i> Insert</button>
            </div>

            <select class="dropdown" id="rowsPerPage" onchange="updateRowsPerPage()">
                <option value="5">5 rows/page</option>
                <option value="10">10 rows/page</option>
                <option value="15">15 rows/page</option>
                <option value="20">all rows/page</option>
            </select>
        </div>

        <!-- Table -->
        <div class="table-container">
            <table id="deviceTable">
                <thead>
                    <tr>
                        <th onclick="sortTable(0)">STT <i class="fas fa-sort"></i></th>
                        <th onclick="sortTable(1)">ID <i class="fas fa-sort"></i></th>
                        <th onclick="sortTable(2)">TÊN LOẠI <i class="fas fa-sort"></i></th>
                        <th>MÔ TẢ</th>
                        <th>CHỨC NĂNG</th>
                    </tr>
                </thead>
                <tbody id="tableBody">

                </tbody>
            </table>
        </div>
        <div class="pagination">
            <button class="prev" id="prevPage" onclick="changePage(-1)" disabled>&laquo; Prev</button>
            <span class="page-number">Page 1</span>
            <button class="next" id="nextPage" onclick="changePage(1)">&raquo; Next</button>
        </div>


        <div id="insertForm" class="form-popup">
            <h3>Thêm Loại Thiết Bị</h3>
            <input type="text" id="tenLoai" placeholder="Tên loại">
            <textarea id="moTa" placeholder="Mô tả" rows="4" cols="50"></textarea>
            <br>
            <button class="save-btn" onclick="closeForm()">
                <i class="fas fa-save"></i> Save
            </button>
            <button class="reset-btn" onclick="resetForm()">
                <i class="fas fa-undo"></i> Reset
        </div>
    </div>
    <script>
        let currentPage = 1;
        let ascending = true;
        let rowsPerPage = 5;
        let data = [{
                id: 1,
                name: "Loại thiết bị A",
                description: "Loại A"
            },
            {
                id: 2,
                name: "B",
                description: "Loại B"
            },
            {
                id: 3,
                name: "C",
                description: "Loại C"
            },
            {
                id: 4,
                name: "D",
                description: "Loại D"
            },
            {
                id: 5,
                name: "E",
                description: "Loại E"
            },
            {
                id: 6,
                name: "F",
                description: "Loại F"
            },
            {
                id: 7,
                name: "G",
                description: "Loại G"
            },
            {
                id: 8,
                name: "H",
                description: "Loại H"
            },
            {
                id: 9,
                name: "I",
                description: "Loại I"
            },
            {
                id: 10,
                name: "J",
                description: "Loại J"
            },
            {
                id: 11,
                name: "K",
                description: "Loại K"
            },
            {
                id: 12,
                name: "L",
                description: "Loại L"
            },
            {
                id: 13,
                name: "M",
                description: "Loại M"
            },
            {
                id: 14,
                name: "N",
                description: "Loại N"
            },
            {
                id: 15,
                name: "O",
                description: "Loại O"
            }
        ];

        function displayTable(page) {
            const tableBody = document.querySelector("#deviceTable tbody");
            tableBody.innerHTML = "";
            const start = (page - 1) * rowsPerPage;
            const end = start + rowsPerPage;
            const pageData = data.slice(start, end);

            pageData.forEach((item, index) => {
                const row = `<tr>
                    <td>${start + index + 1}</td>
                    <td>${item.id}</td>
                    <td>${item.name}</td>
                    <td>${item.description}</td>
                    <td class="action-btns">
                        <button class="edit"><i class="fas fa-edit"></i> Update</button>
                        <button class="delete"><i class="fas fa-trash"></i> Delete</button>
                    </td>
                </tr>`;
                tableBody.innerHTML += row;
            });

            // Tính tổng số trang
            const totalPages = Math.ceil(data.length / rowsPerPage);

            // Cập nhật số trang hiển thị
            document.querySelector(".page-number").innerText = `Page ${page} of ${totalPages}`;

            // Kiểm tra và vô hiệu hóa nút Prev/Next
            document.getElementById("prevPage").disabled = page <= 1;

            document.getElementById("nextPage").disabled = page >= totalPages;
        }

        function changePage(direction) {
            const totalPages = Math.ceil(data.length / rowsPerPage);
            if ((direction === -1 && currentPage > 1) || (direction === 1 && currentPage < totalPages)) {
                currentPage += direction;
                displayTable(currentPage);
            }
        }

        function updateRowsPerPage() {
            rowsPerPage = parseInt(document.getElementById("rowsPerPage").value);
            currentPage = 1;
            displayTable(currentPage);
        }

        function searchTable() {
            const searchInput = document.getElementById("searchInput").value.toLowerCase();
            const filteredData = data.filter(item =>
                item.name.toLowerCase().includes(searchInput) ||
                item.description.toLowerCase().includes(searchInput)
            );
            displayFilteredTable(filteredData);
        }


        function displayFilteredTable(filteredData) {
            const tableBody = document.querySelector("#deviceTable tbody");
            tableBody.innerHTML = "";
            filteredData.forEach((item, index) => {
                const row = `<tr>
                <td>${index + 1}</td>
                <td>${item.id}</td>
                <td>${item.name}</td>
                <td>${item.description}</td>
                <td class="action-btns">
                <button class="edit"><i class="fas fa-edit"></i> Update</button>
                <button class="delete"><i class="fas fa-trash"></i> Delete</button>
                </td>
            </tr>`;
                tableBody.innerHTML += row;
            });
        }

        function clearSearch() {
            document.getElementById("searchInput").value = "";
            updateRowsPerPage(); // Reset the table to show the current page with the selected rows per page
        }

        function sortTable(columnIndex) {
            ascending = !ascending;
            const start = (currentPage - 1) * rowsPerPage;
            const end = start + rowsPerPage;
            let pageData = data.slice(start, end);

            pageData.sort((a, b) => {
                let valA = Object.values(a)[columnIndex];
                let valB = Object.values(b)[columnIndex];

                // Chuyển đổi giá trị thành dạng chuỗi để so sánh
                valA = valA.toString().toLowerCase();
                valB = valB.toString().toLowerCase();

                if (valA < valB) {
                    return ascending ? -1 : 1;
                }
                if (valA > valB) {
                    return ascending ? 1 : -1;
                }
                return 0;
            });

            // Cập nhật bảng với dữ liệu đã sắp xếp
            const tableBody = document.querySelector("#deviceTable tbody");
            tableBody.innerHTML = "";

            pageData.forEach((item, index) => {
                const row = `<tr>
                    <td>${start + index + 1}</td>
                    <td>${item.id}</td>
                    <td>${item.name}</td>
                    <td>${item.description}</td>
                    <td class="action-btns">
                        <button class="edit"><i class="fas fa-edit"></i> Update</button>
                        <button class="delete"><i class="fas fa-trash"></i> Delete</button>
                    </td>
                </tr>`;
                tableBody.innerHTML += row;
            });
        }

        // Hiển thị bảng khi tải trang
        displayTable(currentPage);


        function openForm() {
            document.getElementById("insertForm").style.display = "block";
        }

        function closeForm() {
            document.getElementById("insertForm").style.display = "none";
        }

        function resetForm() {
            document.getElementById("tenLoai").value = "";
            document.getElementById("moTa").value = "";
        }
    </script>
</x-app-layout>