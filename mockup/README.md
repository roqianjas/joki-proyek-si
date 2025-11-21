# Mockup & Prototype
## Sistem Manajemen Arsip Persuratan SDIT Al-Huda

---

## 📋 Daftar Halaman

Mockup ini terdiri dari **13 halaman** yang mencakup semua fitur utama sistem:

### 1. **Halaman Autentikasi**
- `index.html` - Halaman Login dengan pilihan role (Admin, Kepala Sekolah, Guru, Staf)

### 2. **Dashboard (4 Role Berbeda)**
- `dashboard-admin.html` - Dashboard untuk Administrator
- `dashboard-kepala-sekolah.html` - Dashboard untuk Kepala Sekolah
- `dashboard-guru.html` - Dashboard untuk Guru
- `dashboard-staf.html` - Dashboard untuk Staf TU

### 3. **Modul Surat Masuk**
- `surat-masuk.html` - Daftar surat masuk dengan filter dan pencarian
- `form-surat-masuk.html` - Form input/edit surat masuk
- `detail-surat-masuk.html` - Detail lengkap surat masuk

### 4. **Modul Surat Keluar**
- `surat-keluar.html` - Daftar surat keluar dengan filter
- `form-surat-keluar.html` - Form input/edit surat keluar

### 5. **Modul Disposisi**
- `disposisi.html` - Form disposisi surat dan riwayat disposisi

### 6. **Modul Arsip Digital**
- `arsip.html` - Pengelolaan arsip digital dengan pencarian

### 7. **Modul Laporan**
- `laporan.html` - Laporan statistik dan export data

### 8. **Modul Pengguna**
- `pengguna.html` - Kelola pengguna sistem (khusus Admin)

### 9. **Profil**
- `profil.html` - Profil pengguna dan ubah password

---

## 🎨 Teknologi yang Digunakan

- **HTML5** - Struktur halaman
- **Tailwind CSS** - Framework CSS untuk styling (via CDN)
- **Font Awesome** - Icon library (via CDN)
- **JavaScript** - Interaksi dasar (navigasi login)

---

## 🚀 Cara Menggunakan

### 1. Buka Halaman Login
Buka file `index.html` di browser Anda.

### 2. Login dengan Role
Pilih role yang diinginkan dari dropdown:
- **Admin** → Akses penuh ke semua fitur
- **Kepala Sekolah** → Dashboard eksekutif, disposisi, laporan
- **Guru** → Lihat surat masuk, tugas disposisi
- **Staf** → Input surat masuk/keluar, arsip

### 3. Navigasi
Gunakan sidebar untuk navigasi antar halaman. Semua link sudah terhubung dan berfungsi.

---

## 📱 Fitur Utama

### ✅ Fitur yang Sudah Diimplementasikan dalam Mockup:

1. **Autentikasi Multi-Role**
   - Login dengan username, password, dan pilihan role
   - Redirect otomatis ke dashboard sesuai role

2. **Dashboard Dinamis**
   - Statistik real-time (surat masuk, keluar, disposisi, arsip)
   - Widget aktivitas terbaru
   - Notifikasi badge

3. **Manajemen Surat Masuk**
   - Daftar surat dengan pagination
   - Filter berdasarkan status
   - Pencarian surat
   - Form input lengkap dengan upload file
   - Detail surat dengan riwayat

4. **Manajemen Surat Keluar**
   - Daftar surat keluar
   - Status draft dan terkirim
   - Form input dengan penandatangan
   - Upload file PDF

5. **Sistem Disposisi**
   - Form disposisi dengan checkbox instruksi
   - Prioritas dan batas waktu
   - Riwayat disposisi
   - Status tracking

6. **Arsip Digital**
   - Grid view dokumen
   - Filter berdasarkan jenis dan tahun
   - Preview dan download file
   - Statistik ukuran arsip

7. **Laporan & Statistik**
   - Grafik statistik surat
   - Filter berdasarkan periode
   - Export ke Excel dan PDF
   - Laporan detail per bulan

8. **Kelola Pengguna** (Admin)
   - Daftar pengguna dengan role
   - Filter berdasarkan role
   - Status aktif/nonaktif
   - CRUD pengguna

9. **Profil Pengguna**
   - Edit informasi pribadi
   - Ubah password
   - Foto profil
   - Riwayat aktivitas

---

## 🎯 Perbedaan Dashboard Berdasarkan Role

### 1. **Admin** (Indigo Theme)
- Akses penuh ke semua modul
- Kelola pengguna
- Statistik lengkap
- Menu: Dashboard, Surat Masuk, Surat Keluar, Disposisi, Arsip, Laporan, Pengguna, Profil

### 2. **Kepala Sekolah** (Green Theme)
- Dashboard eksekutif
- Buat disposisi
- Lihat laporan
- Tanda tangan surat keluar
- Menu: Dashboard, Surat Masuk, Disposisi, Arsip, Laporan, Profil

### 3. **Guru** (Blue Theme)
- Lihat surat masuk
- Tugas disposisi
- Arsip terbatas
- Menu: Dashboard, Surat Masuk, Tugas Saya, Arsip, Profil

### 4. **Staf TU** (Purple Theme)
- Input surat masuk/keluar
- Kelola arsip
- Statistik operasional
- Menu: Dashboard, Surat Masuk, Surat Keluar, Arsip, Profil

---

## 🎨 Design System

### Color Palette:
- **Admin**: Indigo (#4F46E5)
- **Kepala Sekolah**: Green (#10B981)
- **Guru**: Blue (#3B82F6)
- **Staf**: Purple (#9333EA)

### Typography:
- Font Family: System Default (sans-serif)
- Heading: Bold, 2xl-3xl
- Body: Regular, sm-base

### Components:
- Cards dengan shadow
- Buttons dengan hover effect
- Tables dengan hover row
- Forms dengan focus ring
- Badges untuk status
- Icons dari Font Awesome

---

## 📊 Statistik Mockup

- **Total Halaman**: 13 halaman
- **Total Fitur**: 9 modul utama
- **Role Support**: 4 role berbeda
- **Responsive**: Ya (menggunakan Tailwind responsive classes)
- **Interactive**: Navigasi berfungsi penuh

---

## 🔗 Navigasi Antar Halaman

### Dari Login (`index.html`):
- Admin → `dashboard-admin.html`
- Kepala Sekolah → `dashboard-kepala-sekolah.html`
- Guru → `dashboard-guru.html`
- Staf → `dashboard-staf.html`

### Dari Dashboard:
- Sidebar menu mengarah ke halaman masing-masing
- Logout kembali ke `index.html`

### Dari Surat Masuk:
- Tombol "Tambah" → `form-surat-masuk.html`
- Icon "Eye" → `detail-surat-masuk.html`
- Icon "Edit" → `form-surat-masuk.html`

### Dari Detail Surat:
- Tombol "Buat Disposisi" → `disposisi.html`
- Tombol "Edit" → `form-surat-masuk.html`

---

## 📝 Catatan Pengembangan

### Yang Sudah Selesai:
✅ Semua halaman mockup (13 halaman)
✅ Navigasi antar halaman
✅ Design responsive
✅ Role-based dashboard
✅ Form input lengkap
✅ Tabel data dengan pagination
✅ Statistik dan grafik visual

### Yang Perlu Dikembangkan (Backend):
- [ ] Koneksi database
- [ ] API endpoints
- [ ] Autentikasi JWT
- [ ] Upload file handling
- [ ] Export PDF/Excel functionality
- [ ] Real-time notifications
- [ ] Search & filter logic
- [ ] Validation & error handling

---

## 🛠️ Rekomendasi Stack Teknologi untuk Development

### Frontend:
- React.js / Vue.js / Next.js
- Tailwind CSS (sudah digunakan)
- Axios untuk API calls
- React Router / Vue Router

### Backend:
- Node.js + Express.js / Laravel / CodeIgniter
- MySQL / PostgreSQL
- JWT untuk autentikasi
- Multer untuk upload file
- Node-cron untuk backup otomatis

### Deployment:
- Frontend: Vercel / Netlify
- Backend: VPS / Heroku / Railway
- Database: MySQL Cloud / Supabase
- File Storage: AWS S3 / Cloudinary

---

## 📞 Kontak & Support

Untuk pertanyaan atau bantuan terkait mockup ini, silakan hubungi tim pengembang.

---

**Dibuat untuk**: SDIT Al-Huda  
**Proyek**: Sistem Manajemen Arsip Persuratan  
**Tanggal**: November 2025  
**Versi**: 1.0
