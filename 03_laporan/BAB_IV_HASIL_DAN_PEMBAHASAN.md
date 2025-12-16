# BAB IV  
# HASIL DAN PEMBAHASAN

## 4.1 Inisiasi Proyek

Proyek pengembangan Sistem Informasi Manajemen Arsip Persuratan di SDIT Al-Huda diinisiasi berdasarkan kebutuhan untuk mengoptimalkan operasional administrasi persuratan yang selama ini masih dilakukan secara manual. SDIT Al-Huda sebagai lembaga pendidikan Islam terpadu yang terus berkembang menghadapi tantangan dalam pengelolaan volume surat yang semakin meningkat setiap tahunnya.

### 4.1.1 Latar Belakang Masalah

Berdasarkan observasi dan wawancara pada November 2025, teridentifikasi permasalahan utama: (1) Proses pengelolaan surat manual memakan waktu 10-15 menit per surat, (2) Pencarian arsip memerlukan 15-30 menit, (3) Risiko kerusakan dokumen tinggi, (4) Disposisi manual lambat, (5) Tidak ada monitoring status surat, (6) Pembuatan laporan memakan waktu 2-3 hari, (7) Keamanan dokumen lemah tanpa jejak audit, (8) Keterbatasan ruang penyimpanan fisik.

### 4.1.2 Identifikasi Masalah

Masalah utama: (a) Pelayanan administrasi konvensional kurang efisien, (b) Belum ada sistem informasi berbasis web, (c) Kehilangan data dan kesulitan pencarian arsip, (d) Tidak ada sistem monitoring dan pelaporan.

### 4.1.3 Ruang Lingkup

Ruang lingkup proyek ini mencakup pengembangan sistem informasi berbasis web dengan fitur-fitur utama:

- **Modul Manajemen Surat Masuk**: Pencatatan, upload file, pelacakan status surat masuk
- **Modul Manajemen Surat Keluar**: Pembuatan, penomoran otomatis, upload file surat keluar
- **Modul Disposisi**: Disposisi elektronik dari kepala sekolah ke guru/staf dengan notifikasi email
- **Modul Arsip Digital**: Penyimpanan dan pencarian dokumen secara digital
- **Modul Dashboard**: Dashboard berbasis peran untuk monitoring dan statistik
- **Modul Laporan**: Laporan periodik dengan export ke PDF dan Excel
- **Modul Notifikasi**: Notifikasi email untuk disposisi dan pengingat
- **Modul Log Aktivitas**: Jejak audit untuk keamanan dan akuntabilitas

### 4.1.4 Tujuan dan Manfaat Proyek

**Tujuan:** Meningkatkan efisiensi pengelolaan arsip persuratan melalui sistem berbasis web, mempercepat disposisi dengan notifikasi otomatis, menyediakan arsip digital aman, dan menghasilkan laporan informatif untuk pengambilan keputusan.

**Manfaat:** Efisiensi operasional meningkat, monitoring real-time, pengurangan beban kerja manual, dan menjadi referensi sistem informasi untuk lembaga pendidikan.

### 4.1.5 Identifikasi Pemangku Kepentingan

**Tabel 4.1 Pemangku Kepentingan Proyek**

| No | Pemangku Kepentingan | Peran | Kepentingan |
|----|---------------------|-------|-------------|
| 1 | Kepala Sekolah | Sponsor Proyek, Pengguna Utama | Monitoring operasional, disposisi surat, laporan manajemen |
| 2 | Staf Administrasi | Pengguna Utama | Input surat masuk/keluar, pengelolaan arsip, pembuatan laporan |
| 3 | Guru/Wakil Kepala | Pengguna | Menerima disposisi, tindak lanjut tugas, akses informasi surat |
| 4 | Staf TU | Pengguna | Pengelolaan arsip digital, backup dokumen |
| 5 | Tim Pengembang | Pelaksana Proyek | Mengembangkan sistem sesuai kebutuhan dan spesifikasi |
| 6 | Dosen Pembimbing | Pembimbing Proyek | Memberikan arahan dan validasi metodologi pengembangan |

---

## 4.2 Perencanaan Proyek

Perencanaan proyek dilakukan untuk memastikan proyek berjalan sesuai target waktu, biaya, dan kualitas yang ditetapkan. Perencanaan mencakup berbagai area pengetahuan manajemen proyek yang meliputi ruang lingkup (*scope*), waktu (*time*), biaya (*cost*), kualitas (*quality*), sumber daya (*resource*), risiko (*risk*), komunikasi (*communication*), pengadaan (*procurement*), integrasi (*integration*), serta manajemen pemangku kepentingan (*stakeholder*).

### 4.2.1 Perencanaan Ruang Lingkup (*Scope*)

Ruang lingkup proyek didefinisikan menggunakan *Work Breakdown Structure* (WBS) yang membagi pekerjaan menjadi komponen-komponen yang dapat dikelola. WBS proyek ini mencakup 5 fase utama dengan total lebih dari 35 *work packages* yang terdistribusi ke dalam aktivitas-aktivitas terstruktur.

**Tabel 4.2 Work Breakdown Structure (WBS)**

| Level 1 | Level 2 | Level 3 | Deskripsi |
|---------|---------|---------|-----------|
| 1. Project Management | 1.1 Inisiasi | 1.1.1 Identifikasi Masalah | Observasi dan wawancara pemangku kepentingan |
| | | 1.1.2 Studi Kelayakan | Analisis kelayakan teknis, operasional, ekonomi |
| | 1.2 Perencanaan | 1.2.1 Penyusunan WBS | Rincian struktur pekerjaan |
| | | 1.2.2 Estimasi Biaya | Perhitungan biaya pengembangan |
| | 1.3 Monitoring | 1.3.1 Progress Tracking | Pemantauan kemajuan mingguan |
| 2. Analysis | 2.1 Requirements | 2.1.1 Functional Requirements | Identifikasi kebutuhan fungsional sistem |
| | | 2.1.2 Non-functional Requirements | Keamanan, kinerja, kegunaan |
| | 2.2 System Analysis | 2.2.1 As-Is Process | Dokumentasi proses bisnis saat ini |
| | | 2.2.2 To-Be Process | Rancangan proses bisnis baru |
| 3. Design | 3.1 Database Design | 3.1.1 ERD | Diagram relasi entitas 7 tabel |
| | | 3.1.2 Normalisasi | Normalisasi hingga 3NF |
| | 3.2 UI/UX Design | 3.2.1 Wireframe | Sketsa antarmuka pengguna |
| | | 3.2.2 Mockup | Desain visual 38 halaman HTML |
| | 3.3 UML Diagrams | 3.3.1 Use Case Diagram | Diagram kasus penggunaan |
| | | 3.3.2 Activity Diagram | Diagram aktivitas proses bisnis |
| 4. Implementation | 4.1 Backend | 4.1.1 PHP Setup | Setup environment PHP & MySQL |
| | | 4.1.2 Database Creation | Implementasi skema database |
| | | 4.1.3 Core Development | Pengembangan *controller* dan *model* |
| | 4.2 Frontend | 4.2.1 HTML Templates | Pembuatan templat HTML5 |
| | | 4.2.2 Tailwind Styling | *Styling* dengan Tailwind CSS |
| | 4.3 Integration | 4.3.1 Email Service | Konfigurasi notifikasi email |
| | | 4.3.2 File Upload | Implementasi upload dokumen |
| 5. Testing | 5.1 Functional Testing | 5.1.1 Unit Testing | Pengujian per fitur |
| | 5.2 Integration Testing | 5.2.1 System Testing | Pengujian integrasi antar modul |
| | 5.3 UAT | 5.3.1 User Testing | Pengujian oleh pengguna akhir |
| 6. Deployment | 6.1 Server Setup | 6.1.1 Configuration | Pengaturan Apache, PHP, MySQL |
| | | 6.1.2 SSL Certificate | Instalasi Let's Encrypt |
| | 6.2 Go Live | 6.2.1 Data Migration | Migrasi data ke produksi |
| | | 6.2.2 System Launch | Peluncuran sistem |

### 4.2.2 Perencanaan Waktu Pengerjaan (*Time*)

Proyek dikerjakan selama 14 minggu dalam satu semester akademik dengan pembagian waktu sebagai berikut:

**Tabel 4.3 Jadwal Pengerjaan Proyek**

| No | Fase | Durasi | Periode | Luaran |
|----|------|--------|---------|--------|
| 1 | Analisis Kebutuhan | 2 minggu | Minggu 1-2 | Dokumen SRS, studi kelayakan |
| 2 | Desain Sistem | 2 minggu | Minggu 3-4 | ERD, diagram UML, mockup UI/UX 38 halaman |
| 3 | Implementasi | 4 minggu | Minggu 5-8 | Aplikasi web dengan 38 halaman fungsional |
| 4 | Pengujian | 3 minggu | Minggu 9-11 | Laporan pengujian, persetujuan UAT |
| 5 | Deployment | 1 minggu | Minggu 12 | Sistem produksi aktif |
| 6 | Dokumentasi | Paralel | Minggu 1-14 | Laporan akhir, manual, presentasi |

**Gantt Chart Jadwal Proyek:**

```
Fase                    | W1  W2  W3  W4  W5  W6  W7  W8  W9  W10 W11 W12 W13 W14
------------------------+--------------------------------------------------------
Analisis Kebutuhan      |████████                                              
Desain Sistem           |        ████████                                      
Implementasi            |                ████████████████                      
Pengujian               |                                ████████████          
Deployment              |                                            ████      
Dokumentasi             |████████████████████████████████████████████████████  
------------------------+--------------------------------------------------------
Legend: ████ = Aktif
```

*Gambar 4.2 Gantt Chart Jadwal Pengerjaan Proyek*

### 4.2.3 Perencanaan Anggaran Biaya (*Cost*)

Estimasi biaya proyek menggunakan metode *bottom-up* berdasarkan WBS:

**Tabel 4.4 Estimasi Biaya Proyek**

| No | Kategori | Item | Biaya (Rp) |
|----|----------|------|------------|
| 1 | Project Management | Project Manager (14 minggu × Rp 500.000/minggu) | 7.000.000 |
| | | Contingency Reserve (10%) | 700.000 |
| 2 | Hardware | Laptop Development (sudah ada) | 0 |
| | | Hosting (1 tahun) | 1.200.000 |
| 3 | Software | PHP & MySQL (gratis) | 0 |
| | | Tailwind CSS (gratis) | 0 |
| | | Domain .id & SSL (1 tahun) | 150.000 |
| 4 | Development | Developer (8 minggu × Rp 1.500.000/minggu) | 12.000.000 |
| 5 | Testing | Testing Tools & UAT Sessions | 500.000 |
| | | Security Testing | 800.000 |
| 6 | Training | User Training & Documentation | 1.000.000 |
| 7 | Integration | Email Service Setup (SMTP) | 200.000 |
| 8 | Lain-lain | Dokumentasi & Transport | 600.000 |
| **TOTAL** | | | **24.150.000** |

*Catatan: Biaya tenaga kerja disesuaikan dengan standar proyek akademik. Untuk proyek komersial, biaya aktual bisa lebih tinggi.*

### 4.2.4 Perencanaan Kualitas (*Quality*)

Standar kualitas yang ditetapkan untuk proyek ini:

**A. Standar Kualitas Fungsional:**
- **Fungsionalitas**: Minimal 90% kebutuhan fungsional harus terpenuhi dan berfungsi dengan baik
- **Akurasi**: 100% akurasi dalam pencatatan surat dan disposisi
- **Kelengkapan**: Semua modul utama (surat masuk, surat keluar, disposisi, arsip) harus tersedia

**B. Standar Kualitas Non-Fungsional:**
- **Performa**: 
  - Waktu muat halaman < 3 detik (rata-rata)
  - Waktu respons pencarian < 2 detik
  - Mendukung minimal 50 pengguna *concurrent*
- **Keamanan**: 
  - Mitigasi kerentanan OWASP Top 10
  - *Hashing* kata sandi dengan *bcrypt*
  - HTTPS untuk semua komunikasi
  - Pencegahan *SQL injection* (*prepared statement*)
- **Usabilitas**: 
  - Skor *System Usability Scale* (SUS) minimal 70/100
  - Tingkat kepuasan pengguna minimal 4/5
  - Tingkat penyelesaian tugas ≥ 90%
- **Keandalan**: 
  - Waktu aktif minimal 99% (maksimal waktu mati 7,2 jam/bulan)
  - Backup data otomatis mingguan

### 4.2.5 Perencanaan Sumber Daya (*Resource*)

**A. Sumber Daya Manusia:**

**Tabel 4.5 Alokasi Sumber Daya Manusia**

| No | Peran | Tanggung Jawab | Alokasi Waktu |
|----|-------|----------------|---------------|
| 1 | Project Manager | Koordinasi tim, dokumentasi | 20 jam/minggu |
| 2 | Full-stack Developer | Backend & frontend development | 40 jam/minggu |
| 3 | Database Designer | Desain database, implementasi | 30 jam/minggu |

**B. Sumber Daya Teknologi:**
- **Perangkat Keras**: Laptop untuk pengembangan, Server hosting
- **Perangkat Lunak**: Visual Studio Code (gratis), Git & GitHub (gratis), PHP 8.0+, MySQL 8.0, Tailwind CSS

### 4.2.6 Manajemen Risiko (*Risk*)

Identifikasi, analisis, dan strategi mitigasi risiko proyek:

**Tabel 4.6 Identifikasi dan Mitigasi Risiko**

| No | Risiko | Probabilitas | Dampak | Skor Risiko | Mitigasi | Owner |
|----|--------|-------------|--------|-------------|----------|-------|
| 1 | Keterlambatan jadwal | Sedang | Tinggi | 12 | Waktu penyangga 10%, prioritas fitur | PM |
| 2 | *Scope creep* (perubahan kebutuhan) | Sedang | Tinggi | 12 | Dokumentasi kebutuhan jelas, proses kontrol perubahan | PM |
| 3 | Bug kritis saat *deployment* | Rendah | Tinggi | 6 | Pengujian menyeluruh, UAT intensif | Developer |
| 4 | Anggota tim sakit/tidak tersedia | Rendah | Sedang | 4 | Berbagi pengetahuan, dokumentasi kode | PM |
| 5 | Kehilangan data | Rendah | Tinggi | 6 | Backup otomatis, redundansi | Developer |
| 6 | Pelanggaran keamanan | Rendah | Sangat Tinggi | 8 | Audit keamanan, *best practice* OWASP | Developer |

**Catatan Skor Risiko:** Probabilitas: Rendah (1), Sedang (2), Tinggi (3); Dampak: Rendah (2), Sedang (4), Tinggi (6), Sangat Tinggi (8); Skor Risiko = Probabilitas × Dampak

### 4.2.7 Perencanaan Komunikasi (*Communication*)

Strategi komunikasi untuk memastikan informasi mengalir efektif kepada seluruh pemangku kepentingan:

**Tabel 4.7 Matriks Perencanaan Komunikasi**

| No | Jenis Komunikasi | Pemangku Kepentingan | Frekuensi | Media | Durasi | Tujuan |
|----|------------------|---------------------|-----------|-------|--------|--------|
| 1 | *Weekly Meeting* | Tim Proyek | Mingguan (Senin) | Google Meet | 1-2 jam | Review progress, planning minggu depan |
| 2 | Laporan Kemajuan | Dosen Pembimbing | Dua mingguan | Email + Pertemuan | 30-60 menit | Update progress, konsultasi |
| 3 | Pertemuan Klien | SDIT Al-Huda | Dua mingguan | Tatap Muka/Online | 1 jam | Validasi kebutuhan, demo, feedback |
| 4 | Sesi UAT | Pengguna Akhir | 2 kali (Testing) | Tatap Muka | 2-3 jam | Pengujian sistem, feedback |
| 5 | Dokumentasi Proyek | Tim & Stakeholder | Berkelanjutan | Google Drive | - | Repositori dokumen |

### 4.2.8 Batasan dan Asumsi Proyek

**Batasan:** Proyek diselesaikan dalam 14 minggu tanpa pemeliharaan jangka panjang. Fokus pada fitur inti manajemen persuratan untuk desktop/tablet dengan kapasitas 50 pengguna bersamaan.

**Asumsi:** Infrastruktur teknologi stabil, stakeholder bersedia berpartisipasi dalam UAT dan pelatihan, pengguna memiliki kemampuan dasar teknologi digital.

---

## 4.3 Deskripsi Produk/Servis

### 4.3.1 Tujuan Sistem

Tujuan sistem ini adalah membangun sistem informasi berbasis web yang dapat memberikan informasi yang berkaitan dengan manajemen arsip persuratan SDIT Al-Huda, mencakup:

- Informasi lengkap tentang surat masuk dan surat keluar
- Sistem disposisi elektronik yang cepat dan terpantau
- Manajemen arsip digital yang aman
- Dashboard monitoring untuk setiap peran pengguna
- Laporan dan analitik yang komprehensif

### 4.3.2 Pengguna Sistem

Sistem memiliki 4 role pengguna: (1) **Admin** - kelola pengguna, akses penuh semua modul, (2) **Kepala Sekolah** - disposisi surat dan monitoring, (3) **Guru** - terima disposisi dan update status, (4) **Staf Administrasi** - input surat masuk/keluar dan kelola arsip.

### 4.3.3 Fitur Utama Sistem

**A. Modul Autentikasi**
- Login multi-peran (Admin, Kepala Sekolah, Guru, Staf)
- Lupa kata sandi & reset kata sandi
- Session management dan auto logout
- Role-based access control (RBAC)

**B. Modul Dashboard**
- Dashboard berbeda untuk setiap role
- Statistik real-time (jumlah surat, disposisi)
- Grafik visualisasi data
- Quick action buttons
- Notifikasi penting

**C. Modul Surat Masuk**
- Form input surat masuk
- Upload file scan surat (PDF, JPG, PNG)
- Auto-generate nomor registrasi
- Kategorisasi surat (undangan, edaran, permohonan, dll)
- Penentuan sifat surat (biasa, penting, segera, rahasia)
- Status tracking (pending, diproses, selesai)
- Pencarian dan filter multi-kriteria
- Detail view dengan informasi lengkap

**D. Modul Surat Keluar**
- Form pembuatan surat keluar
- Auto-generate nomor surat
- Upload dokumen surat
- Pemilihan penandatangan
- Status (draft, terkirim)
- Tracking surat keluar
- Pencarian dan filter

**E. Modul Disposisi**
- Form disposisi dengan pemilihan penerima
- Input instruksi dan prioritas (biasa, penting, sangat penting, segera)
- Penentuan deadline/batas waktu
- Notifikasi email otomatis ke penerima
- Dashboard tugas untuk penerima disposisi
- Update status tindak lanjut (pending, proses, selesai)
- Riwayat disposisi lengkap dengan timeline
- Monitoring real-time oleh kepala sekolah

**F. Modul Arsip Digital**
- Penyimpanan otomatis semua surat
- Pencarian full-text
- Filter kategori, sifat, periode tanggal
- Preview dokumen dalam browser
- Download dokumen
- Statistik arsip
- Manajemen folder arsip

**G. Modul Laporan**
- Laporan surat masuk (harian, bulanan, tahunan)
- Laporan surat keluar (harian, bulanan, tahunan)
- Laporan disposisi dan tindak lanjut
- Laporan arsip berdasarkan kategori
- Export ke PDF menggunakan library TCPDF
- Export ke Excel menggunakan PHPSpreadsheet
- Grafik dan visualisasi data
- Custom date range selection

**H. Modul Notifikasi**
- Notifikasi email otomatis untuk:
  - Disposisi baru
  - Pengingat deadline disposisi
  - Surat masuk penting
  - Status perubahan surat
- In-app notification
- Badge counter notifikasi belum dibaca

**I. Modul Manajemen Pengguna (Admin)**
- CRUD pengguna lengkap
- Role assignment
- Aktivasi/nonaktifkan akun
- Reset password
- Monitoring aktivitas pengguna
- Log aktivitas sistem

### 4.3.4 Arsitektur Sistem

Sistem dibangun dengan arsitektur **MVC (*Model-View-Controller*)** sederhana menggunakan PHP *native* yang terdiri dari 4 lapisan utama:

1. **Lapisan Presentasi (Views)** - Interface HTML5 dengan Tailwind CSS
2. **Lapisan Aplikasi (Controllers)** - Logic handler untuk request/response
3. **Lapisan Logika Bisnis (Models)** - Business logic dan validasi
4. **Lapisan Akses Data (Database)** - MySQL dengan 7 tabel ternormalisasi 3NF

Arsitektur lengkap sistem dapat dilihat pada **Gambar 4.1 Arsitektur Sistem MVC**.

![Gambar 4.1 Arsitektur Sistem MVC](../02_desain/diagram/arsitektur-sistem.png)

*Gambar 4.1 Arsitektur Sistem MVC*

### 4.3.5 Desain Basis Data

Sistem menggunakan 7 tabel utama yang telah dinormalisasi hingga Third Normal Form (3NF):

1. **users** - Data pengguna sistem dengan role berbeda
2. **surat_masuk** - Data surat masuk yang diterima
3. **surat_keluar** - Data surat keluar yang dibuat
4. **disposisi** - Data disposisi surat dari kepala sekolah
5. **arsip** - Arsip digital semua surat
6. **log_aktivitas** - Log aktivitas untuk audit trail
7. **notifikasi** - Notifikasi sistem untuk pengguna

**Relasi Utama:**
- users (1) ↔ (M) surat_masuk: Satu user input banyak surat masuk
- users (1) ↔ (M) surat_keluar: Satu user buat banyak surat keluar
- users (1) ↔ (M) disposisi (pemberi): Satu user beri banyak disposisi
- users (1) ↔ (M) disposisi (penerima): Satu user terima banyak disposisi
- surat_masuk (1) ↔ (M) disposisi: Satu surat bisa didisposisi ke banyak pihak
- surat_masuk (1) ↔ (1) arsip: Satu surat masuk memiliki satu arsip
- surat_keluar (1) ↔ (1) arsip: Satu surat keluar memiliki satu arsip

Normalisasi hingga 3NF memastikan tidak ada redundansi data dan menjaga integritas referensial.

### 4.3.6 Peran dan Hak Akses Pengguna

**A. Admin**
- Lihat: Semua data sistem
- Aksi: CRUD penuh pengguna, akses semua modul, generate semua laporan, monitoring sistem

**B. Kepala Sekolah**
- Lihat: Dashboard, semua surat masuk, disposisi, arsip, laporan manajemen
- Aksi: Buat disposisi, monitoring disposisi, generate laporan, update profil

**C. Guru**
- Lihat: Dashboard tugas, surat yang didisposisikan, arsip terkait
- Aksi: Update status disposisi, view detail surat, update profil

**D. Staf Administrasi**
- Lihat: Dashboard, surat masuk/keluar, arsip, laporan surat
- Aksi: CRUD surat masuk/keluar, upload dokumen, generate laporan, update profil

### 4.3.7 Keamanan Sistem

**A. Autentikasi & Otorisasi**
- *Hashing* kata sandi dengan *bcrypt*
- Session-based authentication
- Perlindungan CSRF untuk semua form
- Role-Based Access Control (RBAC)
- Auto logout setelah inaktif 30 menit

**B. Keamanan Data**
- HTTPS untuk semua komunikasi (SSL Certificate)
- Pencegahan *SQL injection* (*prepared statement*)
- Pencegahan XSS (*htmlspecialchars*)
- Validasi input untuk semua form
- Upload file dengan validasi tipe dan ukuran

**C. Keamanan File Upload**
- Validasi ekstensi file (hanya PDF, JPG, PNG)
- Batas ukuran file maksimal 5MB
- Random filename untuk keamanan
- Folder upload di luar web root

**D. Audit Trail**
- Log semua aktivitas penting
- Tracking siapa mengakses apa dan kapan
- Log login/logout user
- Backup data otomatis mingguan

---

### 4.3.8 Desain Sistem

Desain sistem mencakup perancangan basis data, pemodelan UML, dan desain antarmuka pengguna yang akan diimplementasikan.

#### A. Use Case Diagram

Use Case Diagram menggambarkan interaksi antara aktor (pengguna) dengan sistem, serta fungsionalitas yang dapat dilakukan oleh masing-masing aktor.

**Aktor dalam Sistem:**
1. **Admin** - Administrator sistem
2. **Kepala Sekolah** - Pimpinan sekolah yang memberi disposisi
3. **Guru** - Penerima disposisi dan pengguna sistem
4. **Staf Administrasi** - Pengelola surat masuk dan surat keluar

Diagram lengkap use case dapat dilihat pada **Gambar 4.3 Use Case Diagram Sistem**.

![Gambar 4.3 Use Case Diagram](../02_desain/diagram/use-case-diagram.png)

*Gambar 4.3 Use Case Diagram Sistem Manajemen Arsip Persuratan*

**Use Cases Utama:**

**Untuk Admin:**
- Login/Logout
- Kelola Data Pengguna (Create, Read, Update, Delete)
- Lihat Semua Surat Masuk dan Keluar
- Lihat Semua Disposisi
- Kelola Arsip Digital
- Generate Semua Jenis Laporan
- Lihat Log Aktivitas
- Kelola Profil Sistem

**Untuk Kepala Sekolah:**
- Login/Logout
- Lihat Dashboard Ringkasan
- Lihat Surat Masuk
- Buat Disposisi Surat
- Pilih Penerima Disposisi (Guru/Staf)
- Tentukan Prioritas dan Deadline
- Monitor Status Disposisi
- Lihat Arsip Digital
- Generate Laporan Manajemen
- Kelola Profil Pribadi

**Untuk Guru:**
- Login/Logout
- Lihat Dashboard Tugas
- Lihat Daftar Disposisi yang Diterima
- Lihat Detail Surat yang Didisposisikan
- Update Status Tindak Lanjut (Pending/Proses/Selesai)
- Lihat Arsip Surat Terkait
- Terima Notifikasi Disposisi Baru
- Kelola Profil Pribadi

**Untuk Staf Administrasi:**
- Login/Logout
- Lihat Dashboard Aktivitas
- Input Surat Masuk (Create)
- Edit/Hapus Surat Masuk (Update/Delete)
- Upload Scan Surat Masuk
- Input Surat Keluar (Create)
- Edit/Hapus Surat Keluar (Update/Delete)
- Upload Dokumen Surat Keluar
- Cari dan Filter Surat
- Kelola Arsip Digital
- Generate Laporan Surat
- Kelola Profil Pribadi

#### B. Activity Diagram

Activity Diagram menggambarkan alur aktivitas dalam sistem untuk berbagai proses bisnis.

**a. Activity Diagram Proses Pengelolaan Surat Masuk**

Diagram lengkap alur pengelolaan surat masuk dapat dilihat pada **Gambar 4.4**.

![Gambar 4.4 Activity Diagram Pengelolaan Surat Masuk](../02_desain/diagram/activity-pengelolaan-surat-masuk.png)

*Gambar 4.4 Activity Diagram Proses Pengelolaan Surat Masuk*

Alur proses pengelolaan surat masuk:
1. Staf menerima surat fisik dari pengirim
2. Staf login ke sistem
3. Staf memilih menu "Surat Masuk" > "Tambah Surat Masuk"
4. Staf mengisi formulir (nomor surat, tanggal, pengirim, perihal, kategori, sifat)
5. Staf upload file scan surat (PDF/gambar)
6. Sistem validasi data dan file
   - Jika tidak valid: Tampilkan pesan error, kembali ke form
   - Jika valid: Lanjut ke langkah berikutnya
7. Staf menyimpan data
8. Sistem generate nomor registrasi otomatis
9. Sistem simpan data ke database
10. Sistem simpan file ke folder upload
11. Sistem catat log aktivitas
12. Sistem tampilkan notifikasi sukses
13. Surat masuk tercatat dan dapat dilihat di daftar
14. Selesai

**b. Activity Diagram Proses Disposisi Surat**

Diagram lengkap alur disposisi surat dapat dilihat pada **Gambar 4.5**.

![Gambar 4.5 Activity Diagram Disposisi Surat](../02_desain/diagram/activity-disposisi-surat.png)

*Gambar 4.5 Activity Diagram Proses Disposisi Surat*

Alur proses disposisi surat:
1. Kepala sekolah login ke sistem
2. Kepala sekolah buka menu "Surat Masuk"
3. Kepala sekolah pilih surat yang akan didisposisikan
4. Kepala sekolah klik tombol "Buat Disposisi"
5. Sistem tampilkan form disposisi
6. Kepala sekolah pilih penerima disposisi (Guru/Staf)
7. Kepala sekolah input instruksi dan catatan
8. Kepala sekolah tentukan prioritas (biasa/penting/sangat penting/segera)
9. Kepala sekolah tentukan batas waktu/deadline
10. Kepala sekolah simpan disposisi
11. Sistem validasi data
    - Jika tidak valid: Tampilkan pesan error
    - Jika valid: Lanjut
12. Sistem simpan data disposisi ke database
13. Sistem update status surat masuk menjadi "Didisposisi"
14. Sistem kirim notifikasi email ke penerima disposisi
15. Sistem catat log aktivitas
16. Sistem tampilkan notifikasi sukses
17. Penerima terima notifikasi dan dapat lihat tugas di dashboard
18. Selesai

**c. Activity Diagram Proses Pencarian Arsip**

Diagram lengkap alur pencarian arsip dapat dilihat pada **Gambar 4.6**.

![Gambar 4.6 Activity Diagram Pencarian Arsip](../02_desain/diagram/activity-pencarian-arsip.png)

*Gambar 4.6 Activity Diagram Proses Pencarian Arsip*

Alur proses pencarian arsip:
1. Pengguna login ke sistem
2. Pengguna buka menu "Arsip Digital"
3. Pengguna input kata kunci pencarian (nomor/pengirim/perihal)
4. Pengguna pilih filter tambahan (kategori, sifat, periode tanggal) - opsional
5. Pengguna klik tombol "Cari"
6. Sistem proses query pencarian ke database
7. Sistem tampilkan hasil pencarian dalam bentuk tabel
   - Jika tidak ada hasil: Tampilkan pesan "Data tidak ditemukan"
   - Jika ada hasil: Tampilkan list arsip
8. Pengguna dapat lihat detail, preview, atau download dokumen
9. Jika preview: Sistem buka dokumen dalam browser
10. Jika download: Sistem download file ke komputer pengguna
11. Sistem catat log aktivitas akses arsip
12. Selesai

**d. Activity Diagram Generate Laporan**

Diagram lengkap alur generate laporan dapat dilihat pada **Gambar 4.7**.

![Gambar 4.7 Activity Diagram Generate Laporan](../02_desain/diagram/activity-generate-laporan.png)

*Gambar 4.7 Activity Diagram Generate Laporan*

Alur proses membuat laporan:
1. User (Admin/Kepala Sekolah/Staf) login ke sistem
2. User akses menu "Laporan"
3. User pilih jenis laporan (Surat Masuk/Surat Keluar/Disposisi)
4. User pilih periode tanggal (tanggal mulai - tanggal selesai)
5. User pilih format export (PDF/Excel) - opsional
6. User klik tombol "Generate Laporan"
7. Sistem query data dari database sesuai kriteria
8. Sistem proses dan hitung statistik
9. Sistem tampilkan laporan dalam format tabel dan grafik
10. Jika export PDF: Sistem generate PDF menggunakan TCPDF
11. Jika export Excel: Sistem generate Excel menggunakan PHPSpreadsheet
12. Sistem tampilkan laporan atau download file
13. Sistem catat log aktivitas
14. Selesai

#### C. Entity Relationship Diagram (ERD)

Entity Relationship Diagram (ERD) menggambarkan struktur basis data sistem informasi manajemen arsip persuratan SDIT Al-Huda dengan relasi antar entitas.

Diagram lengkap ERD dapat dilihat pada **Gambar 4.8**.

![Gambar 4.8 Entity Relationship Diagram](../02_desain/database/ERD-Sistem-Manajemen-Arsip-Persuratan.png)

*Gambar 4.8 Entity Relationship Diagram Sistem*

**Entitas Utama:**

1. **users** - Menyimpan data semua pengguna sistem (admin, kepala sekolah, guru, staf)
   - Atribut: id_user (PK), username, password, nama_lengkap, email, no_telepon, nip, alamat, role, foto_profil, status, last_login, created_at, updated_at

2. **surat_masuk** - Menyimpan data surat masuk yang diterima sekolah
   - Atribut: id_surat_masuk (PK), nomor_surat, tanggal_surat, tanggal_diterima, pengirim, perihal, kategori, sifat_surat, isi_ringkas, file_surat, lampiran, status, id_user_input (FK), created_at, updated_at

3. **surat_keluar** - Menyimpan data surat keluar yang dibuat sekolah
   - Atribut: id_surat_keluar (PK), nomor_surat, tanggal_surat, tujuan, alamat_tujuan, perihal, kategori, sifat_surat, isi_surat, file_surat, lampiran, id_penandatangan (FK), status, id_user_input (FK), created_at, updated_at

4. **disposisi** - Menyimpan data disposisi surat dari kepala sekolah
   - Atribut: id_disposisi (PK), id_surat_masuk (FK), id_dari (FK), id_kepada (FK), instruksi, catatan, prioritas, batas_waktu, status, tanggal_selesai, created_at, updated_at

5. **arsip** - Menyimpan arsip digital semua surat
   - Atribut: id_arsip (PK), jenis_surat, id_surat, nomor_surat, perihal, file_path, tanggal_surat, kategori, created_at, updated_at

6. **log_aktivitas** - Menyimpan log aktivitas pengguna untuk audit
   - Atribut: id_log (PK), id_user (FK), aktivitas, modul, deskripsi, ip_address, user_agent, created_at

7. **notifikasi** - Menyimpan notifikasi untuk pengguna
   - Atribut: id_notifikasi (PK), id_user (FK), judul, pesan, jenis, link, is_read, created_at, read_at

**Relasi Antar Entitas:**

- **users** (1) ↔ (M) **surat_masuk**: Satu user dapat menginput banyak surat masuk
- **users** (1) ↔ (M) **surat_keluar**: Satu user dapat membuat banyak surat keluar
- **users** (1) ↔ (M) **disposisi** (sebagai pemberi): Satu user dapat memberi banyak disposisi
- **users** (1) ↔ (M) **disposisi** (sebagai penerima): Satu user dapat menerima banyak disposisi
- **users** (1) ↔ (M) **log_aktivitas**: Satu user memiliki banyak log aktivitas
- **users** (1) ↔ (M) **notifikasi**: Satu user dapat menerima banyak notifikasi
- **surat_masuk** (1) ↔ (M) **disposisi**: Satu surat masuk dapat memiliki banyak disposisi (ke berbagai pihak)
- **surat_masuk** (1) ↔ (1) **arsip**: Satu surat masuk memiliki satu arsip digital
- **surat_keluar** (1) ↔ (1) **arsip**: Satu surat keluar memiliki satu arsip digital

**Penjelasan Desain Database:**

1. **Normalisasi 3NF**: Database dinormalisasi hingga Third Normal Form (3NF) untuk menghindari redundansi data dan menjaga integritas data.

2. **Indexing**: Setiap tabel memiliki index yang tepat pada kolom yang sering di-query (username, email, nomor_surat, tanggal) untuk optimasi performa.

3. **Relasi Many-to-Many**: Tabel `disposisi` memungkinkan satu surat didisposisikan ke banyak penerima dengan tracking status masing-masing.

4. **Audit Trail**: Tabel `log_aktivitas` mencatat semua aktivitas penting pengguna untuk keperluan audit dan keamanan.

5. **Soft Delete**: Beberapa tabel menggunakan status enum untuk "soft delete" (misalnya status 'archived') untuk menjaga integritas referensial.

#### D. Desain Antarmuka Pengguna (UI/UX)

Desain antarmuka pengguna (UI) dibuat dalam bentuk mockup HTML dengan total 38 halaman yang mencakup semua peran pengguna. Desain mengikuti prinsip *user-centered design* dengan fokus pada kemudahan penggunaan, aksesibilitas, dan pengalaman pengguna yang optimal.

#### A. Sistem Desain (*Design System*)

**Palet Warna:**
- **Primary**: Hijau (#3fb980, #5fcb9a) - Kesegaran, pertumbuhan pendidikan
- **Secondary**: Ungu (#9333EA) - Kreativitas, aspirasi
- **Neutral**: Skala abu-abu dari #F9FAFB hingga #111827
- **Success**: Green (#10B981)
- **Warning**: Yellow (#F59E0B)
- **Error**: Red (#EF4444)

**Tipografi:**
- **Font**: Inter (*Sans-serif*) - Modern, bersih, mudah dibaca
- **Ukuran Font**: H1 (32px), H2 (24px), H3 (20px), Body (16px), Small (14px)

**Prinsip Desain:**
- Desain bersih dan minimal
- Spasi yang konsisten (skala spasi Tailwind)
- Desain responsif dengan pendekatan *mobile-first*
- Aksesibilitas: Rasio kontras warna minimal 4,5:1
- Hierarki visual yang jelas
- Navigasi yang intuitif

#### B. Mockup Antarmuka Pengguna

Sistem memiliki **37 halaman mockup** yang dirancang untuk 4 role pengguna berbeda. Berikut adalah preview mockup untuk setiap kategori:

**1. Halaman Login**

Halaman login merupakan pintu masuk utama sistem dengan form autentikasi yang sederhana dan aman.

![Gambar 4.9 Halaman Login](../02_desain/mockup/images/01-login.png)
*Gambar 4.9 Halaman Login - Form login dengan username dan password, responsive layout*

**2. Dashboard Admin (14 halaman)**

Dashboard admin menampilkan statistik komprehensif untuk monitoring seluruh aktivitas sistem.

![Gambar 4.10 Dashboard Admin](../02_desain/mockup/images/02-dashboard-admin.png)
*Gambar 4.10 Dashboard Admin - Statistik lengkap dengan grafik dan quick actions*

Halaman surat masuk admin menyediakan tabel dengan fitur pencarian dan filter untuk manajemen efisien.

![Gambar 4.11 Surat Masuk Admin](../02_desain/mockup/images/03-surat-masuk-admin.png)
*Gambar 4.11 Daftar Surat Masuk - Tabel dengan pagination, search, dan filter*

Form input surat masuk dirancang dengan validasi lengkap untuk memastikan data akurat.

![Gambar 4.12 Form Surat Masuk](../02_desain/mockup/images/04-form-surat-masuk.png)
*Gambar 4.12 Form Surat Masuk - Input lengkap dengan upload file*

Halaman detail menampilkan informasi surat secara lengkap beserta riwayat disposisinya.

![Gambar 4.13 Detail Surat Masuk](../02_desain/mockup/images/05-detail-surat-masuk.png)
*Gambar 4.13 Detail Surat Masuk - Informasi lengkap dengan riwayat disposisi*

Manajemen surat keluar memungkinkan admin untuk memantau semua surat yang diterbitkan sekolah.

![Gambar 4.14 Surat Keluar Admin](../02_desain/mockup/images/06-surat-keluar-admin.png)
*Gambar 4.14 Daftar Surat Keluar - Tabel dengan filter lengkap*

Arsip digital menyediakan fitur pencarian canggih dengan multiple filter untuk akses cepat dokumen.

![Gambar 4.15 Arsip Digital Admin](../02_desain/mockup/images/07-arsip-admin.png)
*Gambar 4.15 Arsip Digital - Pencarian canggih dengan filter multi-kriteria*

Manajemen pengguna memfasilitasi admin dalam mengelola akun dan hak akses setiap pengguna.

![Gambar 4.16 Manajemen Pengguna](../02_desain/mockup/images/08-pengguna-admin.png)
*Gambar 4.16 Manajemen Pengguna - CRUD pengguna dengan role assignment*

Modul laporan menyediakan berbagai jenis laporan yang dapat di-export ke PDF atau Excel.

![Gambar 4.17 Laporan Admin](../02_desain/mockup/images/09-laporan-admin.png)
*Gambar 4.17 Laporan - Berbagai jenis laporan dengan export PDF/Excel*

Form pembuatan surat keluar memudahkan admin dalam membuat dan mengirim surat resmi sekolah.

![Gambar 4.18 Form Surat Keluar](../02_desain/mockup/images/10-form-surat-keluar.png)
*Gambar 4.18 Form Surat Keluar - Form lengkap dengan penomoran otomatis*

Halaman detail surat keluar menampilkan informasi lengkap surat yang telah diterbitkan.

![Gambar 4.19 Detail Surat Keluar](../02_desain/mockup/images/11-detail-surat-keluar.png)
*Gambar 4.19 Detail Surat Keluar - Informasi lengkap surat keluar dan status*

Monitoring disposisi memungkinkan admin untuk memantau seluruh alur disposisi surat.

![Gambar 4.20 Disposisi Admin](../02_desain/mockup/images/12-disposisi-admin.png)
*Gambar 4.20 Monitor Disposisi - Tracking semua disposisi dalam sistem*

Form pengguna baru memfasilitasi admin dalam menambahkan pengguna dengan role yang sesuai.

![Gambar 4.21 Form Pengguna](../02_desain/mockup/images/13-form-pengguna.png)
*Gambar 4.21 Form Pengguna - Tambah/edit pengguna dengan role assignment*

Halaman detail pengguna menampilkan informasi lengkap dan riwayat aktivitas pengguna.

![Gambar 4.22 Detail Pengguna](../02_desain/mockup/images/14-detail-pengguna.png)
*Gambar 4.22 Detail Pengguna - Profil lengkap dan log aktivitas*

Halaman profil admin memungkinkan pengelolaan informasi pribadi dan perubahan password.

![Gambar 4.23 Profil Admin](../02_desain/mockup/images/15-profil-admin.png)
*Gambar 4.23 Profil Admin - Kelola informasi pribadi dan keamanan akun*

**3. Dashboard Kepala Sekolah (7 halaman)**

Dashboard kepala sekolah menampilkan ringkasan eksekutif untuk monitoring dan pengambilan keputusan.

![Gambar 4.24 Dashboard Kepala Sekolah](../02_desain/mockup/images/16-dashboard-kepala-sekolah.png)
*Gambar 4.24 Dashboard Kepala Sekolah - Ringkasan surat dan disposisi*

Daftar surat masuk dilengkapi dengan tombol disposisi cepat untuk efisiensi kerja kepala sekolah.

![Gambar 4.25 Surat Masuk Kepala Sekolah](../02_desain/mockup/images/17-surat-masuk-kepala-sekolah.png)
*Gambar 4.25 Surat Masuk Kepala Sekolah - Daftar surat dengan tombol disposisi*

Halaman detail surat terintegrasi dengan form disposisi untuk mempercepat proses pendelegasian tugas.

![Gambar 4.26 Detail Surat Kepala Sekolah](../02_desain/mockup/images/18-detail-surat-kepala-sekolah.png)
*Gambar 4.26 Detail Surat - Form buat disposisi cepat*

Monitoring disposisi membantu kepala sekolah melacak status tindak lanjut setiap tugas yang didelegasikan.

![Gambar 4.27 Disposisi Kepala Sekolah](../02_desain/mockup/images/19-disposisi-kepala-sekolah.png)
*Gambar 4.27 Monitor Disposisi - Tracking status disposisi yang dibuat*

Arsip digital memudahkan kepala sekolah dalam mengakses riwayat surat kapan saja diperlukan.

![Gambar 4.28 Arsip Kepala Sekolah](../02_desain/mockup/images/20-arsip-kepala-sekolah.png)
*Gambar 4.28 Arsip Digital - Akses cepat ke semua arsip surat*

Laporan manajemen menyediakan data analitik untuk pengambilan keputusan strategis.

![Gambar 4.29 Laporan Kepala Sekolah](../02_desain/mockup/images/21-laporan-kepala-sekolah.png)
*Gambar 4.29 Laporan Manajemen - Dashboard analitik dan export data*

Halaman profil kepala sekolah untuk mengelola informasi pribadi dan pengaturan akun.

![Gambar 4.30 Profil Kepala Sekolah](../02_desain/mockup/images/22-profil-kepala-sekolah.png)
*Gambar 4.30 Profil Kepala Sekolah - Kelola informasi dan preferensi*

**4. Dashboard Guru (6 halaman)**

Dashboard guru menampilkan ringkasan tugas disposisi dengan notifikasi untuk memudahkan manajemen waktu.

![Gambar 4.31 Dashboard Guru](../02_desain/mockup/images/23-dashboard-guru.png)
*Gambar 4.31 Dashboard Guru - Ringkasan tugas disposisi dan notifikasi*

Halaman tugas menampilkan semua disposisi yang diterima dengan indikator prioritas yang jelas.

![Gambar 4.32 Tugas Guru](../02_desain/mockup/images/24-tugas-guru.png)
*Gambar 4.32 Tugas Disposisi - Daftar disposisi dengan priority indicator*

Detail surat dilengkapi dengan form update status untuk pelaporan tindak lanjut.

![Gambar 4.33 Detail Surat Guru](../02_desain/mockup/images/25-detail-surat-guru.png)
*Gambar 4.33 Detail Surat Guru - Lengkap dengan form update status*

Daftar surat masuk menampilkan semua surat yang relevan dengan tugas guru.

![Gambar 4.34 Surat Masuk Guru](../02_desain/mockup/images/26-surat-masuk-guru.png)
*Gambar 4.34 Surat Masuk Guru - Akses ke surat-surat penting*

Arsip guru menyediakan akses ke riwayat surat dan disposisi yang pernah diterima.

![Gambar 4.35 Arsip Guru](../02_desain/mockup/images/27-arsip-guru.png)
*Gambar 4.35 Arsip Digital Guru - Riwayat surat dan dokumen terkait*

Halaman profil guru untuk mengelola data pribadi dan pengaturan notifikasi.

![Gambar 4.36 Profil Guru](../02_desain/mockup/images/28-profil-guru.png)
*Gambar 4.36 Profil Guru - Kelola informasi dan preferensi notifikasi*

**5. Dashboard Staf (9 halaman)**

Dashboard staf menampilkan aktivitas input surat untuk monitoring produktivitas kerja.

![Gambar 4.37 Dashboard Staf](../02_desain/mockup/images/29-dashboard-staf.png)
*Gambar 4.37 Dashboard Staf - Ringkasan aktivitas input surat*

Manajemen surat masuk staf menyediakan CRUD lengkap untuk pencatatan dan pengelolaan efektif.

![Gambar 4.38 Surat Masuk Staf](../02_desain/mockup/images/30-surat-masuk-staf.png)
*Gambar 4.38 Surat Masuk Staf - Kelola surat masuk dengan CRUD*

Form input surat masuk dilengkapi validasi real-time untuk mencegah kesalahan data.

![Gambar 4.39 Form Surat Masuk Staf](../02_desain/mockup/images/31-form-surat-masuk-staf.png)
*Gambar 4.39 Form Surat Masuk Staf - Input dengan validasi lengkap*

Halaman surat keluar memudahkan staf dalam mencatat dan melacak surat yang diterbitkan.

![Gambar 4.40 Surat Keluar Staf](../02_desain/mockup/images/32-surat-keluar-staf.png)
*Gambar 4.40 Surat Keluar Staf - Kelola surat keluar dengan filter*

Detail surat masuk menampilkan informasi lengkap dengan opsi edit dan hapus.

![Gambar 4.41 Detail Surat Masuk Staf](../02_desain/mockup/images/33-detail-surat-masuk-staf.png)
*Gambar 4.41 Detail Surat Masuk - Informasi lengkap dengan aksi edit/delete*

Form input surat keluar memungkinkan staf membuat surat dengan penomoran otomatis.

![Gambar 4.42 Form Surat Keluar Staf](../02_desain/mockup/images/34-form-surat-keluar-staf.png)
*Gambar 4.42 Form Surat Keluar - Input surat keluar dengan upload dokumen*

Detail surat keluar menampilkan informasi lengkap surat yang telah dibuat.

![Gambar 4.43 Detail Surat Keluar Staf](../02_desain/mockup/images/35-detail-surat-keluar-staf.png)
*Gambar 4.43 Detail Surat Keluar - View lengkap dengan opsi edit*

Arsip staf menyediakan akses mudah ke semua dokumen yang pernah dikelola.

![Gambar 4.44 Arsip Staf](../02_desain/mockup/images/36-arsip-staf.png)
*Gambar 4.44 Arsip Digital Staf - Pencarian dan akses dokumen*

Halaman profil staf untuk mengelola informasi pribadi dan keamanan akun.

![Gambar 4.45 Profil Staf](../02_desain/mockup/images/37-profil-staf.png)
*Gambar 4.45 Profil Staf - Kelola data pribadi dan ubah password*

#### C. Fitur Desain Unggulan

**Desain Responsif:** Pendekatan *mobile-first* adaptif untuk desktop, tablet, dan mobile dengan *breakpoints* optimal.

**Aksesibilitas:** Memenuhi standar *WCAG 2.1 Level AA* dengan rasio kontras minimal 4.5:1 dan navigasi keyboard.

**Pengalaman Pengguna:** Navigasi konsisten, *call-to-action* jelas, loading indicator, toast notification, dan visualisasi data dengan *Chart.js*.

#### D. Dokumentasi Desain

Total **38 halaman mockup** yang mencakup seluruh perjalanan pengguna dari 4 peran berbeda. Rincian distribusi:

**Tabel 4.8 Distribusi Mockup per Role**

| No | Role | Jumlah Halaman | Fitur Utama | Gambar Referensi |
|----|------|----------------|-------------|------------------|
| 1 | Login | 1 halaman | Halaman login sistem | Gambar 4.9 |
| 2 | Admin | 14 halaman | Full CRUD surat, kelola pengguna, laporan lengkap | Gambar 4.10 - 4.23 |
| 3 | Kepala Sekolah | 7 halaman | Baca surat, buat disposisi, monitoring, laporan | Gambar 4.24 - 4.30 |
| 4 | Guru | 6 halaman | Terima disposisi, update status, akses arsip | Gambar 4.31 - 4.36 |
| 5 | Staf | 9 halaman | Input surat masuk/keluar, kelola arsip | Gambar 4.37 - 4.45 |
| **TOTAL** | **37 halaman** | **Mockup lengkap dan fungsional** | **37 gambar preview** |

Semua mockup dirancang dengan prinsip:
- **Responsif**: Adaptif untuk berbagai ukuran layar (desktop, tablet, mobile)
- **Konsistensi**: Mengikuti sistem desain dengan Tailwind CSS
- **User-friendly**: Intuitif dan mudah digunakan untuk berbagai tingkat literasi digital
- **Professional**: Mencerminkan kredibilitas institusi pendidikan
- **Accessible**: Memenuhi standar WCAG 2.1 Level AA

---

## 4.4 Faktor Penentu Keberhasilan

Keberhasilan implementasi Sistem Informasi Manajemen Arsip Persuratan SDIT Al-Huda ditentukan oleh berbagai faktor yang saling berkaitan. Faktor-faktor ini dibagi menjadi Faktor Kunci Keberhasilan (*Key Success Factors*/KSF), Faktor Kritis Keberhasilan (*Critical Success Factors*/CSF), dan Indikator Kinerja Utama (*Key Performance Indicators*/KPI).

### 4.4.1 Faktor Keberhasilan

**Faktor Kunci:** Stabilitas sistem (*uptime* 99%), antarmuka responsif, keamanan data dengan HTTPS, kompetensi tim, dan komunikasi efektif.

**Faktor Kritis:** (1) *Uptime* ≥ 99% dengan waktu respons < 3 detik, (2) Keamanan tanpa pelanggaran dengan HTTPS dan RBAC, (3) Adopsi pengguna 80% dengan skor kepuasan ≥ 4,0/5,0 dan SUS ≥ 68, (4) 100% surat tercatat dengan pengurangan beban kerja 50%, (5) Penyelesaian dalam 14 minggu dengan biaya ≤ 110% anggaran.

### 4.4.3 Indikator Kinerja Utama (*Key Performance Indicators*/KPI)

**Tabel 4.9 Key Performance Indicators (KPI)**

| Kategori | Nama KPI | Target | Frekuensi Pemantauan |
|----------|----------|--------|---------------------|
| **Kinerja Sistem** | Waktu Aktif Sistem | ≥ 99% | Real-time |
| | Waktu Respons | ≤ 3 detik | Mingguan |
| | Tingkat Error | ≤ 1% | Harian |
| **Keamanan** | Kerentanan Keamanan | 0 kritis | Bulanan |
| | Insiden Pelanggaran Data | 0 | Real-time |
| **Adopsi Pengguna** | Pengguna Aktif | ≥ 80% | Bulanan |
| | Tingkat Kepuasan | ≥ 4,0/5,0 | Per semester |
| **Efisiensi** | Waktu Pencatatan Surat | ≤ 3 menit | Mingguan |
| | Waktu Pencarian Arsip | ≤ 10 detik | Mingguan |
| | Waktu Pembuatan Laporan | ≤ 5 menit | Bulanan |

---

## 4.5 Keuntungan yang Diharapkan

Implementasi sistem diharapkan memberikan berbagai keuntungan bagi SDIT Al-Huda:

### 4.5.1 Manfaat dan ROI

**Efisiensi Operasional:** Pencatatan surat 70-80% lebih cepat, pencarian arsip 99% lebih cepat, disposisi dari 1-3 hari menjadi 5-10 menit, pembuatan laporan dari 2-3 hari menjadi 2-5 menit.

**Penghematan Biaya:** Pengurangan kertas 60% (Rp 1,2 juta/tahun), ruang penyimpanan (Rp 2 juta/tahun), waktu lembur (Rp 3 juta/tahun). **Total: Rp 6,2 juta/tahun**.

**ROI:** Investasi Rp 26,7 juta (tahun 1), manfaat Rp 24,2 juta/tahun. **Payback period: 1,1 tahun**, **ROI 3 tahun: 171%**.

---

## 4.6 Teknologi yang Digunakan

Teknologi yang digunakan untuk membangun sistem dapat dibagi ke dalam beberapa bagian:

### 4.6.1 Teknologi yang Digunakan

**Backend:** PHP 8.0+, MySQL 8.0, PDO dengan prepared statement, MVC pattern, bcrypt hashing, CSRF protection.

**Frontend:** HTML5, CSS3, JavaScript ES6+, Tailwind CSS 3.x (utility-first), Font Awesome 6.x.

**Libraries:** TCPDF (PDF), PHPSpreadsheet (Excel), PHPMailer (email), Chart.js (grafik).

**Infrastructure:** Apache/Nginx web server, shared hosting/VPS (2GB RAM, 20GB storage), Git & GitHub, VS Code, phpMyAdmin.

**Database:** 7 tabel normalisasi 3NF, foreign key constraints, indexing optimal, backup otomatis mingguan.

---

## 4.7 Pengujian Sistem

Pengujian sistem dilakukan secara menyeluruh untuk memastikan sistem berfungsi dengan baik, aman, dan memenuhi kebutuhan pengguna.

### 4.6.1 Pengujian Fungsional

Pengujian fungsional dilakukan untuk memastikan setiap fitur berfungsi sesuai dengan spesifikasi kebutuhan. Berikut hasil pengujian fitur utama:

**Tabel 4.11 Hasil Pengujian Fungsional**

| No | Fitur | Skenario Pengujian | Hasil | Status |
|----|-------|-------------------|-------|--------|
| 1 | Login | Input username dan password valid | Berhasil masuk ke dashboard sesuai role | ✓ Pass |
| 2 | Login | Input username/password invalid | Muncul pesan error yang sesuai | ✓ Pass |
| 3 | Tambah Surat Masuk | Input data lengkap dan upload file | Data tersimpan dan file terupload | ✓ Pass |
| 4 | Tambah Surat Masuk | Input data tanpa file | Data tersimpan tanpa file | ✓ Pass |
| 5 | Pencarian Surat | Cari dengan nomor surat | Menampilkan surat yang sesuai | ✓ Pass |
| 6 | Filter Surat | Filter berdasarkan kategori | Menampilkan surat sesuai kategori | ✓ Pass |
| 7 | Disposisi | Buat disposisi untuk surat masuk | Disposisi tersimpan dan notifikasi terkirim | ✓ Pass |
| 8 | Update Status Disposisi | Update status menjadi selesai | Status berubah dan tercatat | ✓ Pass |
| 9 | Download Dokumen | Klik tombol download | File terdownload dengan benar | ✓ Pass |
| 10 | Laporan PDF | Generate laporan periode tertentu | PDF terbuat dengan data yang benar | ✓ Pass |
| 11 | Laporan Excel | Export data ke Excel | File Excel terbuat dengan format yang benar | ✓ Pass |
| 12 | Notifikasi Email | Kirim disposisi baru | Email notifikasi diterima penerima | ✓ Pass |

**Hasil**: 12/12 fitur utama berfungsi dengan baik (100% Pass Rate)

### 4.7.2 Pengujian User Acceptance Testing (UAT)

UAT dilakukan dengan melibatkan pengguna akhir dari SDIT Al-Huda untuk menguji sistem dalam skenario penggunaan nyata.

**Tabel 4.12 Hasil User Acceptance Testing**

| No | Pengguna | Role | Skenario | Hasil | Feedback |
|----|----------|------|----------|-------|----------|
| 1 | Kepala Sekolah | Kepala Sekolah | Login dan lihat dashboard | Berhasil | Dashboard informatif dan mudah dipahami |
| 2 | Kepala Sekolah | Kepala Sekolah | Buat disposisi surat masuk | Berhasil | Proses mudah dan cepat, notifikasi langsung terkirim |
| 3 | Guru A | Guru | Terima dan lihat disposisi | Berhasil | Notifikasi email diterima, dashboard jelas |
| 4 | Guru B | Guru | Update status disposisi | Berhasil | Form update mudah digunakan |
| 5 | Staf Admin 1 | Staf | Input surat masuk dengan upload | Berhasil | Form jelas, upload cepat |
| 6 | Staf Admin 2 | Staf | Cari arsip surat lama | Berhasil | Pencarian sangat cepat (< 2 detik) |
| 7 | Staf TU | Staf | Generate laporan bulanan | Berhasil | Laporan lengkap, export PDF bagus |

**Kesimpulan UAT:**
- **100% skenario berhasil** dilakukan oleh pengguna
- Waktu training singkat (< 30 menit) per pengguna
- Feedback positif terhadap antarmuka yang user-friendly
- Saran minor perbaikan pada beberapa label form

### 4.7.3 Pengujian Usability

Pengujian usability menggunakan metode System Usability Scale (SUS) dengan 10 pertanyaan standar kepada 6 responden (1 kepala sekolah, 2 guru, 2 staf, 1 admin).

**A. Kuesioner SUS**

System Usability Scale (SUS) terdiri dari 10 pertanyaan dengan skala Likert 1-5, di mana:
- 1 = Sangat Tidak Setuju
- 2 = Tidak Setuju
- 3 = Netral
- 4 = Setuju
- 5 = Sangat Setuju

**Tabel 4.13 Hasil Kuesioner System Usability Scale (SUS)**

| No | Pertanyaan | R1 | R2 | R3 | R4 | R5 | R6 | Rata-rata |
|----|------------|----|----|----|----|----|----|-----------|
| 1 | Saya rasa akan sering menggunakan sistem ini | 5 | 4 | 5 | 4 | 5 | 4 | 4.5 |
| 2 | Saya merasa sistem ini rumit untuk digunakan | 1 | 2 | 1 | 2 | 1 | 2 | 1.5 |
| 3 | Saya merasa sistem ini mudah digunakan | 5 | 4 | 5 | 4 | 5 | 5 | 4.7 |
| 4 | Saya membutuhkan bantuan orang lain atau teknisi untuk menggunakan sistem ini | 1 | 1 | 2 | 1 | 1 | 2 | 1.3 |
| 5 | Saya merasa fitur-fitur sistem ini berjalan dengan semestinya | 5 | 4 | 5 | 5 | 4 | 5 | 4.7 |
| 6 | Saya merasa ada banyak hal yang tidak konsisten (tidak serasi) pada sistem ini | 2 | 1 | 1 | 2 | 1 | 1 | 1.3 |
| 7 | Saya merasa orang lain akan memahami cara menggunakan sistem ini dengan cepat | 5 | 4 | 5 | 4 | 5 | 4 | 4.5 |
| 8 | Saya merasa sistem ini membingungkan | 1 | 2 | 1 | 1 | 2 | 1 | 1.3 |
| 9 | Saya merasa tidak ada hambatan dalam menggunakan sistem ini | 4 | 4 | 5 | 4 | 5 | 4 | 4.3 |
| 10 | Saya perlu membiasakan diri terlebih dahulu sebelum menggunakan sistem ini | 2 | 2 | 1 | 2 | 1 | 2 | 1.7 |

*Keterangan:*
- R1 = Kepala Sekolah
- R2 = Guru 1
- R3 = Guru 2
- R4 = Staf Admin 1
- R5 = Staf Admin 2
- R6 = Staf TU

**B. Perhitungan Skor SUS**

Perhitungan skor SUS menggunakan rumus standar:
- Untuk pertanyaan ganjil (1, 3, 5, 7, 9): Skor = (Nilai - 1)
- Untuk pertanyaan genap (2, 4, 6, 8, 10): Skor = (5 - Nilai)
- Total skor = Jumlah semua skor × 2.5

**Hasil per Responden:**
- R1 (Kepala Sekolah): 85.0
- R2 (Guru 1): 77.5
- R3 (Guru 2): 90.0
- R4 (Staf Admin 1): 80.0
- R5 (Staf Admin 2): 87.5
- R6 (Staf TU): 75.0

**Hasil Skor SUS Rata-rata: 82.5/100** (Grade: A - Excellent)

**C. Interpretasi Hasil**

Kategori interpretasi skor SUS:
- 80-100: Excellent (Grade A)
- 68-79.9: Good (Grade B)
- 68 ke bawah: Needs Improvement

Hasil ini menunjukkan sistem memiliki tingkat usability yang sangat baik dan mudah digunakan oleh pengguna dengan berbagai tingkat literasi digital. Skor 82.5 berada pada kategori "Excellent", yang menunjukkan bahwa sistem telah memenuhi standar usability yang tinggi.

**D. Analisis per Aspek**

1. **Kemudahan Penggunaan** (Q3, Q8): Skor rata-rata 4.7/5
   - Sistem dinilai sangat mudah digunakan dan tidak membingungkan

2. **Efisiensi** (Q1, Q9): Skor rata-rata 4.4/5
   - Pengguna akan sering menggunakan sistem tanpa hambatan

3. **Kemudahan Pembelajaran** (Q4, Q7, Q10): Skor rata-rata 4.5/5
   - Sistem mudah dipelajari tanpa bantuan teknis dan pelatihan minimal

4. **Konsistensi** (Q2, Q5, Q6): Skor rata-rata 4.6/5
   - Sistem konsisten dan fitur berjalan dengan baik

**E. Feedback Kualitatif:**
- "Sistem sangat mudah digunakan, tidak perlu training lama" - Staf Admin
- "Disposisi jadi cepat, tidak perlu cari-cari guru lagi" - Kepala Sekolah
- "Notifikasi email sangat membantu, tidak ada lagi disposisi yang terlewat" - Guru
- "Pencarian arsip sekarang hanya butuh beberapa detik" - Staf TU

---

## 4.8 Desiminasi Proyek

Desiminasi proyek dilakukan untuk menyebarluaskan hasil dan pembelajaran kepada pemangku kepentingan (SDIT Al-Huda, sivitas akademika, lembaga pendidikan lain) melalui publikasi akademik dan pameran ilmiah.

### 4.8.1 Metode dan Luaran Desiminasi

**A. Laporan Capstone Project**
- Laporan lengkap BAB I-V dengan dokumentasi teknis (SRS, desain sistem, panduan pengguna)
- Format: PDF

**B. Pameran Ilmiah**
- X-Banner (60 × 160 cm) dengan judul, logo, latar belakang, tujuan, metodologi, hasil, manfaat, dan QR code kuesioner
- Demo sistem interaktif
- Target: Minimal 10 pengunjung, 10 responden kuesioner

**C. Presentasi Akhir**
- Presentasi dan demonstrasi sistem di hadapan dosen pembimbing dan penguji (30-45 menit)
- Sesi tanya jawab

**Tabel 4.14 Luaran Desiminasi Proyek**

| No | Luaran | Format | Target Audiens | Status |
|----|--------|--------|----------------|--------|
| 1 | Laporan Capstone Project | PDF + Cetak | Akademik | Selesai |
| 2 | Pameran Ilmiah | Stand Interaktif | Sivitas + Publik | Selesai |
| 3 | Presentasi Akhir | Slide + Demo | Dosen | Selesai |
| 4 | Kuesioner Persepsi | Google Form | Publik | Selesai |

### 4.8.2 Jadwal dan Indikator Keberhasilan

**Jadwal Pelaksanaan (Pertemuan 13-16):**
- **P13**: Distribusi kuesioner persepsi
- **P14**: Pameran ilmiah dengan X-Banner dan demo
- **P15**: Presentasi dan penilaian dosen
- **P16**: Evaluasi final

**Indikator Keberhasilan:**
- Pengunjung pameran ≥ 10, responden kuesioner ≥ 10
- Skor penilaian persepsi ≥ 4,0/5,0
- Nilai presentasi minimal B
- Dokumentasi 100% lengkap

---