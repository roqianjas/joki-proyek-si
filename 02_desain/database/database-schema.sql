-- ============================================
-- Database Schema: Sistem Manajemen Arsip Persuratan
-- SDIT Al-Huda
-- ============================================

-- Buat Database
CREATE DATABASE IF NOT EXISTS arsip_surat_sdit CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE arsip_surat_sdit;

-- ============================================
-- Tabel: users (Pengguna)
-- ============================================
CREATE TABLE users (
    id_user INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    nama_lengkap VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    no_telepon VARCHAR(20),
    nip VARCHAR(50),
    alamat TEXT,
    role ENUM('admin', 'kepala_sekolah', 'guru', 'staf') NOT NULL,
    foto_profil VARCHAR(255),
    status ENUM('aktif', 'nonaktif') DEFAULT 'aktif',
    last_login TIMESTAMP NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    INDEX idx_username (username),
    INDEX idx_email (email),
    INDEX idx_role (role)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ============================================
-- Tabel: surat_masuk (Surat Masuk)
-- ============================================
CREATE TABLE surat_masuk (
    id_surat_masuk INT AUTO_INCREMENT PRIMARY KEY,
    nomor_surat VARCHAR(50) NOT NULL UNIQUE,
    tanggal_surat DATE NOT NULL,
    tanggal_diterima DATE NOT NULL,
    pengirim VARCHAR(200) NOT NULL,
    perihal VARCHAR(255) NOT NULL,
    kategori ENUM('undangan', 'surat_edaran', 'permohonan', 'pemberitahuan', 'lainnya') NOT NULL,
    sifat_surat ENUM('biasa', 'penting', 'segera', 'rahasia') DEFAULT 'biasa',
    isi_ringkas TEXT,
    file_surat VARCHAR(255),
    lampiran TEXT,
    status ENUM('pending', 'diproses', 'selesai') DEFAULT 'pending',
    id_user_input INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (id_user_input) REFERENCES users(id_user) ON DELETE RESTRICT ON UPDATE CASCADE,
    INDEX idx_nomor_surat (nomor_surat),
    INDEX idx_tanggal_diterima (tanggal_diterima),
    INDEX idx_status (status),
    INDEX idx_kategori (kategori)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ============================================
-- Tabel: surat_keluar (Surat Keluar)
-- ============================================
CREATE TABLE surat_keluar (
    id_surat_keluar INT AUTO_INCREMENT PRIMARY KEY,
    nomor_surat VARCHAR(50) NOT NULL UNIQUE,
    tanggal_surat DATE NOT NULL,
    tujuan VARCHAR(200) NOT NULL,
    alamat_tujuan TEXT,
    perihal VARCHAR(255) NOT NULL,
    kategori ENUM('undangan', 'surat_edaran', 'permohonan', 'pemberitahuan', 'laporan', 'lainnya') NOT NULL,
    sifat_surat ENUM('biasa', 'penting', 'segera', 'rahasia') DEFAULT 'biasa',
    isi_surat TEXT,
    file_surat VARCHAR(255),
    lampiran TEXT,
    id_penandatangan INT,
    status ENUM('draft', 'terkirim') DEFAULT 'draft',
    id_user_input INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (id_user_input) REFERENCES users(id_user) ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (id_penandatangan) REFERENCES users(id_user) ON DELETE SET NULL ON UPDATE CASCADE,
    INDEX idx_nomor_surat (nomor_surat),
    INDEX idx_tanggal_surat (tanggal_surat),
    INDEX idx_status (status)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ============================================
-- Tabel: disposisi (Disposisi Surat)
-- ============================================
CREATE TABLE disposisi (
    id_disposisi INT AUTO_INCREMENT PRIMARY KEY,
    id_surat_masuk INT NOT NULL,
    id_dari INT NOT NULL,
    id_kepada INT NOT NULL,
    instruksi TEXT NOT NULL,
    catatan TEXT,
    prioritas ENUM('biasa', 'penting', 'sangat_penting', 'segera') DEFAULT 'biasa',
    batas_waktu DATE,
    status ENUM('pending', 'proses', 'selesai') DEFAULT 'pending',
    tanggal_selesai TIMESTAMP NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (id_surat_masuk) REFERENCES surat_masuk(id_surat_masuk) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_dari) REFERENCES users(id_user) ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (id_kepada) REFERENCES users(id_user) ON DELETE RESTRICT ON UPDATE CASCADE,
    INDEX idx_surat_masuk (id_surat_masuk),
    INDEX idx_kepada (id_kepada),
    INDEX idx_status (status)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ============================================
-- Tabel: arsip (Arsip Digital)
-- ============================================
CREATE TABLE arsip (
    id_arsip INT AUTO_INCREMENT PRIMARY KEY,
    jenis_surat ENUM('surat_masuk', 'surat_keluar') NOT NULL,
    id_surat INT NOT NULL,
    nomor_surat VARCHAR(50) NOT NULL,
    perihal VARCHAR(255) NOT NULL,
    tanggal_surat DATE NOT NULL,
    file_path VARCHAR(255) NOT NULL,
    ukuran_file INT,
    tahun_arsip INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    INDEX idx_nomor_surat (nomor_surat),
    INDEX idx_tahun_arsip (tahun_arsip),
    INDEX idx_jenis_surat (jenis_surat)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ============================================
-- Tabel: log_aktivitas (Log Aktivitas)
-- ============================================
CREATE TABLE log_aktivitas (
    id_log INT AUTO_INCREMENT PRIMARY KEY,
    id_user INT NOT NULL,
    aktivitas VARCHAR(255) NOT NULL,
    jenis_aktivitas ENUM('login', 'logout', 'create', 'update', 'delete', 'disposisi', 'download') NOT NULL,
    tabel_terkait VARCHAR(50),
    id_terkait INT,
    ip_address VARCHAR(45),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_user) REFERENCES users(id_user) ON DELETE CASCADE ON UPDATE CASCADE,
    INDEX idx_user (id_user),
    INDEX idx_created_at (created_at)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ============================================
-- Tabel: notifikasi (Notifikasi)
-- ============================================
CREATE TABLE notifikasi (
    id_notifikasi INT AUTO_INCREMENT PRIMARY KEY,
    id_user INT NOT NULL,
    judul VARCHAR(255) NOT NULL,
    pesan TEXT NOT NULL,
    jenis ENUM('surat_masuk', 'disposisi', 'deadline', 'sistem') NOT NULL,
    link VARCHAR(255),
    is_read BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_user) REFERENCES users(id_user) ON DELETE CASCADE ON UPDATE CASCADE,
    INDEX idx_user (id_user),
    INDEX idx_is_read (is_read)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ============================================
-- Tabel: kategori_surat (Kategori Surat) - Optional
-- ============================================
CREATE TABLE kategori_surat (
    id_kategori INT AUTO_INCREMENT PRIMARY KEY,
    nama_kategori VARCHAR(100) NOT NULL,
    deskripsi TEXT,
    jenis ENUM('surat_masuk', 'surat_keluar', 'both') DEFAULT 'both',
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ============================================
-- Data Dummy untuk Testing
-- ============================================

-- Insert Users
INSERT INTO users (username, password, nama_lengkap, email, no_telepon, nip, role, status) VALUES
('admin', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Admin System', 'admin@sditalh uda.sch.id', '081234567890', NULL, 'admin', 'aktif'),
('kepala_sekolah', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Rita Amalia, S.H', 'rita@sditalh uda.sch.id', '081234567891', '198501152010012001', 'kepala_sekolah', 'aktif'),
('wakil_kurikulum', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Rustamaji Arditomo, S.Pd', 'rustamaji@sditalh uda.sch.id', '081234567892', '198703202011011002', 'guru', 'aktif'),
('staf_tu', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Staf Tata Usaha', 'staf@sditalh uda.sch.id', '081234567893', '199001152015012001', 'staf', 'aktif');

-- Insert Surat Masuk
INSERT INTO surat_masuk (nomor_surat, tanggal_surat, tanggal_diterima, pengirim, perihal, kategori, sifat_surat, isi_ringkas, status, id_user_input) VALUES
('001/SM/XI/2025', '2025-11-20', '2025-11-21', 'Dinas Pendidikan Kota', 'Undangan Rapat Dinas', 'undangan', 'penting', 'Undangan rapat koordinasi kepala sekolah se-kota', 'pending', 4),
('002/SM/XI/2025', '2025-11-19', '2025-11-20', 'Kemendikbud', 'Surat Edaran Kurikulum', 'surat_edaran', 'penting', 'Edaran tentang implementasi kurikulum merdeka', 'selesai', 4),
('003/SM/XI/2025', '2025-11-18', '2025-11-19', 'Komite Sekolah', 'Permohonan Izin Kegiatan', 'permohonan', 'biasa', 'Permohonan izin kegiatan bakti sosial', 'diproses', 4);

-- Insert Surat Keluar
INSERT INTO surat_keluar (nomor_surat, tanggal_surat, tujuan, perihal, kategori, sifat_surat, isi_surat, status, id_user_input, id_penandatangan) VALUES
('001/SK/XI/2025', '2025-11-21', 'Dinas Pendidikan Kota', 'Laporan Kegiatan Sekolah', 'laporan', 'biasa', 'Laporan kegiatan sekolah bulan November 2025', 'terkirim', 4, 2),
('002/SK/XI/2025', '2025-11-20', 'Orang Tua Siswa', 'Pemberitahuan Libur Semester', 'pemberitahuan', 'biasa', 'Pemberitahuan jadwal libur semester ganjil', 'terkirim', 4, 2),
('003/SK/XI/2025', '2025-11-19', 'Komite Sekolah', 'Undangan Rapat Komite', 'undangan', 'biasa', 'Undangan rapat komite sekolah', 'draft', 4, NULL);

-- Insert Disposisi
INSERT INTO disposisi (id_surat_masuk, id_dari, id_kepada, instruksi, catatan, prioritas, batas_waktu, status) VALUES
(2, 2, 3, 'Untuk ditindaklanjuti', 'Mohon segera dikoordinasikan dengan tim kurikulum', 'penting', '2025-11-25', 'proses'),
(3, 2, 3, 'Untuk dikoordinasikan', 'Koordinasikan dengan koordinator kesiswaan', 'biasa', '2025-11-28', 'pending');

-- Insert Notifikasi
INSERT INTO notifikasi (id_user, judul, pesan, jenis, link, is_read) VALUES
(2, 'Surat Masuk Baru', 'Surat undangan rapat dinas dari Dinas Pendidikan Kota', 'surat_masuk', '/surat-masuk/1', FALSE),
(3, 'Disposisi Baru', 'Anda mendapat disposisi surat edaran kurikulum', 'disposisi', '/tugas/1', FALSE),
(3, 'Deadline Mendekat', 'Batas waktu disposisi surat edaran kurikulum: 25 Nov 2025', 'deadline', '/tugas/1', FALSE);

-- ============================================
-- End of Schema
-- ============================================
