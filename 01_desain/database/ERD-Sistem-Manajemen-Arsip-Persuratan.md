# Entity Relationship Diagram (ERD)
## Sistem Manajemen Arsip Persuratan SDIT Al-Huda

---

## Daftar Entitas

### 1. **users** (Pengguna)
Menyimpan data pengguna sistem dengan berbagai role.

| Kolom | Tipe Data | Keterangan |
|-------|-----------|------------|
| id_user | INT (PK) | Primary Key, Auto Increment |
| username | VARCHAR(50) | Username untuk login (UNIQUE) |
| password | VARCHAR(255) | Password terenkripsi |
| nama_lengkap | VARCHAR(100) | Nama lengkap pengguna |
| email | VARCHAR(100) | Email pengguna (UNIQUE) |
| no_telepon | VARCHAR(20) | Nomor telepon |
| alamat | TEXT | Alamat lengkap |
| role | ENUM | 'admin', 'kepala_sekolah', 'guru', 'staf' |
| foto_profil | VARCHAR(255) | Path file foto profil |
| status | ENUM | 'aktif', 'nonaktif' |
| created_at | TIMESTAMP | Waktu pembuatan akun |
| updated_at | TIMESTAMP | Waktu update terakhir |

---

### 2. **surat_masuk** (Surat Masuk)
Menyimpan data surat yang masuk ke sekolah.

| Kolom | Tipe Data | Keterangan |
|-------|-----------|------------|
| id_surat_masuk | INT (PK) | Primary Key, Auto Increment |
| nomor_surat | VARCHAR(50) | Nomor surat (UNIQUE) |
| tanggal_surat | DATE | Tanggal surat dibuat |
| tanggal_diterima | DATE | Tanggal surat diterima |
| pengirim | VARCHAR(200) | Nama instansi/lembaga pengirim |
| perihal | VARCHAR(255) | Perihal/subjek surat |
| kategori | ENUM | 'undangan', 'surat_edaran', 'permohonan', 'pemberitahuan', 'lainnya' |
| sifat_surat | ENUM | 'biasa', 'penting', 'segera', 'rahasia' |
| isi_ringkas | TEXT | Ringkasan isi surat |
| file_surat | VARCHAR(255) | Path file PDF surat |
| status | ENUM | 'pending', 'diproses', 'selesai' |
| id_user_input | INT (FK) | User yang menginput (Foreign Key ke users) |
| created_at | TIMESTAMP | Waktu input surat |
| updated_at | TIMESTAMP | Waktu update terakhir |

---

### 3. **surat_keluar** (Surat Keluar)
Menyimpan data surat yang keluar dari sekolah.

| Kolom | Tipe Data | Keterangan |
|-------|-----------|------------|
| id_surat_keluar | INT (PK) | Primary Key, Auto Increment |
| nomor_surat | VARCHAR(50) | Nomor surat (UNIQUE) |
| tanggal_surat | DATE | Tanggal surat dibuat |
| tujuan | VARCHAR(200) | Nama instansi/lembaga tujuan |
| alamat_tujuan | TEXT | Alamat lengkap tujuan |
| perihal | VARCHAR(255) | Perihal/subjek surat |
| kategori | ENUM | 'undangan', 'surat_edaran', 'permohonan', 'pemberitahuan', 'laporan', 'lainnya' |
| sifat_surat | ENUM | 'biasa', 'penting', 'segera', 'rahasia' |
| isi_surat | TEXT | Isi lengkap surat |
| file_surat | VARCHAR(255) | Path file PDF surat |
| id_penandatangan | INT (FK) | User yang menandatangani (Foreign Key ke users) |
| status | ENUM | 'draft', 'terkirim' |
| id_user_input | INT (FK) | User yang menginput (Foreign Key ke users) |
| created_at | TIMESTAMP | Waktu pembuatan surat |
| updated_at | TIMESTAMP | Waktu update terakhir |

---

### 4. **disposisi** (Disposisi Surat)
Menyimpan data disposisi/penugasan surat kepada pihak terkait.

| Kolom | Tipe Data | Keterangan |
|-------|-----------|------------|
| id_disposisi | INT (PK) | Primary Key, Auto Increment |
| id_surat_masuk | INT (FK) | Surat yang didisposisikan (Foreign Key ke surat_masuk) |
| id_dari | INT (FK) | User pemberi disposisi (Foreign Key ke users) |
| id_kepada | INT (FK) | User penerima disposisi (Foreign Key ke users) |
| instruksi | TEXT | Instruksi disposisi (checkbox: diketahui, ditindaklanjuti, dikoordinasikan, disiapkan, dihadiri) |
| catatan | TEXT | Catatan tambahan |
| prioritas | ENUM | 'biasa', 'penting', 'sangat_penting', 'segera' |
| batas_waktu | DATE | Batas waktu penyelesaian |
| status | ENUM | 'pending', 'proses', 'selesai' |
| tanggal_selesai | TIMESTAMP | Waktu penyelesaian disposisi |
| created_at | TIMESTAMP | Waktu pembuatan disposisi |
| updated_at | TIMESTAMP | Waktu update terakhir |

---

### 5. **arsip** (Arsip Digital)
Menyimpan referensi arsip dokumen digital.

| Kolom | Tipe Data | Keterangan |
|-------|-----------|------------|
| id_arsip | INT (PK) | Primary Key, Auto Increment |
| jenis_surat | ENUM | 'surat_masuk', 'surat_keluar' |
| id_surat | INT | ID surat (bisa dari surat_masuk atau surat_keluar) |
| nomor_surat | VARCHAR(50) | Nomor surat |
| perihal | VARCHAR(255) | Perihal surat |
| tanggal_surat | DATE | Tanggal surat |
| file_path | VARCHAR(255) | Path file dokumen |
| ukuran_file | INT | Ukuran file dalam KB |
| tahun_arsip | INT | Tahun pengarsipan |
| created_at | TIMESTAMP | Waktu pengarsipan |

---

### 6. **log_aktivitas** (Log Aktivitas)
Menyimpan riwayat aktivitas pengguna dalam sistem.

| Kolom | Tipe Data | Keterangan |
|-------|-----------|------------|
| id_log | INT (PK) | Primary Key, Auto Increment |
| id_user | INT (FK) | User yang melakukan aktivitas (Foreign Key ke users) |
| aktivitas | VARCHAR(255) | Deskripsi aktivitas |
| jenis_aktivitas | ENUM | 'login', 'logout', 'create', 'update', 'delete', 'disposisi', 'download' |
| tabel_terkait | VARCHAR(50) | Nama tabel yang terkait |
| id_terkait | INT | ID record yang terkait |
| ip_address | VARCHAR(45) | IP Address pengguna |
| created_at | TIMESTAMP | Waktu aktivitas |

---

### 7. **notifikasi** (Notifikasi)
Menyimpan notifikasi untuk pengguna.

| Kolom | Tipe Data | Keterangan |
|-------|-----------|------------|
| id_notifikasi | INT (PK) | Primary Key, Auto Increment |
| id_user | INT (FK) | User penerima notifikasi (Foreign Key ke users) |
| judul | VARCHAR(255) | Judul notifikasi |
| pesan | TEXT | Isi pesan notifikasi |
| jenis | ENUM | 'surat_masuk', 'disposisi', 'deadline', 'sistem' |
| link | VARCHAR(255) | Link terkait notifikasi |
| is_read | BOOLEAN | Status dibaca (0=belum, 1=sudah) |
| created_at | TIMESTAMP | Waktu notifikasi dibuat |

---

### 8. **kategori_surat** (Kategori Surat) - Optional
Menyimpan master data kategori surat yang dapat dikustomisasi.

| Kolom | Tipe Data | Keterangan |
|-------|-----------|------------|
| id_kategori | INT (PK) | Primary Key, Auto Increment |
| nama_kategori | VARCHAR(100) | Nama kategori |
| deskripsi | TEXT | Deskripsi kategori |
| jenis | ENUM | 'surat_masuk', 'surat_keluar', 'both' |
| is_active | BOOLEAN | Status aktif |
| created_at | TIMESTAMP | Waktu pembuatan |

---

## Relasi Antar Tabel

### Relasi One-to-Many (1:N)

1. **users → surat_masuk**
   - Satu user dapat menginput banyak surat masuk
   - FK: `id_user_input` di tabel `surat_masuk`

2. **users → surat_keluar**
   - Satu user dapat menginput banyak surat keluar
   - FK: `id_user_input` di tabel `surat_keluar`

3. **users → surat_keluar (penandatangan)**
   - Satu user dapat menandatangani banyak surat keluar
   - FK: `id_penandatangan` di tabel `surat_keluar`

4. **surat_masuk → disposisi**
   - Satu surat masuk dapat memiliki banyak disposisi
   - FK: `id_surat_masuk` di tabel `disposisi`

5. **users → disposisi (pemberi)**
   - Satu user dapat memberi banyak disposisi
   - FK: `id_dari` di tabel `disposisi`

6. **users → disposisi (penerima)**
   - Satu user dapat menerima banyak disposisi
   - FK: `id_kepada` di tabel `disposisi`

7. **users → log_aktivitas**
   - Satu user dapat memiliki banyak log aktivitas
   - FK: `id_user` di tabel `log_aktivitas`

8. **users → notifikasi**
   - Satu user dapat memiliki banyak notifikasi
   - FK: `id_user` di tabel `notifikasi`

---

## Diagram ERD (Representasi Visual)

```
┌─────────────────┐
│     users       │
├─────────────────┤
│ PK id_user      │
│    username     │
│    password     │
│    nama_lengkap │
│    email        │
│    role         │
│    status       │
└────────┬────────┘
         │
         │ 1:N (input surat masuk)
         │
         ▼
┌─────────────────────┐
│   surat_masuk       │
├─────────────────────┤
│ PK id_surat_masuk   │
│    nomor_surat      │
│    tanggal_surat    │
│    pengirim         │
│    perihal          │
│    kategori         │
│    sifat_surat      │
│    status           │
│ FK id_user_input    │
└──────────┬──────────┘
           │
           │ 1:N (disposisi)
           │
           ▼
┌─────────────────────┐
│    disposisi        │
├─────────────────────┤
│ PK id_disposisi     │
│ FK id_surat_masuk   │
│ FK id_dari          │───┐
│ FK id_kepada        │───┤ (ke users)
│    instruksi        │   │
│    prioritas        │   │
│    status           │   │
└─────────────────────┘   │
                          │
         ┌────────────────┘
         │
         │ 1:N (pemberi/penerima disposisi)
         │
         ▼
┌─────────────────┐
│     users       │
└─────────────────┘


┌─────────────────┐
│     users       │
└────────┬────────┘
         │
         │ 1:N (input surat keluar)
         │
         ▼
┌─────────────────────┐
│   surat_keluar      │
├─────────────────────┤
│ PK id_surat_keluar  │
│    nomor_surat      │
│    tanggal_surat    │
│    tujuan           │
│    perihal          │
│    kategori         │
│    status           │
│ FK id_user_input    │
│ FK id_penandatangan │───┐ (ke users)
└─────────────────────┘   │
                          │
         ┌────────────────┘
         │
         │ 1:N (penandatangan)
         │
         ▼
┌─────────────────┐
│     users       │
└─────────────────┘


┌─────────────────────┐
│   surat_masuk       │
│   surat_keluar      │
└──────────┬──────────┘
           │
           │ 1:1 (referensi)
           │
           ▼
┌─────────────────────┐
│      arsip          │
├─────────────────────┤
│ PK id_arsip         │
│    jenis_surat      │
│    id_surat         │
│    nomor_surat      │
│    file_path        │
│    tahun_arsip      │
└─────────────────────┘


┌─────────────────┐
│     users       │
└────────┬────────┘
         │
         │ 1:N
         │
         ▼
┌─────────────────────┐
│  log_aktivitas      │
├─────────────────────┤
│ PK id_log           │
│ FK id_user          │
│    aktivitas        │
│    jenis_aktivitas  │
└─────────────────────┘


┌─────────────────┐
│     users       │
└────────┬────────┘
         │
         │ 1:N
         │
         ▼
┌─────────────────────┐
│   notifikasi        │
├─────────────────────┤
│ PK id_notifikasi    │
│ FK id_user          │
│    judul            │
│    pesan            │
│    is_read          │
└─────────────────────┘
```

---

## Indeks Database (Untuk Optimasi)

### Indeks yang Disarankan:

1. **users**
   - INDEX pada `username`
   - INDEX pada `email`
   - INDEX pada `role`

2. **surat_masuk**
   - INDEX pada `nomor_surat`
   - INDEX pada `tanggal_diterima`
   - INDEX pada `status`
   - INDEX pada `kategori`

3. **surat_keluar**
   - INDEX pada `nomor_surat`
   - INDEX pada `tanggal_surat`
   - INDEX pada `status`

4. **disposisi**
   - INDEX pada `id_surat_masuk`
   - INDEX pada `id_kepada`
   - INDEX pada `status`

5. **arsip**
   - INDEX pada `nomor_surat`
   - INDEX pada `tahun_arsip`
   - INDEX pada `jenis_surat`

6. **log_aktivitas**
   - INDEX pada `id_user`
   - INDEX pada `created_at`

7. **notifikasi**
   - INDEX pada `id_user`
   - INDEX pada `is_read`

---

## Catatan Implementasi

### Keamanan:
1. Password harus di-hash menggunakan bcrypt atau algoritma yang aman
2. Implementasi role-based access control (RBAC)
3. Validasi input untuk mencegah SQL Injection
4. Enkripsi file surat yang bersifat rahasia

### Backup & Recovery:
1. Backup database secara berkala (harian/mingguan)
2. Backup file dokumen ke cloud storage
3. Implementasi soft delete untuk data penting

### Performance:
1. Gunakan pagination untuk list data
2. Implementasi caching untuk data yang sering diakses
3. Optimasi query dengan JOIN yang efisien
4. Compress file PDF sebelum upload

---

## Alur Data Utama

### 1. Alur Surat Masuk:
```
Input Surat Masuk (Staf TU) 
    → Validasi & Upload File 
    → Simpan ke Database 
    → Notifikasi ke Admin/Kepala Sekolah 
    → Disposisi (jika perlu) 
    → Arsip Digital
```

### 2. Alur Surat Keluar:
```
Draft Surat Keluar (Staf TU) 
    → Review & Edit 
    → Approval Penandatangan 
    → Kirim Surat 
    → Update Status 
    → Arsip Digital
```

### 3. Alur Disposisi:
```
Surat Masuk Diterima 
    → Kepala Sekolah/Admin Buat Disposisi 
    → Pilih Penerima & Instruksi 
    → Notifikasi ke Penerima 
    → Penerima Proses Tugas 
    → Update Status Selesai 
    → Log Aktivitas
```

---

**Catatan:** ERD ini dirancang untuk mendukung semua fitur yang ada dalam mockup dan prototype sistem manajemen arsip persuratan SDIT Al-Huda.
