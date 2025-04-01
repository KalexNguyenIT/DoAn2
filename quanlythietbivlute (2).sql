-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2025 at 06:07 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quanlythietbivlute`
--

-- --------------------------------------------------------
CREATE TABLE cache (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  expiration int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table cache_locks
--

CREATE TABLE cache_locks (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  expiration int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table failed_jobs
--

CREATE TABLE failed_jobs (
  id bigint(20) UNSIGNED NOT NULL,
  uuid varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  payload longtext NOT NULL,
  exception longtext NOT NULL,
  failed_at timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table jobs
--

CREATE TABLE jobs (
  id bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  payload longtext NOT NULL,
  attempts tinyint(3) UNSIGNED NOT NULL,
  reserved_at int(10) UNSIGNED DEFAULT NULL,
  available_at int(10) UNSIGNED NOT NULL,
  created_at int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table job_batches
--

CREATE TABLE job_batches (
  id varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  total_jobs int(11) NOT NULL,
  pending_jobs int(11) NOT NULL,
  failed_jobs int(11) NOT NULL,
  failed_job_ids longtext NOT NULL,
  options mediumtext DEFAULT NULL,
  cancelled_at int(11) DEFAULT NULL,
  created_at int(11) NOT NULL,
  finished_at int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table migrations
--

CREATE TABLE migrations (
  id int(10) UNSIGNED NOT NULL,
  migration varchar(255) NOT NULL,
  batch int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table migrations
--

INSERT INTO migrations (id, migration, batch) VALUES
(1, 'create_cache_table', 1),
(2, 'create_jobs_table', 1),
(3, 'create_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table password_reset_tokens
--

CREATE TABLE password_reset_tokens (
  email varchar(255) NOT NULL,
  token varchar(255) NOT NULL,
  created_at timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table sessions
--

CREATE TABLE sessions (
  id varchar(255) NOT NULL,
  user_id bigint(20) UNSIGNED DEFAULT NULL,
  ip_address varchar(45) DEFAULT NULL,
  user_agent text DEFAULT NULL,
  payload longtext NOT NULL,
  last_activity int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
--
-- Table structure for table `bangyeucau`
--

CREATE TABLE `bangyeucau` (
  `id_byc` int(11) NOT NULL,
  `id_cb` int(11) DEFAULT NULL,
  `ngayyeucau` datetime NOT NULL,
  `id_ttyc` int(11) DEFAULT NULL,
  `trichxuat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bangyeucau`
--

INSERT INTO `bangyeucau` (`id_byc`, `id_cb`, `ngayyeucau`, `id_ttyc`, `trichxuat`) VALUES
(1, 1, '2025-03-19 08:00:00', 1, 'Trích xuất 1'),
(2, 2, '2025-03-18 09:15:00', 2, 'Trích xuất 2'),
(3, 3, '2025-03-17 10:30:00', 3, 'Trích xuất 3'),
(4, 4, '2025-03-16 11:45:00', 4, 'Trích xuất 4'),
(5, 5, '2025-03-15 13:00:00', 5, 'Trích xuất 5'),
(6, 6, '2025-03-14 14:15:00', 6, 'Trích xuất 6'),
(7, 7, '2025-03-13 15:30:00', 7, 'Trích xuất 7'),
(8, 8, '2025-03-12 16:45:00', 8, 'Trích xuất 8'),
(9, 9, '2025-03-11 18:00:00', 9, 'Trích xuất 9'),
(10, 10, '2025-03-10 19:15:00', 10, 'Trích xuất 10');

-- --------------------------------------------------------

--
-- Table structure for table `bangyeucauchitietnoithat`
--

CREATE TABLE `bangyeucauchitietnoithat` (
  `id_byctcnt` int(11) NOT NULL,
  `id_nt` int(11) DEFAULT NULL,
  `soluong` int(11) DEFAULT NULL CHECK (`soluong` > 0),
  `id_byc` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bangyeucauchitietnoithat`
--

INSERT INTO `bangyeucauchitietnoithat` (`id_byctcnt`, `id_nt`, `soluong`, `id_byc`) VALUES
(1, 1, 5, 1),
(2, 2, 10, 2),
(3, 3, 2, 3),
(4, 4, 7, 4),
(5, 5, 3, 5),
(6, 6, 8, 6),
(7, 7, 4, 7),
(8, 8, 6, 8),
(9, 9, 9, 9),
(10, 10, 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `bangyeucauchitietthietbi`
--

CREATE TABLE `bangyeucauchitietthietbi` (
  `id_bycttb` int(11) NOT NULL,
  `id_tb` int(11) DEFAULT NULL,
  `soluong` int(11) DEFAULT NULL CHECK (`soluong` > 0),
  `id_byc` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bangyeucauchitietthietbi`
--

INSERT INTO `bangyeucauchitietthietbi` (`id_bycttb`, `id_tb`, `soluong`, `id_byc`) VALUES
(1, 1, 2, 1),
(2, 2, 4, 2),
(3, 3, 6, 3),
(4, 4, 8, 4),
(5, 5, 1, 5),
(6, 6, 3, 6),
(7, 7, 5, 7),
(8, 8, 7, 8),
(9, 9, 9, 9),
(10, 10, 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `bieumau`
--

CREATE TABLE `bieumau` (
  `id_bm` int(11) NOT NULL,
  `ten_bm` text NOT NULL,
  `tentaptin` text NOT NULL,
  `noiluutru` text NOT NULL,
  `thoigianluutru` datetime NOT NULL,
  `id_hk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bieumau`
--

INSERT INTO `bieumau` (`id_bm`, `ten_bm`, `tentaptin`, `noiluutru`, `thoigianluutru`, `id_hk`) VALUES
(1, 'Biểu mẫu đăng ký môn học', 'dangky.pdf', '/documents/hocky1', '2024-03-10 08:00:00', 1),
(2, 'Biểu mẫu xác nhận học phí', 'hocphi.pdf', '/documents/hocky1', '2024-03-11 09:00:00', 1),
(3, 'Biểu mẫu cấp lại thẻ sinh viên', 'capthe.pdf', '/documents/hocky1', '2024-03-12 10:00:00', 1),
(4, 'Biểu mẫu xin nghỉ học', 'nghihoc.pdf', '/documents/hocky2', '2024-03-13 11:00:00', 2),
(5, 'Biểu mẫu xác nhận tốt nghiệp', 'totnghiep.pdf', '/documents/hocky2', '2024-03-14 12:00:00', 2),
(6, 'Biểu mẫu phản hồi giảng viên', 'phanhoi.pdf', '/documents/hocky1', '2024-03-15 13:00:00', 1),
(7, 'Biểu mẫu mượn phòng học', 'muonphong.pdf', '/documents/hocky2', '2024-03-16 14:00:00', 2),
(8, 'Biểu mẫu đăng ký nghiên cứu', 'nghiencuu.pdf', '/documents/hocky1', '2024-03-17 15:00:00', 1),
(9, 'Biểu mẫu đổi lớp học', 'doilop.pdf', '/documents/hocky2', '2024-03-18 16:00:00', 2),
(10, 'Biểu mẫu đăng ký học lại', 'hoclai.pdf', '/documents/hocky1', '2024-03-19 17:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `canbo`
--

CREATE TABLE `canbo` (
  `id_cb` int(11) NOT NULL,
  `hoten` text NOT NULL,
  `sdt` varchar(12) NOT NULL,
  `diachi` text NOT NULL,
  `id_cv` int(11) DEFAULT NULL,
  `id_dv` int(11) DEFAULT NULL,
  `trichxuat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `canbo`
--

INSERT INTO `canbo` (`id_cb`, `hoten`, `sdt`, `diachi`, `id_cv`, `id_dv`, `trichxuat`) VALUES
(1, 'Nguyễn Văn A', '0912345678', 'Hà Nội', 1, 1, 'Trích xuất 1'),
(2, 'Trần Thị B', '0912345679', 'Hồ Chí Minh', 2, 2, 'Trích xuất 2'),
(3, 'Lê Văn C', '0912345680', 'Đà Nẵng', 3, 3, 'Trích xuất 3'),
(4, 'Phạm Thị D', '0912345681', 'Hải Phòng', 4, 4, 'Trích xuất 4'),
(5, 'Hoàng Văn E', '0912345682', 'Cần Thơ', 5, 5, 'Trích xuất 5'),
(6, 'Vũ Thị F', '0912345683', 'Huế', 6, 6, 'Trích xuất 6'),
(7, 'Đỗ Văn G', '0912345684', 'Nha Trang', 7, 7, 'Trích xuất 7'),
(8, 'Bùi Thị H', '0912345685', 'Vinh', 8, 8, 'Trích xuất 8'),
(9, 'Ngô Văn K', '0912345686', 'Quy Nhơn', 9, 9, 'Trích xuất 9'),
(10, 'Đặng Thị M', '0912345687', 'Buôn Ma Thuột', 10, 10, 'Trích xuất 10');

-- ---------------------------------------

--
-- Table structure for table `chucvu`
--

CREATE TABLE `chucvu` (
  `id_cv` int(11) NOT NULL,
  `ten_cv` text NOT NULL,
  `mota` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chucvu`
--

INSERT INTO `chucvu` (`id_cv`, `ten_cv`, `mota`) VALUES
(1, 'Trưởng phòng', 'Lãnh đạo phòng'),
(2, 'Phó phòng', 'Hỗ trợ lãnh đạo phòng'),
(3, 'Chuyên viên', 'Nhân viên chuyên môn'),
(4, 'Thư ký', 'Hỗ trợ công việc hành chính'),
(5, 'Nhân viên', 'Nhân viên thông thường'),
(6, 'Giảng viên', 'Giảng dạy môn học'),
(7, 'Nghiên cứu viên', 'Thực hiện nghiên cứu'),
(8, 'Kỹ thuật viên', 'Bảo trì thiết bị'),
(9, 'Thủ quỹ', 'Quản lý tài chính'),
(10, 'Bảo vệ', 'Đảm bảo an ninh');

-- --------------------------------------------------------

--
-- Table structure for table `danhsachcanboquanlyphong`
--

CREATE TABLE `danhsachcanboquanlyphong` (
  `id_ds` int(11) NOT NULL,
  `id_cb` int(11) DEFAULT NULL,
  `id_p` int(11) DEFAULT NULL,
  `ngaybatdau` date DEFAULT NULL,
  `ngayketthuc` date DEFAULT NULL,
  `id_nv` int(11) DEFAULT NULL,
  `trichxuat` text NOT NULL
) ;

--
-- Dumping data for table `danhsachcanboquanlyphong`
--

INSERT INTO `danhsachcanboquanlyphong` (`id_ds`, `id_cb`, `id_p`, `ngaybatdau`, `ngayketthuc`, `id_nv`, `trichxuat`) VALUES
(1, 1, 1, '2024-01-01', '2024-12-31', 1, 'Quản lý phòng học 101'),
(2, 2, 2, '2024-02-01', '2024-12-31', 2, 'Hỗ trợ giảng viên phòng 102'),
(3, 3, 3, '2024-03-01', '2024-12-31', 3, 'Bảo trì thiết bị phòng 103'),
(4, 4, 4, '2024-04-01', '2024-12-31', 4, 'Vệ sinh phòng học 104'),
(5, 5, 5, '2024-05-01', '2024-12-31', 5, 'Hướng dẫn sinh viên phòng 105'),
(6, 6, 6, '2024-06-01', '2024-12-31', 6, 'Quản lý tài nguyên phòng 106'),
(7, 7, 7, '2024-07-01', '2024-12-31', 7, 'Kiểm tra chất lượng phòng 107'),
(8, 8, 8, '2024-08-01', '2024-12-31', 8, 'Hỗ trợ sự kiện phòng 108'),
(9, 9, 9, '2024-09-01', '2024-12-31', 9, 'Giám sát thi cử phòng 109'),
(10, 10, 10, '2024-10-01', '2024-12-31', 10, 'Tổ chức hội nghị phòng 110');

-- --------------------------------------------------------

--
-- Table structure for table `danhsachviecsudung`
--

CREATE TABLE `danhsachviecsudung` (
  `int_dsvsd` int(11) NOT NULL,
  `noidungviecsudung` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `danhsachviecsudung`
--

INSERT INTO `danhsachviecsudung` (`int_dsvsd`, `noidungviecsudung`) VALUES
(1, 'Sử dụng phòng học'),
(2, 'Sử dụng thiết bị dạy học'),
(3, 'Sử dụng nội thất'),
(4, 'Vệ sinh phòng học'),
(5, 'Bảo trì thiết bị'),
(6, 'Bảo trì nội thất'),
(7, 'Học nhóm'),
(8, 'Tổ chức hội học'),
(9, 'Học trực tuyến'),
(10, 'Sử dụng phòng lab');

-- --------------------------------------------------------

--
-- Table structure for table `donvi`
--

CREATE TABLE `donvi` (
  `id_dv` int(11) NOT NULL,
  `ten_dv` text NOT NULL,
  `ten_viettat` varchar(30) NOT NULL,
  `id_p` int(11) DEFAULT NULL,
  `trichxuat` text NOT NULL,
  `sdt` varchar(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mota` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donvi`
--

INSERT INTO `donvi` (`id_dv`, `ten_dv`, `ten_viettat`, `id_p`, `trichxuat`, `sdt`, `email`, `mota`) VALUES
(1, 'Đơn vị 1', 'DV1', NULL, 'Trích xuất 1', '0123456789', 'dv1@example.com', 'Mô tả ĐV1'),
(2, 'Đơn vị 2', 'DV2', NULL, 'Trích xuất 2', '0123456790', 'dv2@example.com', 'Mô tả ĐV2'),
(3, 'Đơn vị 3', 'DV3', NULL, 'Trích xuất 3', '0123456791', 'dv3@example.com', 'Mô tả ĐV3'),
(4, 'Đơn vị 4', 'DV4', NULL, 'Trích xuất 4', '0123456792', 'dv4@example.com', 'Mô tả ĐV4'),
(5, 'Đơn vị 5', 'DV5', NULL, 'Trích xuất 5', '0123456793', 'dv5@example.com', 'Mô tả ĐV5'),
(6, 'Đơn vị 6', 'DV6', NULL, 'Trích xuất 6', '0123456794', 'dv6@example.com', 'Mô tả ĐV6'),
(7, 'Đơn vị 7', 'DV7', NULL, 'Trích xuất 7', '0123456795', 'dv7@example.com', 'Mô tả ĐV7'),
(8, 'Đơn vị 8', 'DV8', NULL, 'Trích xuất 8', '0123456796', 'dv8@example.com', 'Mô tả ĐV8'),
(9, 'Đơn vị 9', 'DV9', NULL, 'Trích xuất 9', '0123456797', 'dv9@example.com', 'Mô tả ĐV9'),
(10, 'Đơn vị 10', 'DV10', NULL, 'Trích xuất 10', '0123456798', 'dv10@example.com', 'Mô tả ĐV10');

-- --------------------------------------------------------

--
-- Table structure for table `donvitinh`
--

CREATE TABLE `donvitinh` (
  `id_dvt` int(11) NOT NULL,
  `ten_dvt` text NOT NULL,
  `mota` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donvitinh`
--

INSERT INTO `donvitinh` (`id_dvt`, `ten_dvt`, `mota`) VALUES
(1, 'Cái', 'Đơn vị tính cho vật phẩm riêng lẻ'),
(2, 'Bộ', 'Bao gồm nhiều thành phần'),
(3, 'Chiếc', 'Đơn vị tính phổ biến cho thiết bị'),
(4, 'Hộp', 'Dùng để đựng nhiều vật phẩm nhỏ'),
(5, 'Thùng', 'Đóng gói số lượng lớn'),
(6, 'Lọ', 'Chứa các dung dịch hoặc vật nhỏ'),
(7, 'Cuộn', 'Thường dùng cho giấy, dây cáp'),
(8, 'Mét', 'Dùng đo lường chiều dài'),
(9, 'Lít', 'Đo thể tích chất lỏng'),
(10, 'Kg', 'Đo khối lượng vật thể');

-- --------------------------------------------------------

--
-- Table structure for table `hocky`
--

CREATE TABLE `hocky` (
  `id_hk` int(11) NOT NULL,
  `ten_hk` varchar(60) NOT NULL,
  `ngaybatdau` date NOT NULL,
  `ngayketthuc` date NOT NULL,
  `id_nh` int(11) DEFAULT NULL,
  `trichxuat` text NOT NULL
) ;

--
-- Dumping data for table `hocky`
--

INSERT INTO `hocky` (`id_hk`, `ten_hk`, `ngaybatdau`, `ngayketthuc`, `id_nh`, `trichxuat`) VALUES
(1, 'Học kỳ 1', '2023-08-01', '2023-12-31', 1, 'Dữ liệu học kỳ 1'),
(2, 'Học kỳ 2', '2024-01-01', '2024-05-31', 1, 'Dữ liệu học kỳ 2'),
(3, 'Học kỳ 1', '2024-08-01', '2024-12-31', 2, 'Dữ liệu học kỳ 1'),
(4, 'Học kỳ 2', '2025-01-01', '2025-05-31', 2, 'Dữ liệu học kỳ 2'),
(5, 'Học kỳ 1', '2025-08-01', '2025-12-31', 3, 'Dữ liệu học kỳ 1'),
(6, 'Học kỳ 2', '2026-01-01', '2026-05-31', 3, 'Dữ liệu học kỳ 2'),
(7, 'Học kỳ 1', '2026-08-01', '2026-12-31', 4, 'Dữ liệu học kỳ 1'),
(8, 'Học kỳ 2', '2027-01-01', '2027-05-31', 4, 'Dữ liệu học kỳ 2'),
(9, 'Học kỳ 1', '2027-08-01', '2027-12-31', 5, 'Dữ liệu học kỳ 1'),
(10, 'Học kỳ 2', '2028-01-01', '2028-05-31', 5, 'Dữ liệu học kỳ 2');

-- --------------------------------------------------------

--
-- Table structure for table `hocphan`
--

CREATE TABLE `hocphan` (
  `id_hp` int(11) NOT NULL,
  `mahocphan` char(6) DEFAULT NULL,
  `ten_hp` varchar(40) NOT NULL,
  `sotinchi` int(11) NOT NULL,
  `sotinchilythuyet` int(11) NOT NULL
) ;

--
-- Dumping data for table `hocphan`
--

INSERT INTO `hocphan` (`id_hp`, `mahocphan`, `ten_hp`, `sotinchi`, `sotinchilythuyet`) VALUES
(1, 'HP001', 'Toán cao cấp', 4, 3),
(2, 'HP002', 'Lập trình C++', 3, 2),
(3, 'HP003', 'Mạng máy tính', 3, 2),
(4, 'HP004', 'Hệ điều hành', 4, 3),
(5, 'HP005', 'Cấu trúc dữ liệu', 3, 2),
(6, 'HP006', 'Lập trình Java', 3, 2),
(7, 'HP007', 'Trí tuệ nhân tạo', 4, 3),
(8, 'HP008', 'Cơ sở dữ liệu', 3, 2),
(9, 'HP009', 'Đồ họa máy tính', 3, 2),
(10, 'HP010', 'Phân tích thuật toán', 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `khuvuc`
--

CREATE TABLE `khuvuc` (
  `id_kv` int(11) NOT NULL,
  `ten_kv` text NOT NULL,
  `mota` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `khuvuc`
--

INSERT INTO `khuvuc` (`id_kv`, `ten_kv`, `mota`) VALUES
(1, 'Khu A', 'Khu vực gần cổng chính'),
(2, 'Khu B', 'Khu vực trung tâm'),
(3, 'Khu C', 'Khu vực phía sau'),
(4, 'Khu D', 'Khu vực hành lang'),
(5, 'Khu E', 'Khu vực tầng 2'),
(6, 'Khu F', 'Khu vực tầng 3'),
(7, 'Khu G', 'Khu vực nghiên cứu'),
(8, 'Khu H', 'Khu vực thư viện'),
(9, 'Khu I', 'Khu vực nhà ăn'),
(10, 'Khu J', 'Khu vực sân thượng');

-- --------------------------------------------------------

--
-- Table structure for table `lichhoc`
--

CREATE TABLE `lichhoc` (
  `stt_lh` int(11) NOT NULL,
  `ngayhoc` date NOT NULL,
  `id_th_batdau` int(11) DEFAULT NULL,
  `id_th_ketthuc` int(11) DEFAULT NULL,
  `id_cb` int(11) DEFAULT NULL,
  `id_p` int(11) DEFAULT NULL,
  `id_lhp` int(11) DEFAULT NULL,
  `trichxuat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lichhoc`
--

INSERT INTO `lichhoc` (`stt_lh`, `ngayhoc`, `id_th_batdau`, `id_th_ketthuc`, `id_cb`, `id_p`, `id_lhp`, `trichxuat`) VALUES
(11, '2024-03-18', 1, 2, 1, 1, 1, 'Lịch học Toán cao cấp'),
(12, '2024-03-19', 3, 4, 2, 2, 2, 'Lịch học Lập trình C++'),
(13, '2024-03-20', 2, 3, 3, 3, 3, 'Lịch học Mạng máy tính'),
(14, '2024-03-21', 5, 6, 4, 4, 4, 'Lịch học Hệ điều hành'),
(15, '2024-03-22', 1, 3, 5, 5, 5, 'Lịch học Cấu trúc dữ liệu'),
(16, '2024-03-23', 4, 5, 6, 6, 6, 'Lịch học Lập trình Java'),
(17, '2024-03-24', 2, 4, 7, 7, 7, 'Lịch học Trí tuệ nhân tạo'),
(18, '2024-03-25', 3, 5, 8, 8, 8, 'Lịch học Cơ sở dữ liệu'),
(19, '2024-03-26', 1, 2, 9, 9, 9, 'Lịch học Đồ họa máy tính'),
(20, '2024-03-27', 5, 6, 10, 10, 10, 'Lịch học Phân tích thuật toán');

-- --------------------------------------------------------

--
-- Table structure for table `lichsusudungtaikhoan`
--

CREATE TABLE `lichsusudungtaikhoan` (
  `id_lssd` int(11) NOT NULL,
  `id_tk` bigint(20) UNSIGNED DEFAULT NULL,
  `id_dsvsd` int(11) DEFAULT NULL,
  `thoigianthuchien` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lichsusudungtaikhoan`
--

-- INSERT INTO `lichsusudungtaikhoan` (`id_lssd`, `id_tk`, `id_dsvsd`, `thoigianthuchien`) VALUES
-- (1, 1, 1, '2025-03-01 08:30:00'),
-- (2, 2, 2, '2025-03-02 09:45:00'),
-- (3, 3, 3, '2025-03-03 10:50:00'),
-- (4, 4, 4, '2025-03-04 12:15:00'),
-- (5, 5, 5, '2025-03-05 14:00:00'),
-- (6, 6, 6, '2025-03-06 15:30:00'),
-- (7, 7, 7, '2025-03-07 16:45:00'),
-- (8, 8, 8, '2025-03-08 18:20:00'),
-- (9, 9, 9, '2025-03-09 19:40:00'),
-- (10, 10, 10, '2025-03-10 21:10:00');

-- --------------------------------------------------------

--
-- Table structure for table `loaibaotrinoithat`
--

CREATE TABLE `loaibaotrinoithat` (
  `id_lbt_nt` int(11) NOT NULL,
  `ten_bt` text NOT NULL,
  `mota` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loaibaotrinoithat`
--

INSERT INTO `loaibaotrinoithat` (`id_lbt_nt`, `ten_bt`, `mota`) VALUES
(1, 'Sửa chữa chân ghế', 'Thay thế hoặc gia cố chân ghế bị hỏng'),
(2, 'Làm mới bề mặt bàn', 'Sơn hoặc đánh bóng lại bề mặt bàn'),
(3, 'Thay đệm ghế', 'Thay thế phần đệm ngồi của ghế'),
(4, 'Sửa bản lề tủ', 'Thay hoặc sửa bản lề bị hỏng của tủ'),
(5, 'Thay kính cửa sổ', 'Thay kính bị nứt hoặc vỡ'),
(6, 'Gia cố kệ sách', 'Kiểm tra và gia cố độ chắc chắn của kệ sách'),
(7, 'Bảo dưỡng tủ gỗ', 'Làm sạch và phủ dầu bảo vệ tủ gỗ'),
(8, 'Sửa khóa cửa', 'Thay thế hoặc sửa chữa khóa cửa bị hỏng'),
(9, 'Thay chân bàn', 'Thay thế chân bàn bị gãy hoặc lung lay'),
(10, 'Đánh bóng ghế gỗ', 'Đánh bóng và phủ lớp bảo vệ ghế gỗ');

-- --------------------------------------------------------

--
-- Table structure for table `loaibaotrithietbi`
--

CREATE TABLE `loaibaotrithietbi` (
  `id_lbt_tb` int(11) NOT NULL,
  `ten_bt` text NOT NULL,
  `mota` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loaibaotrithietbi`
--

INSERT INTO `loaibaotrithietbi` (`id_lbt_tb`, `ten_bt`, `mota`) VALUES
(1, 'Kiểm tra hàng tháng', 'Bảo trì định kỳ hàng tháng'),
(2, 'Vệ sinh linh kiện', 'Làm sạch bên trong thiết bị'),
(3, 'Nâng cấp phần mềm', 'Cập nhật hệ điều hành'),
(4, 'Kiểm tra pin', 'Bảo trì và thay pin nếu cần'),
(5, 'Bị hỏng linh kiện', 'Sửa chữa linh kiện bị hỏng'),
(6, 'Hiệu chuẩn cấu hình', 'Cài đặt lại tham số cấu hình'),
(7, 'Nâng cấp phần cứng', 'Thay thế linh kiện phần cứng'),
(8, 'Kiểm tra kết nối', 'Kiểm tra dây két nối và cổ định'),
(9, 'Bảo trì hệ thống máy chủ', 'Kiểm tra và sửa chữa hệ thống máy chủ'),
(10, 'Khắc phục sự cố khẩn cấp', 'Xử lý lỗi nhanh chóng nhất có thể');

-- --------------------------------------------------------

--
-- Table structure for table `loainoithat`
--

CREATE TABLE `loainoithat` (
  `id_lnt` int(11) NOT NULL,
  `ten_lnt` text NOT NULL,
  `mota` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loainoithat`
--

INSERT INTO `loainoithat` (`id_lnt`, `ten_lnt`, `mota`) VALUES
(1, 'Bàn', 'Các loại bàn làm việc, bàn họp'),
(2, 'Ghế', 'Các loại ghế văn phòng, ghế sofa'),
(3, 'Tủ', 'Tủ tài liệu, tủ gỗ'),
(4, 'Kệ', 'Kệ để sách, kệ trưng bày'),
(5, 'Giường', 'Giường ngủ, giường tầng'),
(6, 'Sofa', 'Ghế sofa phòng chờ, tiếp khách'),
(7, 'Rèm cửa', 'Rèm che ánh sáng, rèm trang trí'),
(8, 'Thảm', 'Thảm trải sàn, thảm chống trơn'),
(9, 'Đèn', 'Đèn bàn, đèn trang trí'),
(10, 'Gương', 'Gương soi, gương trang trí');

-- --------------------------------------------------------

--
-- Table structure for table `loaiphong`
--

CREATE TABLE `loaiphong` (
  `id_lp` int(11) NOT NULL,
  `ten_lp` text NOT NULL,
  `mota` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loaiphong`
--

INSERT INTO `loaiphong` (`id_lp`, `ten_lp`, `mota`) VALUES
(1, 'Phòng học', 'Dành cho học tập, giảng dạy'),
(2, 'Phòng họp', 'Dành cho họp nhóm, hội thảo'),
(3, 'Phòng lab', 'Dành cho thực hành thí nghiệm'),
(4, 'Phòng máy', 'Trang bị máy tính'),
(5, 'Phòng thư viện', 'Dành cho đọc sách, nghiên cứu'),
(6, 'Phòng hội trường', 'Sức chứa lớn, tổ chức sự kiện'),
(7, 'Phòng nghiên cứu', 'Dành cho các dự án nghiên cứu'),
(8, 'Phòng riêng', 'Không gian cá nhân, yên tĩnh'),
(9, 'Phòng thể thao', 'Dành cho các hoạt động thể chất'),
(10, 'Phòng chơi game', 'Khu vực giải trí');

-- --------------------------------------------------------

--
-- Table structure for table `loaithietbi`
--

CREATE TABLE `loaithietbi` (
  `id_ltb` int(11) NOT NULL,
  `ten_ltb` text NOT NULL,
  `mota` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loaithietbi`
--

INSERT INTO `loaithietbi` (`id_ltb`, `ten_ltb`, `mota`) VALUES
(1, 'Máy tính', 'Các loại máy tính bàn, laptop'),
(2, 'Máy chiếu', 'Thiết bị trình chiếu hình ảnh'),
(3, 'Máy in', 'Thiết bị in ấn tài liệu'),
(4, 'Loa', 'Hệ thống âm thanh phục vụ hội thảo'),
(5, 'Micro', 'Thiết bị khuếch đại âm thanh'),
(6, 'Điều hòa', 'Thiết bị làm mát không khí'),
(7, 'Tivi', 'Màn hình hiển thị cỡ lớn'),
(8, 'Camera', 'Thiết bị giám sát an ninh'),
(9, 'Router', 'Thiết bị phát sóng WiFi'),
(10, 'Bảng điện tử', 'Bảng thông minh hỗ trợ giảng dạy');

-- --------------------------------------------------------

--
-- Table structure for table `lophocphan`
--

CREATE TABLE `lophocphan` (
  `id_lhp` int(11) NOT NULL,
  `malophocphan` varchar(40) NOT NULL,
  `soluongsinhvien` int(11) DEFAULT NULL CHECK (`soluongsinhvien` > 0),
  `id_hk` int(11) DEFAULT NULL,
  `id_hp` int(11) DEFAULT NULL,
  `trichxuat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lophocphan`
--

INSERT INTO `lophocphan` (`id_lhp`, `malophocphan`, `soluongsinhvien`, `id_hk`, `id_hp`, `trichxuat`) VALUES
(1, 'LHP001', 30, 1, 1, 'Toán cao cấp - Kỳ 1'),
(2, 'LHP002', 25, 1, 2, 'Lập trình C++ - Kỳ 1'),
(3, 'LHP003', 28, 2, 3, 'Mạng máy tính - Kỳ 2'),
(4, 'LHP004', 26, 2, 4, 'Hệ điều hành - Kỳ 2'),
(5, 'LHP005', 27, 1, 5, 'Cấu trúc dữ liệu - Kỳ 1'),
(6, 'LHP006', 29, 1, 6, 'Lập trình Java - Kỳ 1'),
(7, 'LHP007', 32, 2, 7, 'Trí tuệ nhân tạo - Kỳ 2'),
(8, 'LHP008', 30, 1, 8, 'Cơ sở dữ liệu - Kỳ 1'),
(9, 'LHP009', 24, 2, 9, 'Đồ họa máy tính - Kỳ 2'),
(10, 'LHP010', 31, 2, 10, 'Phân tích thuật toán - Kỳ 2');

-- --------------------------------------------------------

--
-- Table structure for table `namhoc`
--

CREATE TABLE `namhoc` (
  `id_nh` int(11) NOT NULL,
  `ten_nh` text NOT NULL,
  `nambatdau` int(11) NOT NULL,
  `namketthuc` int(11) NOT NULL
) ;

--
-- Dumping data for table `namhoc`
--

INSERT INTO `namhoc` (`id_nh`, `ten_nh`, `nambatdau`, `namketthuc`) VALUES
(1, 'Năm học 2023-2024', 2023, 2024),
(2, 'Năm học 2024-2025', 2024, 2025),
(3, 'Năm học 2025-2026', 2025, 2026),
(4, 'Năm học 2026-2027', 2026, 2027),
(5, 'Năm học 2027-2028', 2027, 2028),
(6, 'Năm học 2028-2029', 2028, 2029),
(7, 'Năm học 2029-2030', 2029, 2030),
(8, 'Năm học 2030-2031', 2030, 2031),
(9, 'Năm học 2031-2032', 2031, 2032),
(10, 'Năm học 2032-2033', 2032, 2033);

-- --------------------------------------------------------

--
-- Table structure for table `nhatkysudungnoithat`
--

CREATE TABLE `nhatkysudungnoithat` (
  `id_nksd_nt` int(11) NOT NULL,
  `id_nt` int(11) DEFAULT NULL,
  `soluong` int(11) DEFAULT NULL CHECK (`soluong` > 0),
  `id_ttsdnt` int(11) DEFAULT NULL,
  `id_nk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nhatkysudungnoithat`
--

INSERT INTO `nhatkysudungnoithat` (`id_nksd_nt`, `id_nt`, `soluong`, `id_ttsdnt`, `id_nk`) VALUES
(1, 1, 5, 1, 11),
(2, 2, 3, 2, 12),
(3, 3, 4, 3, 13),
(4, 4, 2, 4, 14),
(5, 5, 6, 5, 15),
(6, 6, 5, 1, 16),
(7, 7, 3, 2, 17),
(8, 8, 4, 3, 18),
(9, 9, 2, 4, 19),
(10, 10, 6, 5, 20);

-- --------------------------------------------------------

--
-- Table structure for table `nhatkysudungphong`
--

CREATE TABLE `nhatkysudungphong` (
  `id_nk` int(11) NOT NULL,
  `id_lh` int(11) DEFAULT NULL,
  `id_ttp` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nhatkysudungphong`
--

INSERT INTO `nhatkysudungphong` (`id_nk`, `id_lh`, `id_ttp`) VALUES
(11, 11, 1),
(12, 12, 3),
(13, 13, 2),
(14, 14, 4),
(15, 15, 5),
(16, 16, 1),
(17, 17, 3),
(18, 18, 2),
(19, 19, 4),
(20, 20, 5);

-- --------------------------------------------------------

--
-- Table structure for table `nhatkysudungthietbi`
--

CREATE TABLE `nhatkysudungthietbi` (
  `id_nksd_tb` int(11) NOT NULL,
  `id_tb` int(11) DEFAULT NULL,
  `soluong` int(11) DEFAULT NULL CHECK (`soluong` > 0),
  `id_ttsdtb` int(11) DEFAULT NULL,
  `id_nk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nhatkysudungthietbi`
--

INSERT INTO `nhatkysudungthietbi` (`id_nksd_tb`, `id_tb`, `soluong`, `id_ttsdtb`, `id_nk`) VALUES
(11, 1, 5, 1, 11),
(12, 2, 3, 2, 12),
(13, 3, 4, 3, 13),
(14, 4, 2, 4, 14),
(15, 5, 6, 5, 15),
(16, 6, 5, 1, 16),
(17, 7, 3, 2, 17),
(18, 8, 4, 3, 18),
(19, 9, 2, 4, 19),
(20, 10, 6, 5, 20);

-- --------------------------------------------------------

--
-- Table structure for table `nhiemvu`
--

CREATE TABLE `nhiemvu` (
  `id_nv` int(11) NOT NULL,
  `nhiemvucanbo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nhiemvu`
--

INSERT INTO `nhiemvu` (`id_nv`, `nhiemvucanbo`) VALUES
(1, 'Quản lý phòng học'),
(2, 'Hỗ trợ giảng viên'),
(3, 'Bảo trì thiết bị'),
(4, 'Vệ sinh phòng học'),
(5, 'Hướng dẫn sinh viên'),
(6, 'Quản lý tài nguyên giảng dạy'),
(7, 'Kiểm tra chất lượng phòng'),
(8, 'Hỗ trợ sự kiện'),
(9, 'Giám sát thi cử'),
(10, 'Tổ chức hội nghị');

-- --------------------------------------------------------

--
-- Table structure for table `noithat`
--

CREATE TABLE `noithat` (
  `id_nt` int(11) NOT NULL,
  `ten_nt` text NOT NULL,
  `id_lnt` int(11) DEFAULT NULL,
  `id_dvt` int(11) DEFAULT NULL,
  `trichxuat` text NOT NULL,
  `giant` float DEFAULT NULL
) ;

--
-- Dumping data for table `noithat`
--

INSERT INTO `noithat` (`id_nt`, `ten_nt`, `id_lnt`, `id_dvt`, `trichxuat`, `giant`) VALUES
(1, 'Bàn làm việc gỗ sồi', 1, 1, 'Bàn gỗ sồi tự nhiên, chống nước', 5000),
(2, 'Ghế xoay văn phòng', 2, 1, 'Ghế xoay có điều chỉnh độ cao', 2000),
(3, 'Tủ hồ sơ 4 ngăn', 3, 1, 'Tủ gỗ có khóa bảo mật', 7000),
(4, 'Kệ sách 5 tầng', 4, 1, 'Kệ sách bằng thép sơn tĩnh điện', 3000),
(5, 'Giường ngủ 1m6', 5, 1, 'Giường gỗ có ngăn kéo', 9000),
(6, 'Sofa da cao cấp', 6, 1, 'Sofa da thật, phong cách hiện đại', 15000),
(7, 'Rèm cửa hai lớp', 7, 1, 'Rèm che ánh sáng, chống nóng', 2500),
(8, 'Thảm trải sàn lông xù', 8, 1, 'Thảm mềm, chống trượt', 4000),
(9, 'Đèn bàn học LED', 9, 1, 'Đèn LED tiết kiệm điện', 1200),
(10, 'Gương trang trí khung gỗ', 10, 1, 'Gương treo tường, khung gỗ tự nhiên', 3500);

-- --------------------------------------------------------

--
-- Table structure for table `phieu`
--

CREATE TABLE `phieu` (
  `id_phieu` varchar(10) NOT NULL,
  `ten_phieu` text NOT NULL,
  `ten_tep` text DEFAULT NULL,
  `duongdan` text DEFAULT NULL,
  `ngaylapphieu` datetime NOT NULL,
  `id_cb` int(11) DEFAULT NULL,
  `id_p` int(11) DEFAULT NULL,
  `id_hk` int(11) DEFAULT NULL,
  `trichxuat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `phieu`
--

INSERT INTO `phieu` (`id_phieu`, `ten_phieu`, `ten_tep`, `duongdan`, `ngaylapphieu`, `id_cb`, `id_p`, `id_hk`, `trichxuat`) VALUES
('PBT001', 'Phiếu bảo trì 1', 'file1.pdf', '/uploads/file1.pdf', '2025-03-20 12:02:00', 1, 1, 1, 'Trích xuất 1'),
('PBT002', 'Phiếu bảo trì 2', 'file2.pdf', '/uploads/file2.pdf', '2025-03-20 12:02:00', 2, 2, 2, 'Trích xuất 2'),
('PBT003', 'Phiếu bảo trì 3', 'file3.pdf', '/uploads/file3.pdf', '2025-03-20 12:02:00', 3, 3, 3, 'Trích xuất 3'),
('PBT004', 'Phiếu bảo trì 4', 'file4.pdf', '/uploads/file4.pdf', '2025-03-20 12:02:00', 4, 4, 4, 'Trích xuất 4'),
('PBT005', 'Phiếu bảo trì 5', 'file5.pdf', '/uploads/file5.pdf', '2025-03-20 12:02:00', 5, 5, 5, 'Trích xuất 5'),
('PBT006', 'Phiếu bảo trì 6', 'file6.pdf', '/uploads/file6.pdf', '2025-03-20 12:02:00', 6, 6, 6, 'Trích xuất 6'),
('PBT007', 'Phiếu bảo trì 7', 'file7.pdf', '/uploads/file7.pdf', '2025-03-20 12:02:00', 7, 7, 7, 'Trích xuất 7'),
('PBT008', 'Phiếu bảo trì 8', 'file8.pdf', '/uploads/file8.pdf', '2025-03-20 12:02:00', 8, 8, 8, 'Trích xuất 8'),
('PBT009', 'Phiếu bảo trì 9', 'file9.pdf', '/uploads/file9.pdf', '2025-03-20 12:02:00', 9, 9, 9, 'Trích xuất 9'),
('PBT010', 'Phiếu bảo trì 10', 'file10.pdf', '/uploads/file10.pdf', '2025-03-20 12:02:00', 10, 10, 10, 'Trích xuất 10'),
('PH0001', 'Phiếu nhập 1', 'file1.pdf', '/uploads/file1.pdf', '2025-03-20 07:45:29', 1, 1, 1, 'Trích xuất 1'),
('PH0002', 'Phiếu nhập 2', 'file2.pdf', '/uploads/file2.pdf', '2025-03-20 07:45:29', 2, 2, 2, 'Trích xuất 2'),
('PH0003', 'Phiếu nhập 3', 'file3.pdf', '/uploads/file3.pdf', '2025-03-20 07:45:29', 3, 3, 3, 'Trích xuất 3'),
('PH0004', 'Phiếu nhập 4', 'file4.pdf', '/uploads/file4.pdf', '2025-03-20 07:45:29', 4, 4, 4, 'Trích xuất 4'),
('PH0005', 'Phiếu nhập 5', 'file5.pdf', '/uploads/file5.pdf', '2025-03-20 07:45:29', 5, 5, 5, 'Trích xuất 5'),
('PH0006', 'Phiếu nhập 6', 'file6.pdf', '/uploads/file6.pdf', '2025-03-20 07:45:29', 6, 6, 6, 'Trích xuất 6'),
('PH0007', 'Phiếu nhập 7', 'file7.pdf', '/uploads/file7.pdf', '2025-03-20 07:45:29', 7, 7, 7, 'Trích xuất 7'),
('PH0008', 'Phiếu nhập 8', 'file8.pdf', '/uploads/file8.pdf', '2025-03-20 07:45:29', 8, 8, 8, 'Trích xuất 8'),
('PH0009', 'Phiếu nhập 9', 'file9.pdf', '/uploads/file9.pdf', '2025-03-20 07:45:29', 9, 9, 9, 'Trích xuất 9'),
('PH0010', 'Phiếu nhập 10', 'file10.pdf', '/uploads/file10.pdf', '2025-03-20 07:45:29', 10, 10, 10, 'Trích xuất 10'),
('PKT001', 'Phiếu kiểm tra 1', 'file1.pdf', '/uploads/file1.pdf', '2025-03-20 07:48:43', 1, 1, 1, 'Trích xuất 1'),
('PKT002', 'Phiếu kiểm tra 2', 'file2.pdf', '/uploads/file2.pdf', '2025-03-20 07:48:43', 2, 2, 2, 'Trích xuất 2'),
('PKT003', 'Phiếu kiểm tra 3', 'file3.pdf', '/uploads/file3.pdf', '2025-03-20 07:48:43', 3, 3, 3, 'Trích xuất 3'),
('PKT004', 'Phiếu kiểm tra 4', 'file4.pdf', '/uploads/file4.pdf', '2025-03-20 07:48:43', 4, 4, 4, 'Trích xuất 4'),
('PKT005', 'Phiếu kiểm tra 5', 'file5.pdf', '/uploads/file5.pdf', '2025-03-20 07:48:43', 5, 5, 5, 'Trích xuất 5'),
('PKT006', 'Phiếu kiểm tra 6', 'file6.pdf', '/uploads/file6.pdf', '2025-03-20 07:48:43', 6, 6, 6, 'Trích xuất 6'),
('PKT007', 'Phiếu kiểm tra 7', 'file7.pdf', '/uploads/file7.pdf', '2025-03-20 07:48:43', 7, 7, 7, 'Trích xuất 7'),
('PKT008', 'Phiếu kiểm tra 8', 'file8.pdf', '/uploads/file8.pdf', '2025-03-20 07:48:43', 8, 8, 8, 'Trích xuất 8'),
('PKT009', 'Phiếu kiểm tra 9', 'file9.pdf', '/uploads/file9.pdf', '2025-03-20 07:48:43', 9, 9, 9, 'Trích xuất 9'),
('PKT010', 'Phiếu kiểm tra 10', 'file10.pdf', '/uploads/file10.pdf', '2025-03-20 07:48:43', 10, 10, 10, 'Trích xuất 10'),
('PM001', 'Phiếu mượn 1', 'file1.pdf', '/uploads/file1.pdf', '2025-03-20 08:12:47', 1, 1, 1, 'Trích xuất 1'),
('PM0010', 'Phiếu mượn 10', 'file10.pdf', '/uploads/file10.pdf', '2025-03-20 08:12:47', 10, 10, 10, 'Trích xuất 10'),
('PM0012', 'Phiếu trả 1', 'file1.pdf', '/uploads/file1.pdf', '2025-03-20 08:30:42', 1, 1, 1, 'Trích xuất 1'),
('PM002', 'Phiếu mượn 2', 'file2.pdf', '/uploads/file2.pdf', '2025-03-20 08:12:47', 2, 2, 2, 'Trích xuất 2'),
('PM003', 'Phiếu mượn 3', 'file3.pdf', '/uploads/file3.pdf', '2025-03-20 08:12:47', 3, 3, 3, 'Trích xuất 3'),
('PM004', 'Phiếu mượn 4', 'file4.pdf', '/uploads/file4.pdf', '2025-03-20 08:12:47', 4, 4, 4, 'Trích xuất 4'),
('PM005', 'Phiếu mượn 5', 'file5.pdf', '/uploads/file5.pdf', '2025-03-20 08:12:47', 5, 5, 5, 'Trích xuất 5'),
('PM006', 'Phiếu mượn 6', 'file6.pdf', '/uploads/file6.pdf', '2025-03-20 08:12:47', 6, 6, 6, 'Trích xuất 6'),
('PM007', 'Phiếu mượn 7', 'file7.pdf', '/uploads/file7.pdf', '2025-03-20 08:12:47', 7, 7, 7, 'Trích xuất 7'),
('PM008', 'Phiếu mượn 8', 'file8.pdf', '/uploads/file8.pdf', '2025-03-20 08:12:47', 8, 8, 8, 'Trích xuất 8'),
('PM009', 'Phiếu mượn 9', 'file9.pdf', '/uploads/file9.pdf', '2025-03-20 08:12:47', 9, 9, 9, 'Trích xuất 9'),
('PMS001', 'Phiếu mua sắm 1', 'file1.pdf', '/uploads/file1.pdf', '2025-03-20 11:50:29', 1, 1, 1, 'Trích xuất 1'),
('PMS0010', 'Phiếu mua sắm 10', 'file10.pdf', '/uploads/file10.pdf', '2025-03-20 11:50:29', 10, 10, 10, 'Trích xuất 10'),
('PMS002', 'Phiếu mua sắm 2', 'file2.pdf', '/uploads/file2.pdf', '2025-03-20 11:50:29', 2, 2, 2, 'Trích xuất 2'),
('PMS003', 'Phiếu mua sắm 3', 'file3.pdf', '/uploads/file3.pdf', '2025-03-20 11:50:29', 3, 3, 3, 'Trích xuất 3'),
('PMS004', 'Phiếu mua sắm 4', 'file4.pdf', '/uploads/file4.pdf', '2025-03-20 11:50:29', 4, 4, 4, 'Trích xuất 4'),
('PMS005', 'Phiếu mua sắm 5', 'file5.pdf', '/uploads/file5.pdf', '2025-03-20 11:50:29', 5, 5, 5, 'Trích xuất 5'),
('PMS006', 'Phiếu mua sắm 6', 'file6.pdf', '/uploads/file6.pdf', '2025-03-20 11:50:29', 6, 6, 6, 'Trích xuất 6'),
('PMS007', 'Phiếu mua sắm 7', 'file7.pdf', '/uploads/file7.pdf', '2025-03-20 11:50:29', 7, 7, 7, 'Trích xuất 7'),
('PMS008', 'Phiếu mua sắm 8', 'file8.pdf', '/uploads/file8.pdf', '2025-03-20 11:50:29', 8, 8, 8, 'Trích xuất 8'),
('PMS009', 'Phiếu mua sắm 9', 'file9.pdf', '/uploads/file9.pdf', '2025-03-20 11:50:29', 9, 9, 9, 'Trích xuất 9'),
('PT001', 'Phiếu trả 1', 'file1.pdf', '/uploads/file1.pdf', '2025-03-20 08:20:31', 1, 1, 1, 'Trích xuất 1'),
('PT0010', 'Phiếu trả 10', 'file10.pdf', '/uploads/file10.pdf', '2025-03-20 08:20:31', 10, 10, 10, 'Trích xuất 10'),
('PT00101', 'Phiếu trả 1', 'file1.pdf', '/uploads/file1.pdf', '2025-03-20 08:34:47', 1, 1, 1, 'Trích xuất 1'),
('PT0011', 'Phiếu trả 1', 'file1.pdf', '/uploads/file1.pdf', '2025-03-20 08:32:22', 1, 1, 1, 'Trích xuất 1'),
('PT0012', 'Phiếu trả 1', 'file1.pdf', '/uploads/file1.pdf', '2025-03-20 08:31:00', 1, 1, 1, 'Trích xuất 1'),
('PT0013', 'Phiếu trả 3', 'file3.pdf', '/uploads/file3.pdf', '2025-03-20 08:32:22', 3, 3, 3, 'Trích xuất 3'),
('PT0014', 'Phiếu trả 4', 'file4.pdf', '/uploads/file4.pdf', '2025-03-20 08:32:22', 4, 4, 4, 'Trích xuất 4'),
('PT002', 'Phiếu trả 2', 'file2.pdf', '/uploads/file2.pdf', '2025-03-20 08:20:31', 2, 2, 2, 'Trích xuất 2'),
('PT003', 'Phiếu trả 3', 'file3.pdf', '/uploads/file3.pdf', '2025-03-20 08:20:31', 3, 3, 3, 'Trích xuất 3'),
('PT004', 'Phiếu trả 4', 'file4.pdf', '/uploads/file4.pdf', '2025-03-20 08:20:31', 4, 4, 4, 'Trích xuất 4'),
('PT005', 'Phiếu trả 5', 'file5.pdf', '/uploads/file5.pdf', '2025-03-20 08:20:31', 5, 5, 5, 'Trích xuất 5'),
('PT006', 'Phiếu trả 6', 'file6.pdf', '/uploads/file6.pdf', '2025-03-20 08:20:31', 6, 6, 6, 'Trích xuất 6'),
('PT007', 'Phiếu trả 7', 'file7.pdf', '/uploads/file7.pdf', '2025-03-20 08:20:31', 7, 7, 7, 'Trích xuất 7'),
('PT008', 'Phiếu trả 8', 'file8.pdf', '/uploads/file8.pdf', '2025-03-20 08:20:31', 8, 8, 8, 'Trích xuất 8'),
('PT009', 'Phiếu trả 9', 'file9.pdf', '/uploads/file9.pdf', '2025-03-20 08:20:31', 9, 9, 9, 'Trích xuất 9');

-- --------------------------------------------------------

--
-- Table structure for table `phieubaotri`
--

CREATE TABLE `phieubaotri` (
  `id_pbt` varchar(10) NOT NULL,
  `ngay_bdau_bt` datetime NOT NULL,
  `ngay_kthuc_bt` datetime DEFAULT NULL
) ;

--
-- Dumping data for table `phieubaotri`
--

INSERT INTO `phieubaotri` (`id_pbt`, `ngay_bdau_bt`, `ngay_kthuc_bt`) VALUES
('PBT001', '2025-03-01 08:00:00', '2025-03-05 17:00:00'),
('PBT002', '2025-03-02 09:00:00', '2025-03-06 16:00:00'),
('PBT003', '2025-03-03 10:30:00', '2025-03-07 15:00:00'),
('PBT004', '2025-03-04 07:45:00', '2025-03-08 14:30:00'),
('PBT005', '2025-03-05 11:15:00', '2025-03-09 13:45:00'),
('PBT006', '2025-03-06 12:00:00', '2025-03-10 12:30:00'),
('PBT007', '2025-03-07 08:30:00', '2025-03-11 11:00:00'),
('PBT008', '2025-03-08 09:45:00', '2025-03-12 10:15:00'),
('PBT009', '2025-03-09 10:00:00', '2025-03-13 09:30:00'),
('PBT010', '2025-03-10 07:00:00', '2025-03-14 08:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `phieubaotrictnoithat`
--

CREATE TABLE `phieubaotrictnoithat` (
  `id_stt` int(11) NOT NULL,
  `id_nt` int(11) DEFAULT NULL,
  `soluong` int(11) DEFAULT NULL CHECK (`soluong` > 0),
  `id_pbt` varchar(10) DEFAULT NULL,
  `id_lbt_nt` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `phieubaotrictnoithat`
--

INSERT INTO `phieubaotrictnoithat` (`id_stt`, `id_nt`, `soluong`, `id_pbt`, `id_lbt_nt`) VALUES
(1, 1, 5, 'PBT001', 2),
(2, 2, 3, 'PBT002', 1),
(3, 3, 7, 'PBT003', 3),
(4, 4, 2, 'PBT004', 2),
(5, 5, 4, 'PBT005', 1),
(6, 6, 6, 'PBT006', 3),
(7, 7, 3, 'PBT007', 2),
(8, 8, 5, 'PBT008', 1),
(9, 9, 4, 'PBT009', 3),
(10, 10, 2, 'PBT010', 2);

-- --------------------------------------------------------

--
-- Table structure for table `phieubaotrictthietbi`
--

CREATE TABLE `phieubaotrictthietbi` (
  `id_stt` int(11) NOT NULL,
  `id_tb` int(11) DEFAULT NULL,
  `soluong` int(11) DEFAULT NULL CHECK (`soluong` > 0),
  `id_pbt` varchar(10) DEFAULT NULL,
  `id_lbt_tb` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `phieubaotrictthietbi`
--

INSERT INTO `phieubaotrictthietbi` (`id_stt`, `id_tb`, `soluong`, `id_pbt`, `id_lbt_tb`) VALUES
(1, 1, 2, 'PBT001', 3),
(2, 2, 1, 'PBT002', 2),
(3, 3, 4, 'PBT003', 1),
(4, 4, 3, 'PBT004', 2),
(5, 5, 5, 'PBT005', 3),
(6, 6, 6, 'PBT006', 1),
(7, 7, 2, 'PBT007', 3),
(8, 8, 4, 'PBT008', 2),
(9, 9, 1, 'PBT009', 1),
(10, 10, 3, 'PBT010', 3);

-- --------------------------------------------------------

--
-- Table structure for table `phieukiemtra`
--

CREATE TABLE `phieukiemtra` (
  `id_pkt` varchar(10) NOT NULL,
  `ngay_bdau_kt` datetime NOT NULL,
  `ngay_kthuc_kt` datetime NOT NULL
) ;

--
-- Dumping data for table `phieukiemtra`
--

INSERT INTO `phieukiemtra` (`id_pkt`, `ngay_bdau_kt`, `ngay_kthuc_kt`) VALUES
('PKT001', '2024-03-01 08:00:00', '2024-03-01 12:00:00'),
('PKT002', '2024-03-02 09:00:00', '2024-03-02 13:00:00'),
('PKT003', '2024-03-03 10:00:00', '2024-03-03 14:30:00'),
('PKT004', '2024-03-04 07:30:00', '2024-03-04 11:00:00'),
('PKT005', '2024-03-05 08:45:00', '2024-03-05 12:45:00'),
('PKT006', '2024-03-06 09:15:00', '2024-03-06 13:45:00'),
('PKT007', '2024-03-07 10:30:00', '2024-03-07 15:00:00'),
('PKT008', '2024-03-08 11:00:00', '2024-03-08 16:00:00'),
('PKT009', '2024-03-09 07:00:00', '2024-03-09 10:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `phieuktctnoithat`
--

CREATE TABLE `phieuktctnoithat` (
  `id_stt` int(11) NOT NULL,
  `id_nt` int(11) DEFAULT NULL,
  `so_nt_nguyenven` int(11) DEFAULT NULL CHECK (`so_nt_nguyenven` >= 0),
  `so_nt_suachua` int(11) DEFAULT NULL CHECK (`so_nt_suachua` >= 0),
  `so_nt_thaythe` int(11) DEFAULT NULL CHECK (`so_nt_thaythe` >= 0),
  `id_pkt` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `phieuktctnoithat`
--

INSERT INTO `phieuktctnoithat` (`id_stt`, `id_nt`, `so_nt_nguyenven`, `so_nt_suachua`, `so_nt_thaythe`, `id_pkt`) VALUES
(31, 1, 10, 2, 1, 'PKT001'),
(32, 2, 8, 1, 2, 'PKT002'),
(33, 3, 15, 3, 0, 'PKT003'),
(34, 4, 12, 2, 1, 'PKT004'),
(35, 5, 9, 0, 3, 'PKT005'),
(36, 6, 14, 1, 1, 'PKT006'),
(37, 7, 11, 2, 2, 'PKT007'),
(38, 8, 13, 3, 0, 'PKT008'),
(39, 9, 10, 1, 1, 'PKT009');

-- --------------------------------------------------------

--
-- Table structure for table `phieuktctthietbi`
--

CREATE TABLE `phieuktctthietbi` (
  `id_stt` int(11) NOT NULL,
  `id_tb` int(11) DEFAULT NULL,
  `so_tb_nguyenven` int(11) DEFAULT NULL CHECK (`so_tb_nguyenven` >= 0),
  `so_tb_suachua` int(11) DEFAULT NULL CHECK (`so_tb_suachua` >= 0),
  `so_tb_thaythe` int(11) DEFAULT NULL CHECK (`so_tb_thaythe` >= 0),
  `id_pkt` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `phieuktctthietbi`
--

INSERT INTO `phieuktctthietbi` (`id_stt`, `id_tb`, `so_tb_nguyenven`, `so_tb_suachua`, `so_tb_thaythe`, `id_pkt`) VALUES
(1, 1, 5, 1, 0, 'PKT001'),
(2, 2, 7, 0, 1, 'PKT002'),
(3, 3, 6, 2, 1, 'PKT003'),
(4, 4, 9, 1, 0, 'PKT004'),
(5, 5, 8, 0, 2, 'PKT005'),
(6, 6, 10, 2, 1, 'PKT006'),
(7, 7, 11, 3, 0, 'PKT007'),
(8, 8, 4, 1, 1, 'PKT008'),
(9, 9, 5, 0, 2, 'PKT009');

-- --------------------------------------------------------

--
-- Table structure for table `phieumuasam`
--

CREATE TABLE `phieumuasam` (
  `id_pms` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `phieumuasam`
--

INSERT INTO `phieumuasam` (`id_pms`) VALUES
('PMS001'),
('PMS002'),
('PMS003'),
('PMS004'),
('PMS005');

-- --------------------------------------------------------

--
-- Table structure for table `phieumuasamctnoithat`
--

CREATE TABLE `phieumuasamctnoithat` (
  `id_stt` int(11) NOT NULL,
  `id_nt` int(11) DEFAULT NULL,
  `soluong` int(11) DEFAULT NULL CHECK (`soluong` > 0),
  `id_pms` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `phieumuasamctnoithat`
--

INSERT INTO `phieumuasamctnoithat` (`id_stt`, `id_nt`, `soluong`, `id_pms`) VALUES
(11, 1, 2, 'PMS001'),
(12, 2, 3, 'PMS002'),
(13, 3, 5, 'PMS003'),
(14, 4, 4, 'PMS004');

-- --------------------------------------------------------

--
-- Table structure for table `phieumuasamctthietbi`
--

CREATE TABLE `phieumuasamctthietbi` (
  `id_stt` int(11) NOT NULL,
  `id_tb` int(11) DEFAULT NULL,
  `soluong` int(11) DEFAULT NULL CHECK (`soluong` > 0),
  `id_pms` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `phieumuasamctthietbi`
--

INSERT INTO `phieumuasamctthietbi` (`id_stt`, `id_tb`, `soluong`, `id_pms`) VALUES
(1, 1, 10, 'PMS002'),
(2, 5, 3, 'PMS003');

-- --------------------------------------------------------

--
-- Table structure for table `phieumuon`
--

CREATE TABLE `phieumuon` (
  `id_pm` varchar(10) NOT NULL,
  `ngay_muon` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `phieumuon`
--

INSERT INTO `phieumuon` (`id_pm`, `ngay_muon`) VALUES
('PM001', '2025-03-01 08:00:00'),
('PM002', '2025-03-02 09:30:00'),
('PM003', '2025-03-03 10:15:00'),
('PM004', '2025-03-04 11:45:00');

-- --------------------------------------------------------

--
-- Table structure for table `phieumuonctnoithat`
--

CREATE TABLE `phieumuonctnoithat` (
  `id_stt` int(11) NOT NULL,
  `id_nt` int(11) DEFAULT NULL,
  `soluong` int(11) DEFAULT NULL CHECK (`soluong` > 0),
  `id_pm` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `phieumuonctnoithat`
--

INSERT INTO `phieumuonctnoithat` (`id_stt`, `id_nt`, `soluong`, `id_pm`) VALUES
(1, 1, 2, 'PM001'),
(2, 2, 4, 'PM002'),
(3, 3, 1, 'PM003'),
(4, 4, 3, 'PM004');

-- --------------------------------------------------------

--
-- Table structure for table `phieumuonctthietbi`
--

CREATE TABLE `phieumuonctthietbi` (
  `id_stt` int(11) NOT NULL,
  `id_tb` int(11) DEFAULT NULL,
  `soluong` int(11) DEFAULT NULL CHECK (`soluong` > 0),
  `id_pm` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `phieumuonctthietbi`
--

INSERT INTO `phieumuonctthietbi` (`id_stt`, `id_tb`, `soluong`, `id_pm`) VALUES
(1, 1, 3, 'PM001'),
(2, 2, 2, 'PM002'),
(3, 3, 5, 'PM003'),
(4, 4, 1, 'PM004');

-- --------------------------------------------------------

--
-- Table structure for table `phieunhap`
--

CREATE TABLE `phieunhap` (
  `id_pn` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `phieunhap`
--

INSERT INTO `phieunhap` (`id_pn`) VALUES
('PN001'),
('PN002'),
('PN003'),
('PN004'),
('PN005'),
('PN006'),
('PN007'),
('PN008'),
('PN009'),
('PN010');

-- --------------------------------------------------------

--
-- Table structure for table `phieunhapctnoithat`
--

CREATE TABLE `phieunhapctnoithat` (
  `id_stt` int(11) NOT NULL,
  `id_nt` int(11) DEFAULT NULL,
  `soluong` int(11) NOT NULL,
  `id_pn` varchar(10) DEFAULT NULL
) ;

--
-- Dumping data for table `phieunhapctnoithat`
--

INSERT INTO `phieunhapctnoithat` (`id_stt`, `id_nt`, `soluong`, `id_pn`) VALUES
(1, 1, 10, 'PN001'),
(2, 2, 5, 'PN002'),
(3, 3, 20, 'PN003'),
(4, 4, 15, 'PN004'),
(5, 5, 8, 'PN005'),
(6, 6, 12, 'PN006'),
(7, 7, 9, 'PN007'),
(8, 8, 14, 'PN008'),
(9, 9, 11, 'PN009'),
(10, 10, 6, 'PN010');

-- --------------------------------------------------------

--
-- Table structure for table `phieunhapctthietbi`
--

CREATE TABLE `phieunhapctthietbi` (
  `id_stt` int(11) NOT NULL,
  `id_tb` int(11) DEFAULT NULL,
  `soluong` int(11) DEFAULT NULL,
  `id_pn` varchar(10) DEFAULT NULL
) ;

--
-- Dumping data for table `phieunhapctthietbi`
--

INSERT INTO `phieunhapctthietbi` (`id_stt`, `id_tb`, `soluong`, `id_pn`) VALUES
(1, 1, 3, 'PN001'),
(2, 2, 7, 'PN002'),
(3, 3, 5, 'PN003'),
(4, 4, 8, 'PN004'),
(5, 5, 6, 'PN005'),
(6, 6, 4, 'PN006'),
(7, 7, 9, 'PN007'),
(8, 8, 2, 'PN008'),
(9, 9, 11, 'PN009'),
(10, 10, 10, 'PN010');

-- --------------------------------------------------------

--
-- Table structure for table `phieutra`
--

CREATE TABLE `phieutra` (
  `id_pt` varchar(10) NOT NULL,
  `ngaytra` datetime NOT NULL,
  `id_pm` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `phieutra`
--

INSERT INTO `phieutra` (`id_pt`, `ngaytra`, `id_pm`) VALUES
('PT001', '2025-03-20 05:44:17', 'PM002'),
('PT002', '2025-03-20 05:44:17', 'PM002'),
('PT003', '2025-03-20 05:44:17', 'PM001');

-- --------------------------------------------------------

--
-- Table structure for table `phieutractnoithat`
--

CREATE TABLE `phieutractnoithat` (
  `id_stt` int(11) NOT NULL,
  `id_nt` int(11) DEFAULT NULL,
  `soluong` int(11) DEFAULT NULL,
  `id_pt` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `phieutractnoithat`
--

INSERT INTO `phieutractnoithat` (`id_stt`, `id_nt`, `soluong`, `id_pt`) VALUES
(1, 1, 10, 'PT001'),
(2, 2, 5, 'PT002');

-- --------------------------------------------------------

--
-- Table structure for table `phieutractthietbi`
--

CREATE TABLE `phieutractthietbi` (
  `id_stt` int(11) NOT NULL,
  `id_tb` int(11) DEFAULT NULL,
  `soluong` int(11) DEFAULT NULL CHECK (`soluong` > 0),
  `id_pt` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `phieutractthietbi`
--

INSERT INTO `phieutractthietbi` (`id_stt`, `id_tb`, `soluong`, `id_pt`) VALUES
(1, 10, 15, 'PT001'),
(2, 4, 2, 'PT003');

-- --------------------------------------------------------

--
-- Table structure for table `phong`
--

CREATE TABLE `phong` (
  `id_p` int(11) NOT NULL,
  `ten_p` varchar(30) NOT NULL,
  `succhua` int(11) NOT NULL,
  `id_lp` int(11) DEFAULT NULL,
  `id_kv` int(11) DEFAULT NULL,
  `id_vt` int(11) DEFAULT NULL,
  `trichxuat` text NOT NULL
) ;

--
-- Dumping data for table `phong`
--

INSERT INTO `phong` (`id_p`, `ten_p`, `succhua`, `id_lp`, `id_kv`, `id_vt`, `trichxuat`) VALUES
(1, 'P101', 50, 1, 1, 1, 'Trang bị đầy đủ bàn ghế, bảng trắng'),
(2, 'P102', 40, 2, 1, 2, 'Phòng họp với máy chiếu và âm thanh'),
(3, 'P103', 30, 3, 2, 3, 'Phòng lab thực hành với thiết bị hiện đại'),
(4, 'P104', 35, 4, 2, 4, 'Phòng máy tính có điều hòa, internet nhanh'),
(5, 'P105', 60, 5, 3, 5, 'Phòng thư viện yên tĩnh, nhiều tài liệu tham khảo'),
(6, 'P106', 100, 6, 3, 6, 'Hội trường lớn, có bục phát biểu'),
(7, 'P107', 20, 7, 4, 7, 'Phòng nghiên cứu với không gian làm việc riêng tư'),
(8, 'P108', 10, 8, 4, 8, 'Phòng riêng dành cho cá nhân hoặc nhóm nhỏ'),
(9, 'P109', 25, 9, 5, 9, 'Phòng thể thao với thiết bị tập luyện'),
(10, 'P110', 15, 10, 5, 10, 'Khu vực chơi game với nhiều trò chơi hấp dẫn');

-- --------------------------------------------------------

--
-- Table structure for table `quyen`
--

CREATE TABLE `quyen` (
  `id_q` int(11) NOT NULL,
  `ten_q` varchar(20) DEFAULT NULL,
  `mota` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quyen`
--

INSERT INTO `quyen` (`id_q`, `ten_q`, `mota`) VALUES
(1, 'Admin', 'Quản trị hệ thống'),
(2, 'Giảng viên', 'Quyền dạy học'),
(3, 'Sinh viên', 'Quyền học tập'),
(4, 'Nhân viên', 'Quyền hỗ trợ'),
(5, 'Khách', 'Chỉ xem thông tin'),
(6, 'Hỗ trợ kỹ thuật', 'Xử lý sự cố hệ thống'),
(7, 'Quản lý học vụ', 'Quản lý chương trình đào tạo'),
(8, 'Thư viện', 'Quản lý sách và tài nguyên'),
(9, 'Kế toán', 'Quản lý tài chính'),
(10, 'Bảo vệ', 'Giám sát an ninh');

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--
CREATE TABLE users (
  `id` bigint(20),
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email_verified_at` datetime NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `id_q` int NOT NULL,
  `id_cb` int NOT NULL,
  `avatar` varchar(255) NULL,
  `created_at` datetime null,
  `updated_at` datetime null
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- CREATE TABLE `taikhoan` (
--   `id_tk` int(11) NOT NULL,
--   `ten_tk` varchar(30) DEFAULT NULL,
--   `matkhau` varchar(20) DEFAULT NULL,
--   `id_q` int(11) DEFAULT NULL,
--   `id_cb` int(11) DEFAULT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `taikhoan`
--

-- INSERT INTO `taikhoan` (`id_tk`, `ten_tk`, `matkhau`, `id_q`, `id_cb`) VALUES
-- (1, 'admin1', 'pass123', 1, 1),
-- (2, 'giangvien1', 'gv123', 2, 2),
-- (3, 'sinhvien1', 'sv123', 3, 3),
-- (4, 'nhanvien1', 'nv123', 4, 4),
-- (5, 'khach1', 'kh123', 5, 5),
-- (6, 'hotro1', 'ht123', 6, 6),
-- (7, 'quanly1', 'ql123', 7, 7),
-- (8, 'thuvien1', 'tv123', 8, 8),
-- (9, 'ketoan1', 'kt123', 9, 9),
-- (10, 'baove1', 'bv123', 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `thietbi`
--

CREATE TABLE `thietbi` (
  `id_tb` int(11) NOT NULL,
  `ten_tb` varchar(60) NOT NULL,
  `id_ltb` int(11) DEFAULT NULL,
  `id_dvt` int(11) DEFAULT NULL,
  `trichxuat` text NOT NULL,
  `giatb` float DEFAULT NULL
) ;

--
-- Dumping data for table `thietbi`
--

INSERT INTO `thietbi` (`id_tb`, `ten_tb`, `id_ltb`, `id_dvt`, `trichxuat`, `giatb`) VALUES
(1, 'Laptop Dell XPS 15', 1, 3, 'Laptop mạnh mẽ dành cho lập trình', 35000),
(2, 'Máy chiếu Epson EB-X41', 2, 3, 'Máy chiếu độ sáng cao', 12000),
(3, 'Máy in HP LaserJet 1020', 3, 3, 'Máy in laser trắng đen', 5000),
(4, 'Loa JBL PartyBox 100', 4, 3, 'Loa Bluetooth công suất lớn', 8000),
(5, 'Micro không dây Shure', 5, 3, 'Micro không dây, âm thanh rõ nét', 3000),
(6, 'Điều hòa Daikin Inverter', 6, 3, 'Tiết kiệm điện, làm lạnh nhanh', 15000),
(7, 'Smart Tivi Samsung 55 Inch', 7, 3, 'Tivi 4K hỗ trợ kết nối internet', 25000),
(8, 'Camera Hikvision 2MP', 8, 3, 'Camera giám sát độ phân giải cao', 4500),
(9, 'Router TP-Link Archer AX50', 9, 3, 'Router WiFi 6 băng tần kép', 2000),
(10, 'Bảng điện tử thông minh', 10, 3, 'Bảng hỗ trợ cảm ứng đa điểm', 18000);

-- --------------------------------------------------------

--
-- Table structure for table `tiethoc`
--

CREATE TABLE `tiethoc` (
  `id_th` int(11) NOT NULL,
  `thoigian_batdau` time DEFAULT NULL,
  `thoigian_ketthuc` time DEFAULT NULL
) ;

--
-- Dumping data for table `tiethoc`
--

INSERT INTO `tiethoc` (`id_th`, `thoigian_batdau`, `thoigian_ketthuc`) VALUES
(1, '07:00:00', '07:50:00'),
(2, '08:00:00', '08:50:00'),
(3, '09:00:00', '09:50:00'),
(4, '10:00:00', '10:50:00'),
(5, '11:00:00', '11:50:00'),
(6, '13:00:00', '13:50:00'),
(7, '14:00:00', '14:50:00'),
(8, '15:00:00', '15:50:00'),
(9, '16:00:00', '16:50:00'),
(10, '17:00:00', '17:50:00');

-- --------------------------------------------------------

--
-- Table structure for table `trangthaiphong`
--

CREATE TABLE `trangthaiphong` (
  `id_ttp` int(11) NOT NULL,
  `ten_ttp` text NOT NULL,
  `mota` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trangthaiphong`
--

INSERT INTO `trangthaiphong` (`id_ttp`, `ten_ttp`, `mota`) VALUES
(1, 'Đang sử dụng', 'Phòng đang có lớp học'),
(2, 'Bảo trì', 'Phòng đang được sửa chữa'),
(3, 'Trống', 'Phòng chưa có lịch học'),
(4, 'Đang dọn dẹp', 'Phòng đang được vệ sinh'),
(5, 'Đã đặt trước', 'Phòng đã được đặt cho sự kiện');

-- --------------------------------------------------------

--
-- Table structure for table `trangthaiyeucau`
--

CREATE TABLE `trangthaiyeucau` (
  `id_ttyc` int(11) NOT NULL,
  `trangthaiyeucau` text NOT NULL,
  `mota` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trangthaiyeucau`
--

INSERT INTO `trangthaiyeucau` (`id_ttyc`, `trangthaiyeucau`, `mota`) VALUES
(1, 'Đang chờ xử lý', 'Yêu cầu đang chờ xử lý'),
(2, 'Đã duyệt', 'Yêu cầu đã được duyệt'),
(3, 'Từ chối', 'Yêu cầu bị từ chối'),
(4, 'Hoàn thành', 'Yêu cầu đã hoàn thành'),
(5, 'Đang thực hiện', 'Yêu cầu đang được thực hiện'),
(6, 'Hủy bỏ', 'Yêu cầu bị hủy'),
(7, 'Chờ xác nhận', 'Đang chờ xác nhận từ hệ thống'),
(8, 'Đang đánh giá', 'Yêu cầu đang được đánh giá'),
(9, 'Chờ bổ sung', 'Yêu cầu cần bổ sung thông tin'),
(10, 'Đã đóng', 'Yêu cầu đã được đóng');

-- --------------------------------------------------------

--
-- Table structure for table `ttsdnoithat`
--

CREATE TABLE `ttsdnoithat` (
  `id_ttsdnt` int(11) NOT NULL,
  `trangthainoithat` text NOT NULL,
  `mota` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ttsdnoithat`
--

INSERT INTO `ttsdnoithat` (`id_ttsdnt`, `trangthainoithat`, `mota`) VALUES
(1, 'Tốt', 'Nội thất không có hỏng hóc'),
(2, 'Cần sửa chữa', 'Có dấu hiệu hư hỏng nhỏ'),
(3, 'Hư hỏng', 'Cần thay thế nội thất'),
(4, 'Mới', 'Nội thất vừa được thay mới'),
(5, 'Đang bảo trì', 'Nội thất đang được kiểm tra và sửa chữa');

-- --------------------------------------------------------

--
-- Table structure for table `ttsdthietbi`
--

CREATE TABLE `ttsdthietbi` (
  `id_ttsdtb` int(11) NOT NULL,
  `trangthaithietbi` text NOT NULL,
  `mota` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ttsdthietbi`
--

INSERT INTO `ttsdthietbi` (`id_ttsdtb`, `trangthaithietbi`, `mota`) VALUES
(1, 'Hoạt động tốt', 'Thiết bị không có lỗi'),
(2, 'Cần sửa chữa', 'Thiết bị bị hỏng nhẹ'),
(3, 'Hỏng nặng', 'Thiết bị không thể sử dụng'),
(4, 'Mới', 'Thiết bị vừa được bổ sung'),
(5, 'Đang bảo trì', 'Thiết bị đang trong quá trình bảo trì');

-- --------------------------------------------------------

--
-- Table structure for table `vitri`
--

CREATE TABLE `vitri` (
  `id_vt` int(11) NOT NULL,
  `ten_vt` text NOT NULL,
  `mota` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vitri`
--

INSERT INTO `vitri` (`id_vt`, `ten_vt`, `mota`) VALUES
(1, 'Cạnh cửa sổ', 'Vị trí gần cửa sổ, thoáng mát'),
(2, 'Góc phòng', 'Vị trí yên tĩnh, thích hợp học tập'),
(3, 'Gần cửa ra vào', 'Thuận tiện di chuyển'),
(4, 'Chính giữa', 'Vị trí trung tâm của phòng'),
(5, 'Gần bảng', 'Phù hợp cho việc giảng dạy'),
(6, 'Cuối phòng', 'Yên tĩnh, ít bị làm phiền'),
(7, 'Gần quạt', 'Mát mẻ, dễ chịu'),
(8, 'Gần máy chiếu', 'Phù hợp cho trình chiếu'),
(9, 'Gần giá sách', 'Thuận tiện tra cứu tài liệu'),
(10, 'Ngoài trời', 'Không gian mở, thích hợp họp nhóm');

--
-- Indexes for table cache
--
ALTER TABLE cache
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table cache_locks
--
ALTER TABLE cache_locks
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table failed_jobs
--
ALTER TABLE failed_jobs
  ADD PRIMARY KEY (id),
  ADD UNIQUE KEY failed_jobs_uuid_unique (uuid);

--
-- Indexes for table jobs
--
ALTER TABLE jobs
  ADD PRIMARY KEY (id),
  ADD KEY jobs_queue_index (`queue`);

--
-- Indexes for table job_batches
--
ALTER TABLE job_batches
  ADD PRIMARY KEY (id);

--
-- Indexes for table migrations
--
ALTER TABLE migrations
  ADD PRIMARY KEY (id);

--
-- Indexes for table password_reset_tokens
--
ALTER TABLE password_reset_tokens
  ADD PRIMARY KEY (email);

--
-- Indexes for table sessions
--
ALTER TABLE sessions
  ADD PRIMARY KEY (id),
  ADD KEY sessions_user_id_index (user_id),
  ADD KEY sessions_last_activity_index (last_activity);

--
-- AUTO_INCREMENT for table failed_jobs
--
ALTER TABLE failed_jobs
  MODIFY id bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table jobs
--
ALTER TABLE jobs
  MODIFY id bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table migrations
--
ALTER TABLE migrations
  MODIFY id int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;


--
-- Indexes for table `bangyeucau`
--
ALTER TABLE `bangyeucau`
  ADD PRIMARY KEY (`id_byc`),
  ADD KEY `id_cb` (`id_cb`),
  ADD KEY `id_ttyc` (`id_ttyc`);

--
-- Indexes for table `bangyeucauchitietnoithat`
--
ALTER TABLE `bangyeucauchitietnoithat`
  ADD PRIMARY KEY (`id_byctcnt`),
  ADD UNIQUE KEY `id_nt` (`id_nt`,`id_byc`),
  ADD KEY `id_byc` (`id_byc`);

--
-- Indexes for table `bangyeucauchitietthietbi`
--
ALTER TABLE `bangyeucauchitietthietbi`
  ADD PRIMARY KEY (`id_bycttb`),
  ADD UNIQUE KEY `id_tb` (`id_tb`,`id_byc`),
  ADD KEY `id_byc` (`id_byc`);

--
-- Indexes for table `bieumau`
--
ALTER TABLE `bieumau`
  ADD PRIMARY KEY (`id_bm`),
  ADD KEY `id_hk` (`id_hk`);

--
-- Indexes for table `canbo`
--
ALTER TABLE `canbo`
  ADD PRIMARY KEY (`id_cb`),
  ADD UNIQUE KEY `sdt` (`sdt`),
  ADD KEY `id_cv` (`id_cv`),
  ADD KEY `id_dv` (`id_dv`);

--
-- Indexes for table `chucvu`
--
ALTER TABLE `chucvu`
  ADD PRIMARY KEY (`id_cv`);

--
-- Indexes for table `danhsachcanboquanlyphong`
--
ALTER TABLE `danhsachcanboquanlyphong`
  ADD PRIMARY KEY (`id_ds`),
  ADD KEY `id_cb` (`id_cb`),
  ADD KEY `id_p` (`id_p`),
  ADD KEY `id_nv` (`id_nv`);

--
-- Indexes for table `danhsachviecsudung`
--
ALTER TABLE `danhsachviecsudung`
  ADD PRIMARY KEY (`int_dsvsd`);

--
-- Indexes for table `donvi`
--
ALTER TABLE `donvi`
  ADD PRIMARY KEY (`id_dv`),
  ADD UNIQUE KEY `ten_viettat` (`ten_viettat`),
  ADD UNIQUE KEY `sdt` (`sdt`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `id_p` (`id_p`);

--
-- Indexes for table `donvitinh`
--
ALTER TABLE `donvitinh`
  ADD PRIMARY KEY (`id_dvt`);

--
-- Indexes for table `hocky`
--
ALTER TABLE `hocky`
  ADD PRIMARY KEY (`id_hk`),
  ADD KEY `id_nh` (`id_nh`);

--
-- Indexes for table `hocphan`
--
ALTER TABLE `hocphan`
  ADD PRIMARY KEY (`id_hp`),
  ADD UNIQUE KEY `mahocphan` (`mahocphan`);

--
-- Indexes for table `khuvuc`
--
ALTER TABLE `khuvuc`
  ADD PRIMARY KEY (`id_kv`);

--
-- Indexes for table `lichhoc`
--
ALTER TABLE `lichhoc`
  ADD PRIMARY KEY (`stt_lh`),
  ADD KEY `id_cb` (`id_cb`),
  ADD KEY `id_th_batdau` (`id_th_batdau`),
  ADD KEY `id_th_ketthuc` (`id_th_ketthuc`),
  ADD KEY `id_p` (`id_p`),
  ADD KEY `id_lhp` (`id_lhp`);

--
-- Indexes for table `lichsusudungtaikhoan`
--
ALTER TABLE `lichsusudungtaikhoan`
  ADD PRIMARY KEY (`id_lssd`),
  ADD KEY `id_tk` (`id_tk`),
  ADD KEY `id_dsvsd` (`id_dsvsd`);

--
-- Indexes for table `loaibaotrinoithat`
--
ALTER TABLE `loaibaotrinoithat`
  ADD PRIMARY KEY (`id_lbt_nt`);

--
-- Indexes for table `loaibaotrithietbi`
--
ALTER TABLE `loaibaotrithietbi`
  ADD PRIMARY KEY (`id_lbt_tb`);

--
-- Indexes for table `loainoithat`
--
ALTER TABLE `loainoithat`
  ADD PRIMARY KEY (`id_lnt`);

--
-- Indexes for table `loaiphong`
--
ALTER TABLE `loaiphong`
  ADD PRIMARY KEY (`id_lp`);

--
-- Indexes for table `loaithietbi`
--
ALTER TABLE `loaithietbi`
  ADD PRIMARY KEY (`id_ltb`);

--
-- Indexes for table `lophocphan`
--
ALTER TABLE `lophocphan`
  ADD PRIMARY KEY (`id_lhp`),
  ADD UNIQUE KEY `malophocphan` (`malophocphan`),
  ADD KEY `id_hk` (`id_hk`),
  ADD KEY `id_hp` (`id_hp`);

--
-- Indexes for table `namhoc`
--
ALTER TABLE `namhoc`
  ADD PRIMARY KEY (`id_nh`);

--
-- Indexes for table `nhatkysudungnoithat`
--
ALTER TABLE `nhatkysudungnoithat`
  ADD PRIMARY KEY (`id_nksd_nt`),
  ADD UNIQUE KEY `id_nt` (`id_nt`,`id_ttsdnt`,`id_nk`),
  ADD KEY `id_ttsdnt` (`id_ttsdnt`),
  ADD KEY `id_nk` (`id_nk`);

--
-- Indexes for table `nhatkysudungphong`
--
ALTER TABLE `nhatkysudungphong`
  ADD PRIMARY KEY (`id_nk`),
  ADD KEY `id_lh` (`id_lh`),
  ADD KEY `id_ttp` (`id_ttp`);

--
-- Indexes for table `nhatkysudungthietbi`
--
ALTER TABLE `nhatkysudungthietbi`
  ADD PRIMARY KEY (`id_nksd_tb`),
  ADD UNIQUE KEY `id_tb` (`id_tb`,`id_ttsdtb`,`id_nk`),
  ADD KEY `id_ttsdtb` (`id_ttsdtb`),
  ADD KEY `id_nk` (`id_nk`);

--
-- Indexes for table `nhiemvu`
--
ALTER TABLE `nhiemvu`
  ADD PRIMARY KEY (`id_nv`);

--
-- Indexes for table `noithat`
--
ALTER TABLE `noithat`
  ADD PRIMARY KEY (`id_nt`),
  ADD KEY `id_lnt` (`id_lnt`),
  ADD KEY `id_dvt` (`id_dvt`);

--
-- Indexes for table `phieu`
--
ALTER TABLE `phieu`
  ADD PRIMARY KEY (`id_phieu`),
  ADD KEY `id_p` (`id_p`),
  ADD KEY `id_cb` (`id_cb`),
  ADD KEY `id_hk` (`id_hk`);

--
-- Indexes for table `phieubaotri`
--
ALTER TABLE `phieubaotri`
  ADD PRIMARY KEY (`id_pbt`);

--
-- Indexes for table `phieubaotrictnoithat`
--
ALTER TABLE `phieubaotrictnoithat`
  ADD PRIMARY KEY (`id_stt`),
  ADD UNIQUE KEY `id_nt` (`id_nt`,`id_pbt`,`id_lbt_nt`),
  ADD KEY `id_lbt_nt` (`id_lbt_nt`),
  ADD KEY `id_pbt` (`id_pbt`);

--
-- Indexes for table `phieubaotrictthietbi`
--
ALTER TABLE `phieubaotrictthietbi`
  ADD PRIMARY KEY (`id_stt`),
  ADD UNIQUE KEY `id_tb` (`id_tb`,`id_pbt`,`id_lbt_tb`),
  ADD KEY `id_lbt_tb` (`id_lbt_tb`),
  ADD KEY `id_pbt` (`id_pbt`);

--
-- Indexes for table `phieukiemtra`
--
ALTER TABLE `phieukiemtra`
  ADD PRIMARY KEY (`id_pkt`);

--
-- Indexes for table `phieuktctnoithat`
--
ALTER TABLE `phieuktctnoithat`
  ADD PRIMARY KEY (`id_stt`),
  ADD UNIQUE KEY `id_nt` (`id_nt`,`id_pkt`),
  ADD KEY `id_pkt` (`id_pkt`);

--
-- Indexes for table `phieuktctthietbi`
--
ALTER TABLE `phieuktctthietbi`
  ADD PRIMARY KEY (`id_stt`),
  ADD UNIQUE KEY `id_tb` (`id_tb`,`id_pkt`),
  ADD KEY `id_pkt` (`id_pkt`);

--
-- Indexes for table `phieumuasam`
--
ALTER TABLE `phieumuasam`
  ADD PRIMARY KEY (`id_pms`);

--
-- Indexes for table `phieumuasamctnoithat`
--
ALTER TABLE `phieumuasamctnoithat`
  ADD PRIMARY KEY (`id_stt`),
  ADD UNIQUE KEY `id_nt` (`id_nt`,`id_pms`),
  ADD KEY `id_pms` (`id_pms`);

--
-- Indexes for table `phieumuasamctthietbi`
--
ALTER TABLE `phieumuasamctthietbi`
  ADD PRIMARY KEY (`id_stt`),
  ADD UNIQUE KEY `id_tb` (`id_tb`,`id_pms`),
  ADD KEY `id_pms` (`id_pms`);

--
-- Indexes for table `phieumuon`
--
ALTER TABLE `phieumuon`
  ADD PRIMARY KEY (`id_pm`);

--
-- Indexes for table `phieumuonctnoithat`
--
ALTER TABLE `phieumuonctnoithat`
  ADD PRIMARY KEY (`id_stt`),
  ADD UNIQUE KEY `id_nt` (`id_nt`,`id_pm`),
  ADD KEY `id_pm` (`id_pm`);

--
-- Indexes for table `phieumuonctthietbi`
--
ALTER TABLE `phieumuonctthietbi`
  ADD PRIMARY KEY (`id_stt`),
  ADD UNIQUE KEY `id_tb` (`id_tb`,`id_pm`),
  ADD KEY `id_pm` (`id_pm`);

--
-- Indexes for table `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`id_pn`);

--
-- Indexes for table `phieunhapctnoithat`
--
ALTER TABLE `phieunhapctnoithat`
  ADD PRIMARY KEY (`id_stt`),
  ADD UNIQUE KEY `id_nt` (`id_nt`,`id_pn`),
  ADD KEY `id_pn` (`id_pn`);

--
-- Indexes for table `phieunhapctthietbi`
--
ALTER TABLE `phieunhapctthietbi`
  ADD PRIMARY KEY (`id_stt`),
  ADD UNIQUE KEY `id_tb` (`id_tb`,`id_pn`),
  ADD KEY `id_pn` (`id_pn`);

--
-- Indexes for table `phieutra`
--
ALTER TABLE `phieutra`
  ADD PRIMARY KEY (`id_pt`),
  ADD KEY `id_pm` (`id_pm`);

--
-- Indexes for table `phieutractnoithat`
--
ALTER TABLE `phieutractnoithat`
  ADD PRIMARY KEY (`id_stt`),
  ADD UNIQUE KEY `id_nt` (`id_nt`,`id_pt`),
  ADD KEY `id_pt` (`id_pt`);

--
-- Indexes for table `phieutractthietbi`
--
ALTER TABLE `phieutractthietbi`
  ADD PRIMARY KEY (`id_stt`),
  ADD UNIQUE KEY `id_tb` (`id_tb`,`id_pt`),
  ADD KEY `id_pt` (`id_pt`);

--
-- Indexes for table `phong`
--
ALTER TABLE `phong`
  ADD PRIMARY KEY (`id_p`),
  ADD UNIQUE KEY `ten_p` (`ten_p`),
  ADD KEY `id_lp` (`id_lp`),
  ADD KEY `id_kv` (`id_kv`),
  ADD KEY `id_vt` (`id_vt`);

--
-- Indexes for table `quyen`
--
ALTER TABLE `quyen`
  ADD PRIMARY KEY (`id_q`),
  ADD UNIQUE KEY `ten_q` (`ten_q`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY email(`email`),
  ADD KEY `id_q` (`id_q`),
  ADD KEY `id_cb` (`id_cb`);

--
-- Indexes for table `thietbi`
--
ALTER TABLE `thietbi`
  ADD PRIMARY KEY (`id_tb`),
  ADD UNIQUE KEY `ten_tb` (`ten_tb`),
  ADD KEY `id_ltb` (`id_ltb`),
  ADD KEY `id_dvt` (`id_dvt`);

--
-- Indexes for table `tiethoc`
--
ALTER TABLE `tiethoc`
  ADD PRIMARY KEY (`id_th`);

--
-- Indexes for table `trangthaiphong`
--
ALTER TABLE `trangthaiphong`
  ADD PRIMARY KEY (`id_ttp`);

--
-- Indexes for table `trangthaiyeucau`
--
ALTER TABLE `trangthaiyeucau`
  ADD PRIMARY KEY (`id_ttyc`);

--
-- Indexes for table `ttsdnoithat`
--
ALTER TABLE `ttsdnoithat`
  ADD PRIMARY KEY (`id_ttsdnt`);

--
-- Indexes for table `ttsdthietbi`
--
ALTER TABLE `ttsdthietbi`
  ADD PRIMARY KEY (`id_ttsdtb`);

--
-- Indexes for table `vitri`
--
ALTER TABLE `vitri`
  ADD PRIMARY KEY (`id_vt`);

--
-- AUTO_INCREMENT for table `bangyeucau`
--
ALTER TABLE `bangyeucau`
  MODIFY `id_byc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `bangyeucauchitietthietbi`
--
ALTER TABLE `bangyeucauchitietthietbi`
  MODIFY `id_bycttb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `bieumau`
--
ALTER TABLE `bieumau`
  MODIFY `id_bm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `canbo`
--
ALTER TABLE `canbo`
  MODIFY `id_cb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `chucvu`
--
ALTER TABLE `chucvu`
  MODIFY `id_cv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `danhsachcanboquanlyphong`
--
ALTER TABLE `danhsachcanboquanlyphong`
  MODIFY `id_ds` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `danhsachviecsudung`
--
ALTER TABLE `danhsachviecsudung`
  MODIFY `int_dsvsd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `donvi`
--
ALTER TABLE `donvi`
  MODIFY `id_dv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `donvitinh`
--
ALTER TABLE `donvitinh`
  MODIFY `id_dvt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `hocky`
--
ALTER TABLE `hocky`
  MODIFY `id_hk` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hocphan`
--
ALTER TABLE `hocphan`
  MODIFY `id_hp` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `khuvuc`
--
ALTER TABLE `khuvuc`
  MODIFY `id_kv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `lichhoc`
--
ALTER TABLE `lichhoc`
  MODIFY `stt_lh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `lichsusudungtaikhoan`
--
ALTER TABLE `lichsusudungtaikhoan`
  MODIFY `id_lssd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `loaibaotrinoithat`
--
ALTER TABLE `loaibaotrinoithat`
  MODIFY `id_lbt_nt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `loaibaotrithietbi`
--
ALTER TABLE `loaibaotrithietbi`
  MODIFY `id_lbt_tb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `loainoithat`
--
ALTER TABLE `loainoithat`
  MODIFY `id_lnt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `loaiphong`
--
ALTER TABLE `loaiphong`
  MODIFY `id_lp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `loaithietbi`
--
ALTER TABLE `loaithietbi`
  MODIFY `id_ltb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `lophocphan`
--
ALTER TABLE `lophocphan`
  MODIFY `id_lhp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `namhoc`
--
ALTER TABLE `namhoc`
  MODIFY `id_nh` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nhatkysudungnoithat`
--
ALTER TABLE `nhatkysudungnoithat`
  MODIFY `id_nksd_nt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `nhatkysudungphong`
--
ALTER TABLE `nhatkysudungphong`
  MODIFY `id_nk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `nhatkysudungthietbi`
--
ALTER TABLE `nhatkysudungthietbi`
  MODIFY `id_nksd_tb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `nhiemvu`
--
ALTER TABLE `nhiemvu`
  MODIFY `id_nv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `noithat`
--
ALTER TABLE `noithat`
  MODIFY `id_nt` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phieubaotrictnoithat`
--
ALTER TABLE `phieubaotrictnoithat`
  MODIFY `id_stt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `phieubaotrictthietbi`
--
ALTER TABLE `phieubaotrictthietbi`
  MODIFY `id_stt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `phieuktctnoithat`
--
ALTER TABLE `phieuktctnoithat`
  MODIFY `id_stt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `phieumuasamctnoithat`
--
ALTER TABLE `phieumuasamctnoithat`
  MODIFY `id_stt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `phieumuonctnoithat`
--
ALTER TABLE `phieumuonctnoithat`
  MODIFY `id_stt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `phieumuonctthietbi`
--
ALTER TABLE `phieumuonctthietbi`
  MODIFY `id_stt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `phieunhapctnoithat`
--
ALTER TABLE `phieunhapctnoithat`
  MODIFY `id_stt` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phieunhapctthietbi`
--
ALTER TABLE `phieunhapctthietbi`
  MODIFY `id_stt` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phieutractnoithat`
--
ALTER TABLE `phieutractnoithat`
  MODIFY `id_stt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `phong`
--
ALTER TABLE `phong`
  MODIFY `id_p` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quyen`
--
ALTER TABLE `quyen`
  MODIFY `id_q` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table users
--
ALTER TABLE users
  MODIFY id bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

-- AUTO_INCREMENT for table `thietbi`
--
ALTER TABLE `thietbi`
  MODIFY `id_tb` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tiethoc`
--
ALTER TABLE `tiethoc`
  MODIFY `id_th` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trangthaiphong`
--
ALTER TABLE `trangthaiphong`
  MODIFY `id_ttp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `trangthaiyeucau`
--
ALTER TABLE `trangthaiyeucau`
  MODIFY `id_ttyc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ttsdnoithat`
--
ALTER TABLE `ttsdnoithat`
  MODIFY `id_ttsdnt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ttsdthietbi`
--
ALTER TABLE `ttsdthietbi`
  MODIFY `id_ttsdtb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vitri`
--
ALTER TABLE `vitri`
  MODIFY `id_vt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for table `bangyeucau`
--
ALTER TABLE `bangyeucau`
  ADD CONSTRAINT `bangyeucau_ibfk_1` FOREIGN KEY (`id_cb`) REFERENCES `canbo` (`id_cb`),
  ADD CONSTRAINT `bangyeucau_ibfk_2` FOREIGN KEY (`id_ttyc`) REFERENCES `trangthaiyeucau` (`id_ttyc`);

--
-- Constraints for table `bangyeucauchitietnoithat`
--
ALTER TABLE `bangyeucauchitietnoithat`
  ADD CONSTRAINT `bangyeucauchitietnoithat_ibfk_1` FOREIGN KEY (`id_nt`) REFERENCES `noithat` (`id_nt`),
  ADD CONSTRAINT `bangyeucauchitietnoithat_ibfk_2` FOREIGN KEY (`id_byc`) REFERENCES `bangyeucau` (`id_byc`);

--
-- Constraints for table `bangyeucauchitietthietbi`
--
ALTER TABLE `bangyeucauchitietthietbi`
  ADD CONSTRAINT `bangyeucauchitietthietbi_ibfk_1` FOREIGN KEY (`id_tb`) REFERENCES `thietbi` (`id_tb`),
  ADD CONSTRAINT `bangyeucauchitietthietbi_ibfk_2` FOREIGN KEY (`id_byc`) REFERENCES `bangyeucau` (`id_byc`);

--
-- Constraints for table `bieumau`
--
ALTER TABLE `bieumau`
  ADD CONSTRAINT `bieumau_ibfk_1` FOREIGN KEY (`id_hk`) REFERENCES `hocky` (`id_hk`);

--
-- Constraints for table `canbo`
--
ALTER TABLE `canbo`
  ADD CONSTRAINT `canbo_ibfk_1` FOREIGN KEY (`id_cv`) REFERENCES `chucvu` (`id_cv`),
  ADD CONSTRAINT `canbo_ibfk_2` FOREIGN KEY (`id_dv`) REFERENCES `donvi` (`id_dv`);

--
-- Constraints for table `danhsachcanboquanlyphong`
--
ALTER TABLE `danhsachcanboquanlyphong`
  ADD CONSTRAINT `danhsachcanboquanlyphong_ibfk_1` FOREIGN KEY (`id_cb`) REFERENCES `canbo` (`id_cb`),
  ADD CONSTRAINT `danhsachcanboquanlyphong_ibfk_2` FOREIGN KEY (`id_p`) REFERENCES `phong` (`id_p`),
  ADD CONSTRAINT `danhsachcanboquanlyphong_ibfk_3` FOREIGN KEY (`id_nv`) REFERENCES `nhiemvu` (`id_nv`);

--
-- Constraints for table `donvi`
--
ALTER TABLE `donvi`
  ADD CONSTRAINT `donvi_ibfk_1` FOREIGN KEY (`id_p`) REFERENCES `phong` (`id_p`);

--
-- Constraints for table `hocky`
--
ALTER TABLE `hocky`
  ADD CONSTRAINT `hocky_ibfk_1` FOREIGN KEY (`id_nh`) REFERENCES `namhoc` (`id_nh`);

--
-- Constraints for table `lichhoc`
--
ALTER TABLE `lichhoc`
  ADD CONSTRAINT `lichhoc_ibfk_1` FOREIGN KEY (`id_cb`) REFERENCES `canbo` (`id_cb`),
  ADD CONSTRAINT `lichhoc_ibfk_2` FOREIGN KEY (`id_th_batdau`) REFERENCES `tiethoc` (`id_th`),
  ADD CONSTRAINT `lichhoc_ibfk_3` FOREIGN KEY (`id_th_ketthuc`) REFERENCES `tiethoc` (`id_th`),
  ADD CONSTRAINT `lichhoc_ibfk_4` FOREIGN KEY (`id_p`) REFERENCES `phong` (`id_p`),
  ADD CONSTRAINT `lichhoc_ibfk_5` FOREIGN KEY (`id_lhp`) REFERENCES `lophocphan` (`id_lhp`);

--
-- Constraints for table `lichsusudungtaikhoan`
--
ALTER TABLE `lichsusudungtaikhoan`
  ADD CONSTRAINT `lichsusudungtaikhoan_ibfk_1` FOREIGN KEY (`id_tk`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `lichsusudungtaikhoan_ibfk_2` FOREIGN KEY (`id_dsvsd`) REFERENCES `danhsachviecsudung` (`int_dsvsd`);

--
-- Constraints for table `lophocphan`
--
ALTER TABLE `lophocphan`
  ADD CONSTRAINT `lophocphan_ibfk_1` FOREIGN KEY (`id_hk`) REFERENCES `hocky` (`id_hk`),
  ADD CONSTRAINT `lophocphan_ibfk_2` FOREIGN KEY (`id_hp`) REFERENCES `hocphan` (`id_hp`);

--
-- Constraints for table `nhatkysudungnoithat`
--
ALTER TABLE `nhatkysudungnoithat`
  ADD CONSTRAINT `nhatkysudungnoithat_ibfk_1` FOREIGN KEY (`id_nt`) REFERENCES `noithat` (`id_nt`),
  ADD CONSTRAINT `nhatkysudungnoithat_ibfk_2` FOREIGN KEY (`id_ttsdnt`) REFERENCES `ttsdnoithat` (`id_ttsdnt`),
  ADD CONSTRAINT `nhatkysudungnoithat_ibfk_3` FOREIGN KEY (`id_nk`) REFERENCES `nhatkysudungphong` (`id_nk`);

--
-- Constraints for table `nhatkysudungphong`
--
ALTER TABLE `nhatkysudungphong`
  ADD CONSTRAINT `nhatkysudungphong_ibfk_1` FOREIGN KEY (`id_lh`) REFERENCES `lichhoc` (`stt_lh`),
  ADD CONSTRAINT `nhatkysudungphong_ibfk_2` FOREIGN KEY (`id_ttp`) REFERENCES `trangthaiphong` (`id_ttp`);

--
-- Constraints for table `nhatkysudungthietbi`
--
ALTER TABLE `nhatkysudungthietbi`
  ADD CONSTRAINT `nhatkysudungthietbi_ibfk_1` FOREIGN KEY (`id_tb`) REFERENCES `thietbi` (`id_tb`),
  ADD CONSTRAINT `nhatkysudungthietbi_ibfk_2` FOREIGN KEY (`id_ttsdtb`) REFERENCES `ttsdthietbi` (`id_ttsdtb`),
  ADD CONSTRAINT `nhatkysudungthietbi_ibfk_3` FOREIGN KEY (`id_nk`) REFERENCES `nhatkysudungphong` (`id_nk`);

--
-- Constraints for table `noithat`
--
ALTER TABLE `noithat`
  ADD CONSTRAINT `noithat_ibfk_1` FOREIGN KEY (`id_lnt`) REFERENCES `loainoithat` (`id_lnt`),
  ADD CONSTRAINT `noithat_ibfk_2` FOREIGN KEY (`id_dvt`) REFERENCES `donvitinh` (`id_dvt`);

--
-- Constraints for table `phieu`
--
ALTER TABLE `phieu`
  ADD CONSTRAINT `phieu_ibfk_1` FOREIGN KEY (`id_p`) REFERENCES `phong` (`id_p`),
  ADD CONSTRAINT `phieu_ibfk_2` FOREIGN KEY (`id_cb`) REFERENCES `canbo` (`id_cb`),
  ADD CONSTRAINT `phieu_ibfk_3` FOREIGN KEY (`id_hk`) REFERENCES `hocky` (`id_hk`);

--
-- Constraints for table `phieubaotri`
--
ALTER TABLE `phieubaotri`
  ADD CONSTRAINT `phieubaotri_ibfk_1` FOREIGN KEY (`id_pbt`) REFERENCES `phieu` (`id_phieu`);

--
-- Constraints for table `phieubaotrictnoithat`
--
ALTER TABLE `phieubaotrictnoithat`
  ADD CONSTRAINT `phieubaotrictnoithat_ibfk_1` FOREIGN KEY (`id_nt`) REFERENCES `noithat` (`id_nt`),
  ADD CONSTRAINT `phieubaotrictnoithat_ibfk_2` FOREIGN KEY (`id_lbt_nt`) REFERENCES `loaibaotrinoithat` (`id_lbt_nt`),
  ADD CONSTRAINT `phieubaotrictnoithat_ibfk_3` FOREIGN KEY (`id_pbt`) REFERENCES `phieubaotri` (`id_pbt`);

--
-- Constraints for table `phieubaotrictthietbi`
--
ALTER TABLE `phieubaotrictthietbi`
  ADD CONSTRAINT `phieubaotrictthietbi_ibfk_1` FOREIGN KEY (`id_tb`) REFERENCES `thietbi` (`id_tb`),
  ADD CONSTRAINT `phieubaotrictthietbi_ibfk_2` FOREIGN KEY (`id_lbt_tb`) REFERENCES `loaibaotrithietbi` (`id_lbt_tb`),
  ADD CONSTRAINT `phieubaotrictthietbi_ibfk_3` FOREIGN KEY (`id_pbt`) REFERENCES `phieubaotri` (`id_pbt`);

--
-- Constraints for table `phieukiemtra`
--
ALTER TABLE `phieukiemtra`
  ADD CONSTRAINT `phieukiemtra_ibfk_1` FOREIGN KEY (`id_pkt`) REFERENCES `phieu` (`id_phieu`);

--
-- Constraints for table `phieuktctnoithat`
--
ALTER TABLE `phieuktctnoithat`
  ADD CONSTRAINT `phieuktctnoithat_ibfk_1` FOREIGN KEY (`id_nt`) REFERENCES `noithat` (`id_nt`),
  ADD CONSTRAINT `phieuktctnoithat_ibfk_2` FOREIGN KEY (`id_pkt`) REFERENCES `phieukiemtra` (`id_pkt`);

--
-- Constraints for table `phieuktctthietbi`
--
ALTER TABLE `phieuktctthietbi`
  ADD CONSTRAINT `phieuktctthietbi_ibfk_1` FOREIGN KEY (`id_tb`) REFERENCES `thietbi` (`id_tb`),
  ADD CONSTRAINT `phieuktctthietbi_ibfk_2` FOREIGN KEY (`id_pkt`) REFERENCES `phieukiemtra` (`id_pkt`);

--
-- Constraints for table `phieumuasam`
--
ALTER TABLE `phieumuasam`
  ADD CONSTRAINT `phieumuasam_ibfk_1` FOREIGN KEY (`id_pms`) REFERENCES `phieu` (`id_phieu`);

--
-- Constraints for table `phieumuasamctnoithat`
--
ALTER TABLE `phieumuasamctnoithat`
  ADD CONSTRAINT `phieumuasamctnoithat_ibfk_1` FOREIGN KEY (`id_nt`) REFERENCES `noithat` (`id_nt`),
  ADD CONSTRAINT `phieumuasamctnoithat_ibfk_2` FOREIGN KEY (`id_pms`) REFERENCES `phieumuasam` (`id_pms`);

--
-- Constraints for table `phieumuasamctthietbi`
--
ALTER TABLE `phieumuasamctthietbi`
  ADD CONSTRAINT `phieumuasamctthietbi_ibfk_1` FOREIGN KEY (`id_tb`) REFERENCES `thietbi` (`id_tb`),
  ADD CONSTRAINT `phieumuasamctthietbi_ibfk_2` FOREIGN KEY (`id_pms`) REFERENCES `phieumuasam` (`id_pms`);

--
-- Constraints for table `phieumuon`
--
ALTER TABLE `phieumuon`
  ADD CONSTRAINT `phieumuon_ibfk_1` FOREIGN KEY (`id_pm`) REFERENCES `phieu` (`id_phieu`);

--
-- Constraints for table `phieumuonctnoithat`
--
ALTER TABLE `phieumuonctnoithat`
  ADD CONSTRAINT `phieumuonctnoithat_ibfk_1` FOREIGN KEY (`id_nt`) REFERENCES `noithat` (`id_nt`),
  ADD CONSTRAINT `phieumuonctnoithat_ibfk_2` FOREIGN KEY (`id_pm`) REFERENCES `phieumuon` (`id_pm`);

--
-- Constraints for table `phieumuonctthietbi`
--
ALTER TABLE `phieumuonctthietbi`
  ADD CONSTRAINT `phieumuonctthietbi_ibfk_1` FOREIGN KEY (`id_tb`) REFERENCES `thietbi` (`id_tb`),
  ADD CONSTRAINT `phieumuonctthietbi_ibfk_2` FOREIGN KEY (`id_pm`) REFERENCES `phieumuon` (`id_pm`);

--
-- Constraints for table `phieunhapctnoithat`
--
ALTER TABLE `phieunhapctnoithat`
  ADD CONSTRAINT `phieunhapctnoithat_ibfk_1` FOREIGN KEY (`id_nt`) REFERENCES `noithat` (`id_nt`),
  ADD CONSTRAINT `phieunhapctnoithat_ibfk_2` FOREIGN KEY (`id_pn`) REFERENCES `phieunhap` (`id_pn`);

--
-- Constraints for table `phieunhapctthietbi`
--
ALTER TABLE `phieunhapctthietbi`
  ADD CONSTRAINT `phieunhapctthietbi_ibfk_1` FOREIGN KEY (`id_tb`) REFERENCES `thietbi` (`id_tb`),
  ADD CONSTRAINT `phieunhapctthietbi_ibfk_2` FOREIGN KEY (`id_pn`) REFERENCES `phieunhap` (`id_pn`);

--
-- Constraints for table `phieutra`
--
ALTER TABLE `phieutra`
  ADD CONSTRAINT `phieutra_ibfk_1` FOREIGN KEY (`id_pm`) REFERENCES `phieumuon` (`id_pm`),
  ADD CONSTRAINT `phieutra_ibfk_2` FOREIGN KEY (`id_pt`) REFERENCES `phieu` (`id_phieu`);

--
-- Constraints for table `phieutractnoithat`
--
ALTER TABLE `phieutractnoithat`
  ADD CONSTRAINT `phieutractnoithat_ibfk_1` FOREIGN KEY (`id_nt`) REFERENCES `noithat` (`id_nt`),
  ADD CONSTRAINT `phieutractnoithat_ibfk_2` FOREIGN KEY (`id_pt`) REFERENCES `phieutra` (`id_pt`);

--
-- Constraints for table `phieutractthietbi`
--
ALTER TABLE `phieutractthietbi`
  ADD CONSTRAINT `phieutractthietbi_ibfk_1` FOREIGN KEY (`id_tb`) REFERENCES `thietbi` (`id_tb`),
  ADD CONSTRAINT `phieutractthietbi_ibfk_2` FOREIGN KEY (`id_pt`) REFERENCES `phieutra` (`id_pt`);

--
-- Constraints for table `phong`
--
ALTER TABLE `phong`
  ADD CONSTRAINT `phong_ibfk_1` FOREIGN KEY (`id_lp`) REFERENCES `loaiphong` (`id_lp`),
  ADD CONSTRAINT `phong_ibfk_2` FOREIGN KEY (`id_kv`) REFERENCES `khuvuc` (`id_kv`),
  ADD CONSTRAINT `phong_ibfk_3` FOREIGN KEY (`id_vt`) REFERENCES `vitri` (`id_vt`);

--
-- Constraints for table `taikhoan`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id_q`) REFERENCES `quyen` (`id_q`),
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`id_cb`) REFERENCES `canbo` (`id_cb`);

--
-- Constraints for table `thietbi`
--
ALTER TABLE `thietbi`
  ADD CONSTRAINT `thietbi_ibfk_1` FOREIGN KEY (`id_ltb`) REFERENCES `loaithietbi` (`id_ltb`),
  ADD CONSTRAINT `thietbi_ibfk_2` FOREIGN KEY (`id_dvt`) REFERENCES `donvitinh` (`id_dvt`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
