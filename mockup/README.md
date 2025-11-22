# Mockup & Prototype - Sistem Manajemen Arsip Persuratan
## SDIT Al-Huda

---

## 📋 Deskripsi

Mockup dan prototype sistem manajemen arsip persuratan untuk SDIT Al-Huda. Sistem ini dirancang dengan 4 role pengguna yang berbeda dengan fitur yang disesuaikan untuk setiap role.

---

## 🎨 Branding

### Logo
- **File:** `assets/logo-sdit.png`
- **Ukuran:** 96x96px di mockup
- **Format:** PNG dengan background transparan

### Warna Utama
- **Primary:** `#3fb980` (Hijau SDIT)
- **Primary Dark:** `#2d8a5f` (Hover state)
- **Primary Light:** `#5fcb9a` (Border & accent)
- **Primary BG:** `#e8f7f0` (Background terang)

---

## 👥 Role & Akses

### 1. **Admin** (14 halaman)
**Akses Penuh:**
- Dashboard dengan statistik lengkap
- Kelola surat masuk & keluar
- Disposisi surat
- Arsip digital
- Laporan
- Kelola pengguna
- Profil

**Halaman:**
- `admin/dashboard-admin.html`
- `admin/surat-masuk.html`
- `admin/form-surat-masuk.html`
- `admin/detail-surat-masuk.html`
- `admin/surat-keluar.html`
- `admin/form-surat-keluar.html`
- `admin/detail-surat-keluar.html`
- `admin/disposisi.html`
- `admin/arsip.html`
- `admin/laporan.html`
- `admin/pengguna.html`
- `admin/form-pengguna.html`
- `admin/detail-pengguna.html`
- `admin/profil.html`

---

### 2. **Kepala Sekolah** (7 halaman)
**Akses:**
- Dashboard dengan overview
- Lihat surat masuk
- Buat disposisi
- Arsip digital
- Laporan
- Profil

**Halaman:**
- `kepala-sekolah/dashboard-kepala-sekolah.html`
- `kepala-sekolah/surat-masuk-kepala-sekolah.html`
- `kepala-sekolah/detail-surat-masuk-kepala-sekolah.html`
- `kepala-sekolah/disposisi-kepala-sekolah.html`
- `kepala-sekolah/arsip-kepala-sekolah.html`
- `kepala-sekolah/laporan-kepala-sekolah.html`
- `kepala-sekolah/profil-kepala-sekolah.html`

---

### 3. **Guru** (6 halaman)
**Akses:**
- Dashboard sederhana
- Lihat surat masuk
- Tugas disposisi
- Arsip
- Profil

**Halaman:**
- `guru/dashboard-guru.html`
- `guru/surat-masuk-guru.html`
- `guru/detail-surat-masuk-guru.html`
- `guru/tugas-guru.html`
- `guru/arsip-guru.html`
- `guru/profil-guru.html`

---

### 4. **Staf TU** (9 halaman)
**Akses:**
- Dashboard operasional
- Input surat masuk & keluar
- Arsip digital
- Profil

**Halaman:**
- `staf/dashboard-staf.html`
- `staf/surat-masuk-staf.html`
- `staf/form-surat-masuk-staf.html`
- `staf/detail-surat-masuk-staf.html`
- `staf/surat-keluar-staf.html`
- `staf/form-surat-keluar-staf.html`
- `staf/detail-surat-keluar-staf.html`
- `staf/arsip-staf.html`
- `staf/profil-staf.html`

---

## 📁 Struktur Folder

```
mockup/
├── assets/
│   ├── logo-sdit.png          # Logo SDIT Al-Huda
│   └── style.css              # Custom CSS branding
├── admin/                     # 14 halaman admin
├── kepala-sekolah/            # 7 halaman kepala sekolah
├── guru/                      # 6 halaman guru
├── staf/                      # 9 halaman staf
├── index.html                 # Halaman login
├── sitemap.html               # Sitemap navigasi
└── README.md                  # File ini
```

**Total: 38 halaman HTML**

---

## 🚀 Cara Menggunakan

### 1. Buka Mockup
```bash
# Buka dengan browser
# Windows
start mockup/index.html

# Mac/Linux
open mockup/index.html
```

### 2. Login
- **Username:** Bebas (mockup)
- **Password:** Bebas (mockup)
- **Role:** Pilih salah satu (admin, kepala_sekolah, guru, staf)

### 3. Navigasi
- Gunakan sidebar untuk navigasi antar halaman
- Semua link sudah berfungsi
- Button action sudah mengarah ke halaman yang benar

---

## 🛠️ Teknologi

- **HTML5** - Struktur halaman
- **Tailwind CSS** - Framework CSS (via CDN)
- **Font Awesome** - Icon library (via CDN)
- **JavaScript** - Interaksi sederhana (login redirect)

---

## ✨ Fitur Mockup

### ✅ Halaman Login
- Form login dengan role selection
- Redirect otomatis ke dashboard sesuai role
- Branding SDIT Al-Huda

### ✅ Dashboard
- Statistik cards
- Recent activity
- Quick actions
- Role-specific content

### ✅ Surat Masuk
- List surat dengan filter
- Detail surat lengkap
- Form input surat
- Status tracking

### ✅ Surat Keluar
- List surat keluar
- Form pembuatan surat
- Detail surat
- Status draft/terkirim

### ✅ Disposisi
- Form disposisi surat
- Riwayat disposisi
- Status tracking
- Prioritas & deadline

### ✅ Arsip Digital
- Grid view dokumen
- Search & filter
- View & download
- Statistik arsip

### ✅ Laporan
- Grafik statistik
- Export options
- Filter periode
- Summary cards

### ✅ Kelola Pengguna (Admin only)
- List pengguna
- Form tambah/edit
- Detail pengguna
- Status aktif/nonaktif

### ✅ Profil
- Informasi pengguna
- Edit profil
- Ganti password
- Foto profil

---

## 🎨 Customisasi

### Ganti Warna
Edit `assets/style.css`:
```css
:root {
    --primary-color: #3fb980;      /* Warna utama */
    --primary-dark: #2d8a5f;       /* Warna hover */
    --primary-light: #5fcb9a;      /* Warna border */
    --primary-bg: #e8f7f0;         /* Background */
}
```

### Ganti Logo
Replace file `assets/logo-sdit.png` dengan logo baru (recommended: 512x512px)

---

## 📝 Catatan

### Mockup Only
- Tidak ada backend/database
- Data adalah dummy/static
- Form tidak menyimpan data
- Login tidak tervalidasi

### Untuk Development
- Gunakan struktur ini sebagai referensi UI/UX
- Implementasikan dengan framework pilihan (Laravel, CodeIgniter, dll)
- Gunakan database schema yang sudah disediakan
- Tambahkan validasi & security

---

## 📊 Statistik

- **Total Halaman:** 38 HTML files
- **Total Role:** 4 (Admin, Kepala Sekolah, Guru, Staf)
- **Total Fitur:** 9 modul utama
- **Responsive:** Ya (mobile-friendly)
- **Browser Support:** Modern browsers (Chrome, Firefox, Safari, Edge)

---

## 🔗 Link Terkait

- **ERD Database:** `../ERD-Sistem-Manajemen-Arsip-Persuratan.md`
- **Database Schema SQL:** `../database-schema.sql`
- **DBDiagram Schema:** `../dbdiagram-schema.dbml`
- **Verifikasi Navigasi:** `../VERIFIKASI-NAVIGASI-MOCKUP.md`
- **Branding Update:** `../BRANDING-UPDATE.md`

---

## 👨‍💻 Development

### Next Steps:
1. ✅ Mockup selesai
2. ⏳ Setup backend framework
3. ⏳ Implementasi database
4. ⏳ Integrasi frontend-backend
5. ⏳ Testing & debugging
6. ⏳ Deployment

---

## 📞 Support

Untuk pertanyaan atau bantuan, hubungi tim development SDIT Al-Huda.

---

**Versi:** 1.0  
**Tanggal:** 21 November 2025  
**Status:** ✅ Complete & Ready for Development
