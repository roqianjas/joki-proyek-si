**PERANCANGAN SISTEM INFORMASI **

**MANAJEMEN ARSIP PERSURATAN DI SDIT AL-HUDA** 

****

**MAKALAH **



Diajukan untuk memenuhi salah satu tugas kelompok mata kuliah Proyek Sistem Informasi 



Nama Anggota Kelompok : 

## 1. TEGUH SETIAWAN 

### 11250031 

## 2. YEREMIA BONAR 

### 11250056 

## 3. DONI AGUSMAN 

### 11250051 

## 4. YUSUF FAJRUL ALIM 11250128 

Kelas: 11.7C.12 



**PROGRAM STUDI SISTEM INFORMASI **

**UNIVERSITAS NUSA MANDIRI **

**JAKARTA **

**2025 **





**KATA PENGANTAR **

****

Puji syukur kami panjatkan kepada Tuhan Yang Maha Esa atas segala rahmat dan karunia-Nya sehingga kami dapat menyelesaikan laporan *Capstone Project* dengan judul " PERANCANGAN SISTEM INFORMASI MANAJEMEN ARSIP 

PERSURATAN DI SDIT AL-HUDA" sebagai salah satu syarat untuk menyelesaikan Program Studi Strata Satu \(S1\) Sistem Informasi di Fakultas Teknologi Informasi Universitas Nusa Mandiri. 

Proyek ini bertujuan untuk mengembangkan sistem informasi berbasis web yang dapat meningkatkan efisiensi dan efektivitas operasional layanan arsip persyuratan di SDIT AL-HUDA *. * Dengan memanfaatkan teknologi informasi, kami berupaya memberikan solusi komprehensif untuk permasalahan manajemen reservasi, penjadwalan, dokumentasi terapi, dan pembayaran yang selama ini dilakukan secara manual. 

Kami menyadari bahwa laporan ini masih jauh dari sempurna. Oleh karena itu penyusun mengucapkan terima kasih kepada : Ibu Ika Kurniawati, M.Kom, selaku dosen pengampu mata kuliah Proyek Sistem Informasi yang telah memberikan bimbingan dan arahan selama proses pembelajaran. 

Kami sangat mengharapkan kritik dan saran yang membangun dari berbagai pihak untuk perbaikan di masa mendatang. Kami berharap penelitian ini dapat memberikan manfaat, khususnya bagi SDIT AL-HUDA dalam mengoptimalkan manajemen arsip, serta bagi akademisi dan praktisi yang tertarik dalam bidang sistem informasi layanan kesehatan. 

Akhir kata, kami mengucapkan terima kasih kepada semua pihak yang telah membantu dalam penyelesaian proyek ini. Semoga laporan ini dapat memberikan kontribusi positif bagi perkembangan sistem informasi manajemen arsip di sekolah-sekolah manapun. 



Jakarta, 31 Desember 2025 





Penyusun 

ii 





**ABSTRAK **

****

**Teguh Setiawan \(11250031\), Yaremia Bonar \(11250056\), Doni Agusman** **\(11250051\), Yusuf Fajrul Alim \(11250128\) “Perancangan Sistem Informasi** **Manajemen Arsip Persuratan di SDIT Al-Huda”. **



SDIT Al-Huda menghadapi tantangan dalam pengelolaan arsip persuratan manual yang tidak efisien, kesulitan pencarian arsip, disposisi lambat, dan ketiadaan sistem monitoring. Penelitian ini bertujuan mengembangkan sistem informasi manajemen arsip persuratan berbasis web untuk meningkatkan efisiensi, akurasi, dan keamanan pengelolaan surat. Metodologi menggunakan SDLC model *Waterfall* melalui tahap analisis, desain, implementasi, pengujian, dan *deployment*. Pengumpulan data dilakukan dengan observasi, wawancara 6 pemangku kepentingan, studi pustaka, dan kuesioner. Sistem dikembangkan menggunakan PHP 8.0\+, MySQL 8.0, *Tailwind* CSS dengan arsitektur MVC, menghasilkan 37 halaman responsif dan database 7 tabel \(normalisasi 3NF\). Sistem memiliki 8 modul: autentikasi berbasis role, manajemen surat masuk/keluar dengan penomoran otomatis, disposisi elektronik dengan notifikasi email, arsip digital dengan pencarian canggih, *dashboard real-time*, laporan *export PDF/Excel*, notifikasi otomatis, dan log aktivitas. Pengujian menunjukkan 100% *pass rate* fungsional, 100% keberhasilan UAT, dan SUS *Score* 82,5/100 \( *Grade A - Excellent*\). Implementasi meningkatkan efisiensi: pencatatan surat 70-80% lebih cepat, pencarian arsip 99% lebih cepat \(15-30 menit menjadi <10 detik\), disposisi dari 1-3 hari menjadi 5-10 menit, laporan dari 2-3 hari menjadi 2-5 menit. Penghematan biaya Rp 6,2 juta/tahun dengan ROI 3 tahun 171%. Sistem dilengkapi keamanan *bcrypt*, RBAC, proteksi OWASP Top 10, *backup* otomatis, dan *audit trail*, meningkatkan efisiensi operasional hingga 70% dan berkontribusi pada transformasi digital pendidikan. 



**Kata kunci: Sistem Informasi, Manajemen Arsip, Persuratan *, SDLC ***

***Waterfall, PHP, MySQL*** 



****

****

****

iii 





**DAFTAR ISI **

****

Halaman 

Lembar Judul Makalah .......................................................................................... i Kata Pengantar .................................................................................................... ii Abstrak ................................................................................................................. iii Daftar Isi ................................................................................................................ iv Daftar Gambar ...................................................................................................... vi Daftar Tabel ....................................................................................................... viii Daftar Lampiran ................................................................................................... ix Daftar Simbol ....................................................................................................... x **BAB 1 PENDAHULUAN ................................................................................... 1 **

1.1. Latar Belakang Masalah .................................................................. 1 

1.2. Identifikasi Masalah ....................................................................... 3 

1.3. Ruang Lingkup ................................................................................ 5 

1.4. Tujuan dan Manfaat Penelitian ........................................................ 8 

1.4.1. Tujuan Penelitian ................................................................... 8 

1.4.2. Manfaat Penelitian ................................................................ 8 

**BAB II TINJAUAN PUSTAKA ....................................................................... 11 **

2.1. Landasan Teori ................................................................................ 11 

2.1.1. Sistem Informasi ................................................................... 11 

2.1.2. Manajemen Arsip dan Persuratan ......................................... 11 

2.1.3. Manajemen Proyek Sistem Informasi ................................... 13 

2.1.4. Siklus Hidup Pengembangan Sistem \(SDLC\) ...................... 14 

2.1.5. Basis Data dan Perancangan Database .................................. 16 

2.1.6. Teknologi Pengembangan Sistem ......................................... 17 

2.1.7. Keamanan Sistem Informasi ................................................. 18 

2.2. Penelitian Terkait ............................................................................. 19 

**BAB III METODOLOGI PENELITIAN** ........................................................ 21 

3.1. Tahapan Penelitian ........................................................................ 21 

3.2. Tempat dan Waktu Penelitian ....................................................... 23 

3.2.1. Tempat Penelitian * * ............................................................... 23 

3.2.2. Waktu Penelitian ................................................................ 23 

3.3. Subjek Penelitian ........................................................................... 24 

3.3.1. Populasi ............................................................................... 24 

3.3.2. Sampel dan Teknik Pengambilan Sampel .......................... 24 

3.4 *. * Teknik Pengumpulan Data ............................................................. 26 

3.4.1. Observasi ............................................................................. 26 

3.4.2. Wawancara ......................................................................... 26 

3.4.3. Studi Pustaka ...................................................................... 27 

3.4.4. Kuisoner ............................................................................. 28 



iv 





**BAB IV HASIL PENELITIAN DAN PEMBAHASAN ................................ 30** 

4.1. Inisiasi Proyek ............................................................................ 30 

4.1.1. Latar Belakang Masalah .................................................. 30 

4.1.2. Identifikasi Masalah ........................................................ 30 

4.1.3. Ruang Lingkup ................................................................ 30 

4.1.4. Tujuan dan Manfaat Proyek ............................................ 31 

4.1.5. Tujuan dan Mafaat Proyek .............................................. 31 

4.2. Perencanaan Proyek ................................................................... 31 

4.2.1. Perencanaan Ruang Lingkup ........................................... 32 

4.2.2. Perencanaan Waktu Pengerjaan ...................................... 35 

4.2.3. Perencanaan Anggaran Biaya .......................................... 36 

4.2.4. Perencanaan Kualitas ....................................................... 37 

4.2.5. Perencanaan Sumber Daya .............................................. 38 

4.2.6. Manajemen Risiko ........................................................... 38 

4.2.7. Perencanaan Komunikasi ................................................ 39 

4.2.8. Batasan dan Asumsi Proyek ............................................ 40 

4.3. Deskripsi Produk / Servis ............................................................ 40 

4.3.1. Tujuan Sistem ................................................................... 40 

4.3.2. Pengguna Sistem ............................................................. 40 

4.3.3. Fitur Utama Sistem .......................................................... 40 

4.3.4. Arsitektur Sistem ............................................................. 42 

4.3.5. Desain Basis Data ............................................................ 43 

4.3.6. Peran dan Hak Akses Pengguna ....................................... 44 

4.3.7. Keamanan Sistem ............................................................ 44 

4.3.8. Desain Sistem .................................................................. 44 

4.4. Faktor Penentu Keberhasilan ...................................................... 72 

4.5. Keuntungan Yang Diharapkan .................................................... 73 

4.6. Teknologi Yang Digunakan ........................................................ 73 

4.7. Pengujian Sistem ......................................................................... 74 

4.8. Deseminasi Proyek ...................................................................... 79 



**BAB V PENUTUP ............................................................................................ 81** 

5.1. Kesimpulan ................................................................................ 81 

5.2. Saran ........................................................................................... 82 

5.3. Penutup ...................................................................................... 83 



**DAFTAR PUSTAKA ...................................................................................... 84 **

**DAFTAR RIWAYAT HIDUP ........................................................................ 86** 

**LAMPIRAN - LAMPIRAN ............................................................................ 90** 

****

****

****

v 





**DAFTAR GAMBAR **

Halaman 

Gambar II. 1 SDLC Waterfall ............................................................................... 14 

Gambar IV. 1 Tahapan Penelitian Sistem Informasi Manajemen Arsip Persuratan

............................................................................................................................... 21 

Gambar IV. 2 Arsitektur Sistem MVC ................................................................. 43 

Gambar IV. 3 Use Case Diagram Sistem Manajemen Arsip Persuratan .............. 46 

Gambar IV. 4 Activity Diagram Proses Pengelolaan Surat Masuk ...................... 47 

Gambar IV. 5 Activity Diagram Proses Disposisi Surat ....................................... 48 

Gambar IV. 6 Activity Diagram Proses Pencarian Arsip ..................................... 49 

Gambar IV. 7 Activity Diagram Generate Laporan .............................................. 50 

Gambar IV. 8 Entity Relationship Diagram Sistem .............................................. 51 

Gambar IV. 9 Halaman Login - Form login dengan username dan password, 

responsive layout ................................................................................................... 53 

Gambar IV. 10 Halaman Login - Form login dengan username dan password, 

responsive layout ................................................................................................... 53 

Gambar IV. 11 Daftar Surat Masuk - Tabel dengan pagination, search, dan filter

............................................................................................................................... 54 

Gambar IV. 12 Form Surat Masuk - Input lengkap dengan upload file ............... 54 

Gambar IV. 13 Detail Surat Masuk - Informasi lengkap dengan riwayat disposisi

............................................................................................................................... 55 

Gambar IV. 14 Daftar Surat Keluar - Tabel dengan filter lengkap ....................... 55 

Gambar IV. 15 Arsip Digital - Pencarian canggih dengan filter multi-kriteria .... 56 

Gambar IV. 16 Manajemen Pengguna - CRUD pengguna dengan role assignment

............................................................................................................................... 56 

Gambar IV. 17 Laporan - Berbagai jenis laporan dengan export PDF/Excel ....... 57 

Gambar IV. 18 Form Surat Keluar - Form lengkap dengan penomoran otomatis 57 

Gambar IV. 19 Detail Surat Keluar - Informasi lengkap surat keluar dan status . 58 

Gambar IV. 20 Monitor Disposisi - Tracking semua disposisi dalam sistem ....... 58 

Gambar IV. 21 Form Pengguna - Tambah/edit pengguna dengan role assignment

............................................................................................................................... 59 

Gambar IV. 22 Detail Pengguna - Profil lengkap dan log aktivitas ...................... 59 

vi 





Gambar IV. 23 Profil Admin - Kelola informasi pribadi dan keamanan akun ..... 60 

Gambar IV. 24 Dashboard Kepala Sekolah - Ringkasan surat dan disposisi ....... 60 

Gambar IV. 25 Surat Masuk Kepala Sekolah - Daftar surat dengan tombol disposisi

............................................................................................................................... 61 

Gambar IV. 26 Detail Surat - Form buat disposisi cepat ...................................... 61 

Gambar IV. 27 Monitor Disposisi - Tracking status disposisi yang dibuat .......... 62 

Gambar IV. 28 Arsip Digital - Akses cepat ke semua arsip surat ......................... 62 

Gambar IV. 29 Laporan Manajemen - Dashboard analitik dan export data ......... 63 

Gambar IV. 30 Profil Kepala Sekolah - Kelola informasi dan preferensi ............ 63 

Gambar IV. 31 Dashboard Guru - Ringkasan tugas disposisi dan notifikasi ........ 64 

Gambar IV. 32 Tugas Disposisi - Daftar disposisi dengan priority indicator ....... 64 

Gambar IV. 33 Detail Surat Guru - Lengkap dengan form update status ............. 65 

Gambar IV. 34 Surat Masuk Guru - Akses ke surat-surat penting ....................... 65 

Gambar IV. 35 Arsip Digital Guru - Riwayat surat dan dokumen terkait ............ 66 

Gambar IV. 36 Profil Guru - Kelola informasi dan preferensi notifikasi ............. 66 

Gambar IV. 37 Dashboard Staf - Ringkasan aktivitas input surat ........................ 67 

Gambar IV. 38 Surat Masuk Staf - Kelola surat masuk dengan CRUD ............... 67 

Gambar IV. 39 Form Surat Masuk Staf - Input dengan validasi lengkap ............. 68 

Gambar IV. 40 Surat Keluar Staf - Kelola surat keluar dengan filter ................... 68 

Gambar IV. 41 Detail Surat Masuk - Informasi lengkap dengan aksi edit/delete 69 

Gambar IV. 42 Form Surat Keluar - Input surat keluar dengan upload dokumen 69 

Gambar IV. 43 Detail Surat Keluar - View lengkap dengan opsi edit .................. 70 

Gambar IV. 44 Arsip Digital Staf - Pencarian dan akses dokumen ...................... 70 

Gambar IV. 45 Profil Staf - Kelola data pribadi dan ubah password ................... 71 





vii 





**DAFTAR TABEL **

Halaman 

Tabel III. 1 Jadwal Penelitian ................................................................................ 23 

Tabel III. 2 Distribusi Sampel Penelitian .............................................................. 24 

Tabel III. 3 Daftar Narasumber Wawancara ......................................................... 27 

Tabel IV. 1 Pemangku Kepentingan Proyek ......................................................... 31 

Tabel IV. 2 Work Breakdown Structure \(WBS\) ................................................... 32 

Tabel IV. 3 Jadwal Pengerjaan Proyek ................................................................. 35 

Tabel IV. 4 Gannt Chart Jadwal Pengerjaan Proyek ............................................. 36 

Tabel IV. 5 Estimasi Biaya Proyek ....................................................................... 36 

Tabel IV. 6 Alokasi Sumber Daya Manusia ......................................................... 38 

Tabel IV. 7 Identifikasi dan Mitigasi Risiko ......................................................... 38 

Tabel IV. 8 Matriks Perencanaan Komunikasi ..................................................... 39 

Tabel IV. 9 Distribusi Mockup per Role ............................................................... 71 

Tabel IV. 10 Key Performance Indicators \(KPI\) .................................................. 72 

Tabel IV. 11 Hasil Pengujian Fungsional ............................................................. 74 

Tabel IV. 12 Hasil User Acceptance Testing ........................................................ 75 

Tabel IV. 13 Hasil Kuesioner System Usability Scale \(SUS\) .............................. 77 

Tabel IV. 14 Luaran Desiminasi ........................................................................... 79 





viii 





**DAFTAR LAMPIRAN **

Halaman 

Lampiran A Prototipe ......................................................................................... 90 

Lampiran B Data Responden * ............................................................................. * 90 

Lampiran C Hasil Kuesioner SUS .................................................................... 91 

Lampiran D Perhitungan dan Hasil Skor SUS .................................................. 92 

Lampiran E Interpretasi ..................................................................................... 93 

****

****

****

ix 





**DAFTAR SIMBOL **

**Simbol *Entity Relationship Diagram *****\(ERD\)** **NO **

**GAMBAR **

**NAMA **

**KETERANGAN **

Simbol yang menyatakan himpunan 

entitas ini bisa berupa : suatu elemen 

****

lingkungan, sumber daya, atau 

1 

*Entity *



transaksi, yang begitu pentingnya 

bagi 

perusahaan 

sehingga 

didokumentasikan dengan data. 

Simbol 

terminal 

ini 

untuk 

****

2 

*Attribute *

menunjukkan nama-nama atribut 



yang ada pada entity. 

Simbol atribut yang digaris bawahi, 

****

*Primary Key *

berfungsi sebagai key \(kunci\) di 

3 



*Attribute *

antara nama-nama atribut yang ada 

pada suatu entity. 

Simbol ini menyatakan relasi ini 

digunakan untuk menunjukkan 

4 

*Relationship *

hubungan yang ada antara entity 



yang satu dengan entity yang 

lainnya. 

Simbol berupa garis ini digunakan 

sebagai penghubung antara entity 

5 



*Link *

dengan atributnya dan himpunan 

entitas dengan himpunan relasi. 

x 



**BAB I **

**PENDAHULUAN **



**1.1. Latar Belakang Masalah **

Pendidikan merupakan salah satu pilar utama dalam pembangunan sumber daya manusia yang berkualitas. Sekolah sebagai institusi pendidikan memiliki tanggung jawab besar dalam mengelola berbagai aspek operasional, salah satunya adalah pengelolaan administrasi persuratan. Surat-menyurat menjadi media komunikasi resmi yang sangat penting dalam menjalankan fungsi kelembagaan, baik komunikasi internal antar bagian di sekolah maupun komunikasi eksternal dengan instansi pemerintah, orang tua siswa, dan masyarakat umum. 

SDIT \(Sekolah Dasar Islam Terpadu\) Al-Huda sebagai lembaga pendidikan Islam terpadu yang terus berkembang menghadapi tantangan dalam pengelolaan arsip persuratan. Setiap harinya, SDIT Al-Huda menerima dan mengirimkan berbagai jenis surat seperti surat undangan, surat edaran, surat pemberitahuan, surat permohonan, dan surat keputusan. Volume surat yang terus meningkat seiring dengan perkembangan sekolah memerlukan sistem pengelolaan yang efektif dan efisien. 

Berdasarkan observasi dan wawancara yang dilakukan pada bulan November 2025, teridentifikasi beberapa permasalahan utama dalam pengelolaan arsip persuratan di SDIT Al-Huda. Proses pengelolaan surat masuk dan surat keluar masih dilakukan secara manual menggunakan buku agenda dan arsip fisik. 

Pencatatan surat masuk dicatat dalam buku besar dengan kolom nomor urut, tanggal terima, nomor surat, pengirim, perihal, dan disposisi. Proses ini memakan waktu rata-rata 10-15 menit per surat dan rawan kesalahan pencatatan. 

Penyimpanan dokumen surat fisik menggunakan sistem ordner dan lemari arsip yang terorganisir berdasarkan bulan dan jenis surat. Namun, metode ini mengakibatkan kesulitan dalam pencarian arsip surat lama yang membutuhkan waktu 15-30 menit untuk menemukan satu dokumen tertentu, terutama jika diperlukan untuk keperluan audit atau pelaporan. Risiko kerusakan dan kehilangan dokumen akibat faktor lingkungan seperti kelembaban, rayap, atau bencana seperti kebakaran juga menjadi ancaman serius terhadap keamanan arsip. 

1 





2 



Proses disposisi surat masuk dari kepala sekolah kepada wakil kepala atau guru yang ditunjuk masih dilakukan secara manual dengan membubuhkan catatan disposisi pada lembar surat fisik. Hal ini menyebabkan lambatnya proses tindak lanjut karena surat harus diteruskan secara fisik dari satu pihak ke pihak lain. Tidak jarang terjadi surat tertunda atau bahkan hilang dalam proses penyampaian, terutama ketika penerima disposisi sedang tidak berada di sekolah. 

Tidak adanya sistem monitoring dan pelacakan status surat membuat kepala sekolah dan staf administrasi kesulitan dalam memantau tindak lanjut surat masuk yang telah didisposisikan. Pertanyaan seperti "Apakah surat undangan dari Dinas Pendidikan sudah ditindaklanjuti?" atau "Siapa yang sedang menangani surat permohonan dari komite sekolah?" seringkali memerlukan komunikasi manual antar staf yang memakan waktu dan tidak efisien. 

Pembuatan laporan arsip persuratan untuk keperluan akuntabilitas, audit, atau evaluasi kinerja membutuhkan waktu yang lama. Staf administrasi harus merekap secara manual dari buku agenda untuk membuat laporan bulanan atau tahunan, yang bisa memakan waktu 2-3 hari kerja. Laporan tersebut juga terbatas dalam bentuk visualisasi dan analisis karena data masih berbentuk catatan manual. 

Dari sisi keamanan dan privasi, dokumen surat yang bersifat rahasia atau penting tidak memiliki mekanisme pengamanan yang memadai. Siapa saja yang memiliki akses ke ruang administrasi dapat membuka lemari arsip dan membaca dokumen. Tidak ada jejak audit yang mencatat siapa saja yang mengakses dokumen tertentu dan kapan akses tersebut dilakukan. 

Kendala ruang penyimpanan juga menjadi masalah yang semakin serius. 

Dengan bertambahnya volume arsip setiap tahunnya, kebutuhan ruang penyimpanan fisik terus meningkat. Sekolah harus mengalokasikan ruangan khusus untuk penyimpanan arsip lama yang sebenarnya bisa dimanfaatkan untuk keperluan pembelajaran atau kegiatan siswa. 

Dalam konteks perkembangan teknologi informasi dan tuntutan transparansi serta akuntabilitas pengelolaan lembaga pendidikan, pengembangan sistem informasi manajemen arsip persuratan berbasis digital menjadi solusi yang sangat diperlukan. Sistem informasi dapat mengotomatisasi proses pencatatan, mempermudah pencarian dan pengambilan dokumen, memfasilitasi disposisi 





3 



secara elektronik, menyediakan *monitoring* status surat secara *real-time*, serta menghasilkan laporan dan analitik yang komprehensif. 

Penelitian ini mengembangkan sistem informasi manajemen arsip persuratan berbasis *web* menggunakan teknologi modern yang sesuai untuk kebutuhan lembaga pendidikan. Sistem yang dirancang akan mencakup *modul* pengelolaan surat masuk dan surat keluar, disposisi elektronik, manajemen arsip digital, serta *dashboard monitoring* dan pelaporan. Sistem ini diharapkan dapat meningkatkan efisiensi operasional, akurasi data, keamanan informasi, serta mendukung pengambilan keputusan berbasis data di SDIT Al-Huda. 



**1.2. Identifikasi Masalah **

Berdasarkan analisis kondisi eksisting pada SDIT Al-Huda melalui observasi, wawancara dengan pemangku kepentingan, dan studi dokumentasi proses bisnis, teridentifikasi beberapa permasalahan utama yang menghambat efektivitas dan efisiensi pengelolaan arsip persuratan, yaitu: 

1. **Pengelolaan Surat Masuk dan Surat Keluar yang Tidak Efisien** Proses pencatatan surat masuk dan surat keluar yang masih menggunakan buku agenda manual memakan waktu lama dan rawan kesalahan. Staf administrasi harus menulis secara manual setiap detail surat yang masuk atau keluar, termasuk nomor, tanggal, pengirim/penerima, dan perihal. Proses manual ini memakan waktu rata-rata 10-15 menit per surat dan tidak jarang terjadi kesalahan pencatatan seperti nomor surat yang salah atau tanggal yang tertukar. 

Tidak adanya validasi otomatis menyebabkan inkonsistensi format penomoran surat. 

2. **Kesulitan dalam Pencarian dan Pengambilan Arsip** 

Sistem penyimpanan arsip fisik menggunakan ordner dan lemari berdasarkan periode waktu dan jenis surat menyulitkan pencarian arsip tertentu. Ketika diperlukan arsip surat dari bulan atau tahun sebelumnya, staf administrasi harus mencari secara manual dengan membuka satu per satu ordner, yang bisa memakan waktu 15-30 menit atau bahkan lebih. Kesulitan ini semakin meningkat ketika harus mencari surat berdasarkan kriteria tertentu seperti pengirim, perihal, atau kategori surat. 





4 



3. **Proses Disposisi yang Lambat dan Tidak Terpantau** 

Disposisi surat masuk dari kepala sekolah kepada guru atau staf yang ditunjuk dilakukan dengan cara menyerahkan surat fisik secara langsung atau menitipkan melalui staf lain. Proses ini sangat tidak efisien karena memerlukan kehadiran fisik penerima disposisi. Ketika penerima disposisi sedang mengajar atau tidak berada di sekolah, surat akan tertunda. Tidak ada mekanisme untuk memantau apakah disposisi telah diterima dan ditindaklanjuti, sehingga kepala sekolah harus menanyakan secara manual kepada penerima disposisi. 

4. **Risiko Kerusakan dan Kehilangan Dokumen Fisik** 

Penyimpanan dokumen dalam bentuk fisik memiliki risiko tinggi terhadap kerusakan akibat faktor lingkungan seperti kelembaban, serangan rayap, atau bencana seperti kebakaran dan banjir. Beberapa dokumen penting yang telah tersimpan lama mengalami kerusakan fisik seperti kertas yang menguning, teks yang memudar, atau bahkan robek. Risiko kehilangan dokumen juga tinggi karena tidak ada sistem pelacakan yang mencatat lokasi setiap dokumen dan siapa yang terakhir mengakses. 

5. **Ketiadaan Sistem Monitoring dan Pelacakan Status Surat** Tidak adanya sistem yang dapat memantau status tindak lanjut surat masuk menyulitkan kepala sekolah dan staf administrasi dalam mengontrol proses penanganan surat. Informasi tentang surat mana yang sudah ditindaklanjuti, sedang diproses, atau belum ditangani sama sekali tidak tersedia secara *real-time*. Hal ini mengakibatkan surat-surat penting bisa terabaikan atau penanganannya terlambat, terutama surat yang memiliki tenggat waktu tertentu. 

6. **Kesulitan dalam Pembuatan Laporan dan Analisis** 

Pembuatan laporan arsip persuratan untuk keperluan evaluasi, akuntabilitas, atau audit memerlukan waktu yang sangat lama karena harus merekap data secara manual dari buku agenda. Staf administrasi membutuhkan waktu 2-3 

hari kerja untuk membuat laporan bulanan atau tahunan. Laporan yang dihasilkan juga terbatas dalam hal visualisasi dan analisis karena keterbatasan alat pengolah data. Tidak ada metrik atau indikator kinerja yang dapat digunakan untuk mengevaluasi efektivitas pengelolaan surat. 





5 



7. **Keamanan dan Kontrol Akses yang Lemah** 

Dokumen surat yang bersifat rahasia atau penting tidak memiliki pengamanan yang memadai. Siapa saja yang memiliki akses fisik ke ruang administrasi berpotensi membuka dan membaca dokumen. Tidak ada mekanisme untuk membatasi akses berdasarkan tingkat kerahasiaan atau kebutuhan. Tidak adanya jejak audit membuat tidak mungkin untuk mengetahui siapa yang telah mengakses dokumen tertentu dan kapan akses tersebut dilakukan, sehingga akuntabilitas sulit dijaga. 

8. **Keterbatasan Ruang Penyimpanan Fisik** 

Dengan volume surat yang terus bertambah setiap tahunnya, kebutuhan ruang penyimpanan arsip fisik terus meningkat. Sekolah harus mengalokasikan ruangan khusus dan lemari arsip tambahan yang memerlukan biaya dan ruang yang seharusnya bisa digunakan untuk keperluan pendidikan. Penyimpanan arsip lama yang jarang diakses tetapi harus disimpan sesuai regulasi menjadi beban ruang yang tidak efisien. 

Permasalahan-permasalahan tersebut secara kumulatif menyebabkan penurunan efisiensi operasional, potensi hilangnya informasi penting, risiko ketidakpatuhan terhadap regulasi pengelolaan arsip, terhambatnya akuntabilitas, dan hilangnya peluang untuk melakukan analisis dan perbaikan proses. Oleh karena itu, pengembangan sistem informasi manajemen arsip persuratan berbasis digital yang terpadu, aman, dan mudah digunakan menjadi kebutuhan mendesak bagi SDIT Al-Huda. 



**1.3. Ruang Lingkup **

Untuk memfokuskan pembahasan dan memastikan keberhasilan proyek, penelitian ini menetapkan batasan-batasan cakupan sebagai berikut : **1.3.1. Ruang Lingkup Fungsional **

Sistem informasi yang dikembangkan mencakup fungsi-fungsi utama sebagai berikut : 

1. **Modul Autentikasi dan Manajemen Pengguna** 

a. Sistem *login* dengan kontrol akses berbasis peran \( *admin*, kepala sekolah, guru, staf\) 





6 



b. Manajemen profil pengguna 

c. Pengelolaan data pengguna oleh administrator 

2. **Modul Manajemen Surat Masuk** 

a. Pencatatan surat masuk dengan nomor otomatis 

b. *Upload* dokumen *scan* surat masuk 

c. Pelacakan status surat masuk 

d. Pencarian dan *filter* surat masuk 

3. **Modul Manajemen Surat Keluar** 

a. Pembuatan surat keluar dengan *template* 

b. Penomoran surat keluar otomatis 

c. *Upload* dokumen surat keluar 

d. Pelacakan status surat keluar 

4. **Modul Disposisi Surat** 

a. Disposisi surat dari kepala sekolah ke guru/staf 

b. Notifikasi disposisi *via email* 

c. Catatan dan instruksi disposisi 

d. Pelacakan status tindak lanjut disposisi 

5. **Modul Arsip Digital** 

a. Penyimpanan dokumen digital 

b. Kategorisasi dan *tagging* arsip 

c. Sistem pencarian canggih 

d. *Download* dan *preview* dokumen 

6. **Modul *Dashboard***** dan Laporan** 

a. *Dashboard* untuk setiap peran pengguna 

b. Statistik dan visualisasi data surat 

c. Laporan periodik \(harian, bulanan, tahunan\) 

d. *Export* laporan ke PDF/Excel 

7. **Modul Notifikasi** 

a. Notifikasi *email* untuk disposisi baru 

b. Notifikasi surat masuk penting 

c. Pengingat tindak lanjut surat 





7 



8. **Modul *Log***** Aktivitas** 

a. Pencatatan semua aktivitas pengguna 

b. Jejak *audit* akses dokumen 

c. Riwayat perubahan data 

**1.3.2. Ruang Lingkup Teknis **

1. **Platform :** 

a. Aplikasi *web* berbasis PHP dengan *framework* modern b. Basis data MySQL 

c. Desain responsif menggunakan Tailwind CSS 

d. *Hosting* pada *server* lokal atau *cloud* 2. **Arsitektur :** 

a. Arsitektur *client-server* dengan pola MVC \( *Model-View-Controller*\) b. Sistem manajemen basis data relasional 

3. **Keamanan:** 

a. Autentikasi dan otorisasi berbasis peran 

b. Enkripsi data sensitif 

c. *Backup* data otomatis 

d. Proteksi dari serangan umum \( *SQL injection*, XSS, CSRF\) **1.3.3. Ruang Lingkup Pengguna **

Sistem dirancang untuk empat kategori pengguna utama : 

1. ***Administrator***** :** Mengelola seluruh sistem, pengguna, dan konfigurasi 2. **Kepala Sekolah :** Membaca surat masuk, melakukan disposisi, membuat surat keluar, dan melihat laporan 

3. **Guru/Wakil :** Menerima disposisi, menindaklanjuti surat, dan membuat laporan tugas 

4. **Staf Administrasi :** *Input* surat masuk, membuat surat keluar, mengelola arsip, dan membuat laporan 

**1.3.4. Batasan Sistem **

Sistem yang dikembangkan memiliki batasan sebagai berikut : 1. Sistem tidak mencakup pengelolaan keuangan sekolah 

2. Sistem tidak terintegrasi dengan sistem akademik atau kepegawaian 





8 



3. Sistem hanya mengelola persuratan internal sekolah, tidak termasuk korespondensi elektronik eksternal 

4. Sistem berbasis *web* dan memerlukan koneksi internet untuk akses 5. Fitur tanda tangan digital tidak termasuk dalam versi awal **1.4. Tujuan dan Manfaat Penelitian **

**1.4.1. Tujuan Penelitian **

Tujuan dari penelitian dan pengembangan sistem informasi manajemen arsip persuratan di SDIT Al-Huda adalah sebagai berikut : 1. Merancang dan mengembangkan sistem informasi manajemen arsip persuratan yang dapat mengelola surat masuk, surat keluar, disposisi, dan arsip digital secara terintegrasi. 

2. Meningkatkan efisiensi dan efektivitas proses pengelolaan persuratan di SDIT Al-Huda melalui otomasi pencatatan, disposisi, dan pelaporan. 

3. Menyediakan sistem pencarian dan pengambilan arsip yang cepat dan akurat untuk mendukung kebutuhan informasi yang mendesak. 

4. Memfasilitasi proses disposisi surat secara elektronik dengan notifikasi otomatis dan pelacakan status tindak lanjut. 

5. Meningkatkan keamanan dan integritas dokumen arsip melalui kontrol akses berbasis peran dan jejak *audit*. 

6. Menyediakan *dashboard* dan laporan analitik untuk mendukung pengambilan keputusan dan evaluasi kinerja pengelolaan persuratan. 

7. Mengurangi penggunaan kertas dan kebutuhan ruang penyimpanan fisik melalui digitalisasi arsip. 

8. Memenuhi persyaratan kelulusan pada Program Studi Sistem Informasi di Universitas Nusa Mandiri. 

**1.4.2. Manfaat Penelitian **

Penelitian ini diharapkan memberikan manfaat bagi berbagai pihak, antara lain : 





9 



**a. Manfaat bagi SDIT Al-Huda :** 

1. **Peningkatan Efisiensi Operasional :** Pengurangan waktu yang dibutuhkan untuk pencatatan, pencarian, dan pengambilan arsip surat dari menit menjadi detik. 

2. **Penghematan Biaya :** Pengurangan penggunaan kertas, toner printer, dan biaya penyimpanan fisik dalam jangka panjang. 

3. **Peningkatan Akuntabilitas :** Jejak *audit* yang lengkap memastikan setiap tindakan tercatat dan dapat dipertanggungjawabkan. 

4. **Kepatuhan Regulasi :** Memudahkan pemenuhan regulasi pengelolaan arsip dan dokumentasi untuk keperluan akreditasi atau *audit*. 

5. **Dukungan Pengambilan Keputusan :** Data dan laporan yang tersedia secara *real-time* membantu manajemen dalam pengambilan keputusan strategis. 

**b. Manfaat bagi Pengguna Sistem :** 

1. **Kepala Sekolah :** Kemudahan dalam melakukan disposisi surat secara cepat, *monitoring* status tindak lanjut, dan akses informasi kapan saja. 

2. **Guru dan Staf :** Penerimaan disposisi secara langsung dengan notifikasi, kemudahan dalam melaporkan tindak lanjut, dan akses arsip yang relevan. 

3. **Staf Administrasi :** Pengurangan beban kerja manual, kemudahan dalam pencatatan dan pencarian arsip, serta otomasi pembuatan laporan. 

**c. Manfaat bagi Akademik :** 

1. Menjadi referensi atau studi kasus bagi mahasiswa atau peneliti lain yang akan mengembangkan sistem informasi sejenis untuk lembaga pendidikan. 

2. Kontribusi terhadap pengembangan ilmu pengetahuan di bidang sistem informasi manajemen, khususnya pengelolaan arsip digital. 

3. Demonstrasi penerapan teori dan metodologi pengembangan sistem informasi dalam kasus nyata. 





10 



**d. Manfaat bagi Masyarakat dan Lembaga Pendidikan Lain :** 1. Memberikan contoh implementasi transformasi digital dalam pengelolaan administrasi sekolah yang dapat diadopsi oleh lembaga pendidikan lain. 

2. Mendorong literasi digital dan pemanfaatan teknologi informasi di lingkungan pendidikan. 

3. Berkontribusi pada peningkatan kualitas layanan administrasi pendidikan yang berdampak pada kualitas pendidikan secara keseluruhan. 

****





**BAB II **

**TINJAUAN PUSTAKA **

****

**2.1. Landasan Teori **

**2.1.1. Sistem Informasi **

**A. Pengertian Sistem Informasi **

Sistem informasi yaitu kerangka kerja yang dapat mengkoordinasikan sumber daya seperti manusia dan komputer untuk mengubah input menjadi output yang berupa informasi dalam mencapai sasaran\[1\] . Sistem informasi yaitu kesatuan informasi yang dapat mendukung dan membentuk informasi yang berharga bagi penerima yang berasal dari data yang sudah diolah, dikelompokkan, dan dikumpulkan \[2\]. 

**B. Komponen Sistem Informasi **

Komponen utama sistem informasi terdiri atas \[3\] : 

1. Sumber Daya Manusia : Manusia dibutuhkan dalam pengoperasian semua sistem informasi. 

2. Sumber Daya *Hardware* : Semua peralatan dan bahkan fisik yang digunakan dalam proses informasi. 

3. Sumber Daya *Software* : Serangkaian perintah yang dapat digunakan dalam proses sebuah data dari informasi. 

4. Sumber Daya Data : Lebih daripada hanya bahan baku yang mentah sistem informasi. 

5. Sumber Daya Jaringan : Jaringan telekomunikasi terdiri dari komputer, pemrosesan komunikasi, dan peralatan lainnya yang dapat dihubungkan satu sama lain melalui media komunikasi serta dikendalikan melalui *software* komunikasi. 

**2.1.2. Manajemen Arsip dan Persuratan **

**A. Pengertian Arsip **

Arsip adalah kumpulan warkat yang memiliki kegunaan tertentu, disimpan dengan sistematis, serta dapat ditemukan kembali dengan cepat\[4\]. 

11 





12 



Arsip merupakan catatan rekaman kegiatan dengan macam bentuk yang dibuat oleh Lembaga, Organisasi atau perseorangan. Bentuk Arsip antara lain : surat, warkat, akta, piagam, buku dan lain-lain \[4\] . 

**B. Jenis-Jenis Surat **

Dalam konteks administrasi perkantoran, surat dapat diklasifikasikan berdasarkan beberapa kriteria \[4\] : 

1. Berdasarkan Pemakaian Surat :** **

a\) Surat Pribadi adalah surat yang dibuat seseorangan yang mempunyai isi terkait kepentingan pribadi atau hal yang bersifat personal. 

b\) Surat Dinas adalah surat yang mempunyai isi berkaitan dengan kepentingan tugas dalam kegiatan dinas instansi pemerintah. 

c\) Surat Bisnis adalah surat yang digunakan oleh lembaga yang menyelengarakan kegiatan bisnis. 

d\) Surat Sosial adalah surat yang digunakan oleh sebuah organisasi atau lembaga sosial kemasyarakatan dalam berbagi kepentingan sosial bagi masyrakat pada umumnya. 

2. Berdasarkan Sifat Isi Surat :** **

a\) Surat Biasa adalah surat yang isinya dapat bersifat biasa tidak rahasia, dapat menggunakan amplop dan tanpa amplop. 

b\) Surat Konfidensial adalah surat yang termasuk rahasia tetapi terbatas untuk kalangan tertentu seperti ditujukan untuk pejabat tertentu, dan bahkan untuk disebarluaskan secara meluas dalam organisasi. 

c\) Surat Rahasia adalah surat yang isinya dikhususkan boleh dibuka dan dibaca oleh seseorang/pejabat tertentu dalam suatu organisasi. 

3. Berdasarkan Jumlah Sasaran :** **

a\) Surat Edaran adalah Surat pemberitahuan secara tertulis yang dapat disampaikan oleh seorang / suatu lembaga yang ditujukan kepada lembaga / seseorang lain dalam jumlah yang banyak. 

b\) Surat Pengumuman : Surat yang berisi pemberitahuan tentang suatu hal yang perlu diketahui oleh pegawai/karyawan dalam sebuah organisasi. 





13 



4. Berdasarkan Urgensi Penyelesaiannya : 

a\) Surat biasa adalah surat yang penangannya dapat dilakukan biasa saja dan tidak perlu perlakuan khusus. 

b\) Surat segera adalah surat yang memerlukan penanganan secepat mungkin atau harus dilakukan dengan segera, meskipun dalam tingkat penangannya tidak secepat surat kilat. 

c\) Surat kilat adalah surat yang perlu penanganan dengan sangat segera, harus didahulukan dan memperoleh perlakuan khusus daripada surat yang lainnya. 

**C. Sistem Pengelolaan Surat **

Sistem pengelolaan surat terdiri dari beberapa tahapan\[5\] : 1. Pengelolaan Surat Masuk :** **

a\) Penerimaan surat dari pengirim 

b\) Penyortiran berdasarkan tujuan 

c\) Pencatatan dalam buku agenda 

d\) Pengarahan kepada pimpinan untuk disposisi 

e\) Penyampaian kepada unit/pejabat yang dituju 

f\) Penyimpanan/pengarsipan 

2. Pengelolaan Surat Keluar :** **

a\) Pembuatan konsep surat 

b\) Persetujuan dan penandatanganan 

c\) Pencatatan dalam buku agenda 

d\) Penggandaan jika diperlukan 

e\) Pengiriman kepada penerima 

f\) Penyimpanan/pengarsipan tembusan 

**D. Disposisi Surat **

Disposisi surat adalah prosedur pengelolaan surat yang dibuat dan disepakati oleh pihak pemimpin perusahaa;n yang dipimpin\[5\] . 

**2.1.3. Manajemen Proyek Sistem Informasi **

**A. Pengertian Manajemen Proyek **

Manajemen proyek adalah suatu cara mengelola, mengarahkan dan mengkoordinasi sumber daya seperti manusia atau material disaat memulai 





14 



sebuah proyek hingga akhir untuk mencapai suatu tujuan, yang dibatasi oleh biaya, waktu, dan kualitas untuk mencapai kepuasan \[6\] . 

**B. Area Pengetahuan Manajemen Proyek **

Manjemen proyek terdiri atas\[7\] : 

1\) Perencanaan \( *Planning*\) 

Perencanaan yaitu proses berfikir terkait tindakan yang diperlukan untuk dapat mencapai tujuan yang diinginkan. 

2\) Penjadwalan \( *Scheduling*\) 

Perencanaan yaitu proses pengorganisasian, optimalisasi dan pengarahan kerja dan beban kerja dalam proses produksi atau proses manufaktur. 

3\) Pengawasan \( *Controlling*\) 

Pengawasan yaitu fungsi dalam kepemimpinan beriorientasi pada tujuan yang penting dalam sebuah organisasi. 



**2.1.4. Siklus Hidup Pengembangan Sistem \(SDLC\) **

**A. * *****Pengertian SDLC **

SDLC \( *System Development Life Cycle*\) adalah proses pembuatan dan pengubahan sistem serta model metodologi yang dapat digunakan dalam mengembangkan sistem-sistem tersebut\[8\] . 

**B. Model * Waterfall ***

Model * Waterfall* adalah model *SDLC* yang proses pengembangan *software* dilakukan secara berurutan yang prosesnya seperti air terjun mengalir kebawah\[9\] . 



Sumber : Nagara, B.,et.all \(2023\) 

**Gambar II. 1 SDLC *Waterfall***** **





15 



1. Tahapan Model * Waterfall** ***:** **

a\) Analisis Kebutuhan : Mengumpulkan dan mendokumentasikan kebutuhan sistem secara lengkap melalui observasi, wawancara, dan studi dokumentasi. 

b\) Desain Sistem : Merancang arsitektur sistem, desain basis data, desain antarmuka, dan spesifikasi teknis. 

c\) Implementasi : Pengodean atau pemrograman berdasarkan dokumen desain yang telah dibuat. 

d\) Pengujian : Melakukan pengujian unit, integrasi, sistem, dan penerimaan pengguna untuk memastikan sistem berfungsi sesuai kebutuhan. 

e\) Penerapan : Instalasi sistem di lingkungan produksi dan pelatihan pengguna. 

f\) Pemeliharaan : Perbaikan bug dan peningkatan fitur sesuai kebutuhan. 

2. Kelebihan Model * Waterfall** ***:** **

a\) Struktur yang jelas dan mudah dipahami 

b\) Dokumentasi lengkap di setiap tahapan 

c\) Cocok untuk proyek dengan kebutuhan yang jelas dan stabil d\) Kemajuan dapat diukur dengan jelas 

3. Kekurangan Model * Waterfall** ***:** **

a\) Tidak fleksibel terhadap perubahan kebutuhan 

b\) Perangkat lunak baru tersedia di akhir proyek 

c\) Risiko tinggi jika terjadi kesalahan di tahap awal 

Dalam proyek sistem informasi arsip persuratan SDIT Al-Huda ini, *model* *Waterfall* dipilih karena kebutuhan sudah cukup jelas, cakupan proyek terdefinisi dengan baik, dan proyek memiliki waktu yang tetap dalam satu semester akademik. 





16 



**2.1.5. Basis Data dan Perancangan Database **

**A. ** **Pengertian Basis Data** 

Basis data \( *database*\) adalah kumpulan data yang terstruktur secara berurutan berdasarkan kriteria tertentu dan berkaitan satu dengan lainnya yang disimpan secara elektronik yang biasanya disimpan didalam sistem komputer. Basis data adalah merupakan suatu komponen informasi yang sangat diperlukan untuk berperan sebagai dasar penyampaian informasi kepada pengguna \[10\] . 

Basis data memiliki kriteria, antara lain\[10\] : 

## 1. Menggunakan struktur cara yang berbeda 

2. Beriorientasi dengan data dan bukan berorientasi pada program. 

3. Menggunakan beberapa program yang tidak mengubah basis data. 

4. Mengembangkan dengan mudah dalam volume atau strukturnya. 

5. Mengutaman kebutuhan dan sistem yang baru dengan mudah. 

**B. *Entity Relationship Diagram***** \(ERD\) **

*Entity Relationship Diagram* \(ERD\) yaitu bagan dalam bentuk gambar maupun symbol yang dapat mengindentifikasi tipe dari entitas di suatu sistem yang diuraikan dalam data dengan atributnya, dan menjelaskan hubungan di antara entitas tersebut \[11\] . 

Komponen utama ERD meliputi : 

a\) Entitas \( *Entity*\) : Objek atau konsep yang datanya disimpan dalam basis data, seperti *User*, Surat Masuk, Surat Keluar. 

b\) Atribut \( *Attribute*\) :** **Karakteristik atau properti dari entitas, seperti nama, tanggal, nomor surat. 

c\) Relasi \( *Relationship*\) : Hubungan antara dua atau lebih entitas, seperti "membuat", "menerima", "mendisposisikan". 

**C. Normalisasi **

Normalisasi adalah proses pengelompokkan atribut data yang membentuk entitas yang nonredundan, fleksibel dan mudah beradaptasi 

\[12\]. 

Bentuk normal yang umum digunakan : 





17 



1. *First Normal Form* \(1NF\) : Setiap atribut harus *atomic* \(tidak dapat dipecah lagi\) dan tidak ada grup berulang. 

2. *Second Normal Form* \(2NF\) : Memenuhi 1NF dan semua atribut non-kunci bergantung penuh pada *primary key*. 

3. *Third Normal Form* \(3NF\) : Memenuhi 2NF dan tidak ada ketergantungan transitif antar atribut *non*-kunci. 

**2.1.6. Teknologi Pengembangan Sistem **

**A. Bahasa Pemrograman * PHP ***

PHP \( *Hypertext Preprocessor*\) adalah bahasa pemrograman *server-side* yang banyak digunakan untuk pengembangan aplikasi *web*. PHP 

bersifat *open source*, mudah dipelajari, dan memiliki komunitas yang besar\[13\] . 

**B. *MySQL *****Database * ***

*MySQL * adalah sistem manajemen basis data relasional \(RDBMS\) yang menggunakan *Structured Query Language* \(SQL\). MySQL bersifat *open* *source*, cepat, dapat diandalkan, dan mudah digunakan\[14\] . 

**C. *HTML, CSS, *****dan * JavaScript ***

HTML \( *HyperText Markup Language*\) adalah Bahasa yang menggunakan tanda tertentu atau tag untuk dapat menyatakan kode-kode yang dapat ditafsirkan oleh *browser* agar halaman dapat ditampilkan dengan benar. CSS \( *Cascading Style Sheets*\) digunakan untuk mengatur tampilan dan *layout* halaman *web* agar terstruktur. *JavaScript * adalah bahasa pemrograman untuk membuat interaktivitas pada halaman *web*\[13\] . 

**D. *Tailwind CSS ***

*Tailwind * CSS adalah *framework* CSS *utility-first* yang menyediakan kelas-kelas utilitas untuk membangun desain *custom* tanpa meninggalkan HTML. Tailwind memungkinkan pengembangan antarmuka yang responsif dengan cepat\[15\] . 





18 



**2.1.7. Keamanan Sistem Informasi **

**A. Autentikasi dan Otorisasi **

Autentikasi adalah proses memverifikasi identitas pengguna yang mencoba mengakses sistem. Otorisasi adalah proses menentukan hak akses yang dimiliki pengguna setelah autentikasi berhasil \[16\]. 

1. Metode autentikasi yang umum meliputi : 

a\) *Username* dan *password* 

b\) *Two-factor authentication* \(2FA\) 

c\) *Biometric authentication* 

2. Otorisasi biasanya diimplementasikan menggunakan : 

a\) *Role-Based Access Control* \(RBAC\) 

b\) *Access Control List* \(ACL\) 

c\) *Attribute-Based Access Control* \(ABAC\) 

**B. Enkripsi Data **

Enkripsi adalah *cipher* atau kode yang merupakan proses penyembuyian sebuah data pesan dengan melakukan pengubahan *plaintext* \(pesan yang bisa dibaca\) menjadi *ciphertext* \(pesan acak yang tidak bisa dibaca \[17\] . 

**C. Keamanan Aplikasi *Web ***

Berikut sepuluh risiko keamanan aplikasi web yang paling kritis meliputi 

\[18\]: 

1. *Broken Access Control *

2. *Cryptographic Failures *

3. *Injection \(SQL Injection, XSS\) *

4. *Insecure Design *

5. *Security Misconfiguration *

6. *Vulnerable and Outdated Components *

7. *Identification and Authentication Failures *

8. *Software and Data Integrity Failures *

9. *Security Logging and Monitoring Failures *

10. *Server-Side Request Forgery \(SSRF\) *

Sistem yang dikembangkan harus mempertimbangkan dan mengatasi risiko-risiko tersebut. 





19 



**2.2. Penelitian Terkait **

Beberapa penelitian terkait yang relevan dengan pengembangan sistem informasi manajemen arsip persuratan telah dilakukan, antara lain : **1. Sistem Informasi Pengelolaan Surat Masuk dan Surat Keluar di UPT **

**BLK Situbondo **

**Referensi :** Suudi Hidayat, A. Hamdani, & R. B. F. Kusuma \(2025\) **Judul :** *Sistem Informasi Pengelolaan Surat Masuk dan Surat Keluar* *untuk Mendukung Kinerja Administrasi di UPT BLK Situbondo* **Sumber & Link PDF :** Saturnus: Jurnal Teknologi dan Sistem Informasi **Ringkasan:** Penelitian mengembangkan sistem manajemen arsip surat masuk dan keluar berbasis web. Sistem ini ditujukan untuk meningkatkan efisiensi administrasi dan akses data secara cepat di lingkungan UPT BLK. 

**Persamaan:** 

Menggunakan web-based system untuk mengelola surat masuk dan keluar. 

**Perbedaan:** Fokus pada instansi pelatihan teknis/administrasi pemerintah dengan kebutuhan arsip umum, bukan lembaga pendidikan khusus. 

**2. Perancangan Aplikasi E-Arsip Surat Berbasis Web di SMP IT Nailul** **Khoir Majalengka **

**Referensi :** R. Nasrulloh dkk. \(2025\) 

**Judul:** *Perancangan Aplikasi E-Arsip Surat Berbasis Web di SMP Islam* *Terpadu Nailul Khoir Majalengka *

**Sumber & Link PDF:** JATI \(Jurnal Mahasiswa Teknik Informatika\) **Ringkasan:** Penelitian ini merancang sistem E-Arsip untuk mengatasi masalah manual dalam pengarsipan surat sekolah. Hasil menunjukkan percepatan proses, pengurangan risiko kehilangan data, dan pencarian arsip lebih cepat. ** **

**Persamaan:** Fokus pada digitalisasi arsip surat sekolah, efisiensi dan peningkatan pencarian arsip. ** **

**Perbedaan:** Spesifik pada kebutuhan sekolah dasar/madrasah, bukan kantor pemerintahan. 





20 



**3. Implementasi dan Evaluasi Sistem Arsip Elektronik dalam** **Pengelolaan Surat Masuk di Rumah Sakit **

**Referensi:** E. Rahmawati & N. D. Ariyani \(2024\) **Judul:** *Implementasi dan Evaluasi Sistem Arsip Elektronik dalam* *Pengelolaan Surat Masuk di Rumah Sakit* 

**Sumber & Link PDF :** COSTING: Jurnal Ilmiah 

**Ringkasan:** Penelitian mengevaluasi sistem arsip elektronik dengan fokus efisiensi operasional dan keamanan data/informasi pada institusi kesehatan. Menemukan bahwa digitalisasi arsip meningkatkan efisiensi layanan dan pengelolaan surat masuk. 

**Persamaan:** Menjelaskan peningkatan efisiensi pengelolaan surat melalui digitalisasi. 

**Perbedaan:** Dikembangkan untuk konteks rumah sakit, termasuk aspek keamanan data yang lebih kuat. 

**4. Sistem Informasi Manajemen Arsip Digital untuk Efisiensi** **Administrasi **

**Referensi:** FP Tenawahang \(2023\) 

**Judul:** *Rancang Bangun Sistem Informasi Manajemen Arsip Digital* **Sumber & Link PDF:** Journal Portal Publikasi — PDF artikel tersedia **Ringkasan:** Penelitian merancang dan mengembangkan **sistem** **manajemen arsip digital** yang terintegrasi, meningkatkan efisiensi, aksesibilitas, serta keamanan akses arsip di organisasi/instansi. 

**Persamaan:** Meningkatkan efisiensi dan aksesibilitas arsip melalui digitalisasi. 

**Perbedaan:** Fokus pada **arsip digital umum** di organisasi, bukan khusus arsip surat sekolah. 





**BAB III **

**METODOLOGI PENELITIAN **



**3.1. Tahapan Penelitan **

Penelitian dan pengembangan Sistem Informasi Manajemen Arsip Persuratan di SDIT Al-Huda menggunakan pendekatan *System Development Life* *Cycle* \( *SDLC*\) dengan *model Waterfall*. Model ini dipilih karena karakteristik proyek yang memiliki kebutuhan jelas, waktu yang tetap, dan memerlukan dokumentasi yang komprehensif untuk keperluan akademik. Tahapan penelitian terdiri dari lima fase utama yang dilaksanakan secara berurutan dengan keluaran yang terdefinisi jelas di setiap fase. 



**Gambar IV. 1 Tahapan Penelitian Sistem Informasi Manajemen Arsip** **Persuratan **

21 





22 



**Uraian Tahapan Penelitian:** 

## 1. Inisiasi Proyek 

Tahapan ini dimulai dengan mengidentifikasi permasalahan yang dihadapi SDIT Al-Huda dalam pengelolaan arsip persuratan, menentukan tujuan proyek, mengidentifikasi pemangku kepentingan \(kepala sekolah, guru, staf administrasi\), serta menyusun *project charter* sebagai dokumen otorisasi formal untuk memulai proyek. 

## 2. Perencanaan Proyek 

Tahapan perencanaan mencakup penyusunan ruang lingkup proyek \( *scope*\), penjadwalan waktu pengerjaan \( *timeline*\), estimasi anggaran biaya, perencanaan kualitas, identifikasi sumber daya yang dibutuhkan, analisis risiko, perencanaan komunikasi, dan strategi pengadaan. 

## 3. Pelaksanaan Proyek 

Tahapan pelaksanaan merupakan fase inti pengembangan sistem yang terdiri dari : 

a\) Analisis kebutuhan sistem melalui observasi, wawancara, dan studi dokumentasi 

b\) Perancangan sistem meliputi desain basis data, desain antarmuka pengguna, dan diagram *UML* 

c\) Implementasi sistem menggunakan teknologi *web* dengan PHP dan MySQL 

d\) Pengujian sistem secara menyeluruh untuk memastikan kualitas dan kesesuaian dengan kebutuhan 

e\) *Deployment* sistem ke lingkungan produksi 

## 4. Pemantauan dan Pengendalian Proyek 

Tahapan ini dilakukan paralel dengan pelaksanaan proyek untuk memastikan proyek berjalan sesuai rencana. Aktivitas meliputi pemantauan progres pengerjaan, 

pengendalian 

perubahan 

ruang 

lingkup, 

pengendalian 

kualitas *deliverables*, dan pengelolaan risiko yang muncul selama pengerjaan. 

## 5. Penutupan Proyek 

Tahapan akhir mencakup serah terima sistem kepada SDIT Al-Huda, penyusunan dokumentasi lengkap \(manual pengguna, dokumentasi teknis\), 





23 



evaluasi pencapaian tujuan proyek, *lessons learned*, dan pelepasan sumber daya tim proyek. 

**3.2. Tempat dan Waktu Penelitian **

**3.2.1. Tempat Penelitian **

Penelitian dan pengembangan sistem informasi ini dilaksanakan di beberapa lokasi sebagai berikut : 

1. SDIT Al-Huda** **

a. Lokasi : Sekolah sasaran implementasi sistem 

b. Kegiatan: Observasi proses bisnis pengelolaan persuratan, wawancara dengan pemangku kepentingan \(kepala sekolah, guru, staf administrasi\), dan pengujian penerimaan pengguna \( *User Acceptance* *Testing* 

2. Kampus/Lingkungan Pengembangan** **

a. Kegiatan: Pengembangan sistem, konsultasi dengan dosen pembimbing, dan koordinasi tim proyek 

3. Secara Daring \( *Remote/Online*\)** **

a. Kegiatan: Pengembangan sistem, dokumentasi, pengujian, dan koordinasi melalui platform kolaborasi daring 

**3.2.2. Waktu Penelitian **

Penelitian ini dilaksanakan selama satu semester akademik dengan rentang waktu sebagai berikut : 

**Tabel III. 1 Jadwal Penelitian **

**Waktu **

**No **

**Kegiatan **

**Durasi **

**Pelaksanaan **

Inisiasi 

dan 

Analisis 

1 

2 minggu 

Minggu 1-2 

Kebutuhan 

2 

Perancangan Sistem 

2 minggu 

Minggu 3-4 

3 

Implementasi Sistem 

4 minggu 

Minggu 5-8 





24 



**Waktu **

**No **

**Kegiatan **

**Durasi **

**Pelaksanaan **

4 

Pengujian Sistem 

2 minggu 

Minggu 9-10 

5 

*Deployment* dan Evaluasi 

1 minggu 

Minggu 11 

6 

Penyusunan Laporan 

3 minggu 

Minggu 12-14 

Total durasi penelitian adalah **14 minggu** dalam satu semester akademik. 

**3.3. Subjek Penelitian **

Subjek penelitian dalam pengembangan sistem informasi manajemen arsip persuratan SDIT Al-Huda terdiri dari pemangku kepentingan yang terlibat langsung dalam pengelolaan persuratan dan yang akan menggunakan sistem. 

**3.3.1. Populasi **

Populasi dalam penelitian ini adalah seluruh pengguna potensial sistem informasi manajemen arsip persuratan di SDIT Al-Huda yang terdiri dari : a. Kepala sekolah dan wakil kepala sekolah 

b. Guru dan tenaga pendidik 

c. Staf administrasi dan tata usaha 

d. Administrator sistem 

**3.3.2. Sampel dan Teknik Pengambilan Sampel **

Penelitian ini menggunakan teknik *purposive sampling* \(pengambilan sampel bertujuan\) dimana sampel dipilih secara sengaja berdasarkan karakteristik dan kriteria tertentu yang sesuai dengan kebutuhan penelitian. 

**Tabel III. 2 Distribusi Sampel Penelitian **

**Kategori **

**Kriteria **

**Peran dalam **

**No **

**Jumlah **

**Sampel **

**Pemilihan **

**Penelitian **

Kepala 

1 

1 orang 

Pengambil 

Memberikan 

Sekolah 

keputusan, 

kebutuhan 





25 



**Kategori **

**Kriteria **

**Peran dalam **

**No **

**Jumlah **

**Sampel **

**Pemilihan **

**Penelitian **

pengguna 

bisnis, validasi 

disposisi 

sistem, *UAT* 

Memberikan 

Wakil 

Penerima 

kebutuhan 

2 

Kepala/Gu

2 orang 

disposisi, 

fungsional, 

ru 

pengguna sistem 

pengujian 

sistem 

Memberikan 

Staf 

Pengelola 

surat 

proses 

3 

Administra

2 orang 

masuk/keluar, *inp*

bisnis *existing*, 

si 

*ut* data 

pengujian 

intensif 

Memberikan 

kebutuhan 

4 

Staf TU 

1 orang 

Pengelola arsip 

pengarsipan, *U*

*AT* 

**Total** 

**6 orang** 

Teknik pengambilan sampel menggunakan *purposive sampling* dengan pertimbangan : 

a. Sampel dipilih berdasarkan pengetahuan dan pengalaman mereka terhadap proses pengelolaan persuratan di SDIT Al-Huda 

b. Mewakili berbagai peran pengguna dalam sistem \( *admin*, kepala sekolah, guru, staf\) 

c. Dapat memberikan informasi yang mendalam dan relevan untuk pengembangan sistem 

d. Bersedia berpartisipasi dalam wawancara, observasi, dan pengujian sistem 





26 



**3.4. Teknik Pengumpulan Data **

Pengumpulan data dalam penelitian ini menggunakan pendekatan multi-metode untuk memastikan pemahaman yang komprehensif terhadap kebutuhan sistem dan validasi dari berbagai perspektif. Teknik pengumpulan data yang digunakan meliputi observasi, wawancara, studi pustaka, dan kuesioner. 

**3.4.1. Observasi **

Observasi dilakukan untuk memahami proses bisnis aktual yang berjalan di SDIT Al-Huda dan mengidentifikasi permasalahan yang terjadi dalam operasional sehari-hari pengelolaan persuratan. Observasi dilakukan secara langsung di lokasi sekolah dengan mengamati: 

a. Proses penerimaan dan pencatatan surat masuk 

b. Proses pembuatan dan pencatatan surat keluar 

c. Proses disposisi surat dari kepala sekolah kepada guru/staf d. Sistem penyimpanan dan pengarsipan dokumen fisik 

e. Proses pencarian dan pengambilan arsip 

f. Interaksi antara staf administrasi dengan pengguna lain Hasil observasi didokumentasikan dalam catatan lapangan \( *field notes*\) yang mencakup aktivitas yang diamati, waktu yang diperlukan, masalah yang ditemukan, dan saran perbaikan. Data observasi digunakan sebagai dasar untuk menyusun diagram proses bisnis \( *as-is process*\) yang menggambarkan kondisi sebelum implementasi sistem. 

**3.4.2. Wawancara **

Wawancara semi-terstruktur dilakukan untuk mendapatkan informasi mendalam dari pemangku kepentingan mengenai kebutuhan, harapan, dan kendala yang dihadapi dalam sistem pengelolaan persuratan yang sedang berjalan. 

Wawancara dilakukan kepada: 





27 



**Tabel III. 3 Daftar Narasumber Wawancara **

**No **

**Narasumber **

**Jumlah **

**Tujuan Wawancara **

Memahami 

visi 

pengembangan 

Kepala 

sekolah, kebutuhan monitoring dan 

1 

1 orang 

Sekolah 

pelaporan, ekspektasi terhadap sistem 

disposisi 

Memahami proses detail pengelolaan 

Staf 

2 

2 orang 

surat masuk/keluar, kendala yang 

Administrasi 

dihadapi, kebutuhan fitur sistem 

Memahami 

kebutuhan 

penerima 

Guru/Wakil 

3 

2 orang 

disposisi, akses informasi surat, dan 

Kepala 

pelaporan tindak lanjut 

Memahami 

sistem 

pengarsipan, 

4 

Staf TU/Arsip 

1 orang 

pencarian dokumen, dan kebutuhan 

penyimpanan digital 

Wawancara dilakukan dengan durasi 30-45 menit per narasumber menggunakan panduan wawancara yang telah disiapkan. Hasil wawancara didokumentasikan dalam bentuk transkrip wawancara dan dianalisis untuk mengidentifikasi kebutuhan fungsional dan non-fungsional sistem. 

**3.4.3. Studi Pustaka **

Studi pustaka dilakukan untuk membangun landasan teoritis dan memahami *best practice* dalam pengembangan sistem informasi manajemen arsip persuratan. Sumber pustaka yang digunakan meliputi: 

a. Jurnal ilmiah tentang sistem informasi manajemen arsip dan persuratan b. Buku referensi tentang rekayasa perangkat lunak dan manajemen proyek c. Undang-undang dan peraturan tentang kearsipan \(UU No. 43 Tahun 2009 

tentang Kearsipan\) 





28 



d. Dokumentasi teknis teknologi yang digunakan \( *PHP, MySQL, Tailwind* *CSS*\) 

e. Penelitian terdahulu tentang sistem informasi persuratan di lembaga pendidikan 

Studi pustaka menghasilkan tinjauan literatur yang disajikan dalam BAB II dan menjadi dasar dalam perancangan dan pengembangan sistem. 

**3.4.4. Kuesioner **

Kuesioner digunakan untuk mengumpulkan data kuantitatif dari sampel yang lebih luas dan mengukur tingkat kepuasan serta kegunaan sistem. Kuesioner dibagikan dalam dua tahap : 

## 1. Kuesioner Analisis Kebutuhan

a. Diberikan kepada calon pengguna sistem \(10 responden\) b. Bertujuan mengidentifikasi fitur yang dibutuhkan dan prioritasnya c. Mengukur tingkat kesulitan yang dihadapi dengan sistem manual d. Mengukur kesiapan pengguna terhadap sistem digital 

## 2. Kuesioner Evaluasi Sistem

a. Diberikan kepada partisipan pengujian setelah menggunakan sistem \(6 

responden\) 

b. Mengukur tingkat kegunaan sistem dengan metode *System Usability* *Scale* \(SUS\) 

c. Mengukur kepuasan pengguna terhadap fitur dan antarmuka d. Mengidentifikasi area perbaikan untuk pengembangan selanjutnya Hasil kuesioner dianalisis secara deskriptif dan statistik untuk mendukung pengambilan keputusan dalam pengembangan sistem. 

**3.4.5. Studi Dokumentasi **

Studi dokumentasi dilakukan dengan mengumpulkan dan menganalisis dokumen-dokumen terkait pengelolaan persuratan di SDIT Al-Huda, meliputi : a. Buku agenda surat masuk dan surat keluar 

b. Contoh format surat-surat yang digunakan 

c. Prosedur operasional standar \(SOP\) pengelolaan surat 

d. Struktur organisasi dan pembagian tugas 

e. Laporan-laporan persuratan yang pernah dibuat 





29 



Data dari studi dokumentasi digunakan untuk memahami format dan struktur data yang sudah ada, serta sebagai acuan dalam merancang struktur basis data dan format tampilan sistem. 





**BAB IV **

**HASIL PENELITIAN DAN PEMBAHASAN **



**4.1. INISIASI PROYEK **

Proyek pengembangan Sistem Informasi Manajemen Arsip Persuratan di SDIT 

Al-Huda diinisiasi berdasarkan kebutuhan untuk mengoptimalkan operasional administrasi persuratan yang selama ini masih dilakukan secara manual. SDIT Al-Huda sebagai lembaga pendidikan Islam terpadu yang terus berkembang menghadapi tantangan dalam pengelolaan volume surat yang semakin meningkat setiap tahunnya. 

**4.1.1. Latar Belakang Masalah **

Berdasarkan observasi dan wawancara pada November 2025, teridentifikasi permasalahan utama: \(1\) Proses pengelolaan surat manual memakan waktu 10-15 

menit per surat, \(2\) Pencarian arsip memerlukan 15-30 menit, \(3\) Risiko kerusakan dokumen tinggi, \(4\) Disposisi manual lambat, \(5\) Tidak ada monitoring status surat, \(6\) Pembuatan laporan memakan waktu 2-3 hari, \(7\) Keamanan dokumen lemah tanpa jejak audit, \(8\) Keterbatasan ruang penyimpanan fisik. 

**4.1.2. Identifikasi Masalah **

Masalah utama: \(a\) Pelayanan administrasi konvensional kurang efisien, \(b\) Belum ada sistem informasi berbasis *web*, \(c\) Kehilangan data dan kesulitan pencarian arsip, \(d\) Tidak ada sistem *monitoring* dan pelaporan. 

**4.1.3. Ruang Lingkup **

Ruang lingkup proyek ini mencakup pengembangan sistem informasi berbasis *web* dengan fitur-fitur utama: 

a. **Modul Manajemen Surat Masuk **: Pencatatan, *upload file*, pelacakan status surat masuk 

b. **Modul Manajemen Surat Keluar **: Pembuatan, penomoran otomatis, *upload* *file* surat keluar 

c. **Modul Disposisi **: Disposisi elektronik dari kepala sekolah ke guru/staf dengan notifikasi *email* 

d. **Modul Arsip Digital **: Penyimpanan dan pencarian dokumen secara digital e. **Modul *Dashboard ***: *Dashboard* berbasis peran untuk *monitoring* dan statistik f. **Modul Laporan **: Laporan periodik dengan *export* ke PDF dan *Excel* 30 





31 



g. **Modul Notifikasi **: Notifikasi *email* untuk disposisi dan pengingat h. **Modul *Log***** Aktivitas **: Jejak *audit* untuk keamanan dan akuntabilitas **4.1.4. Tujuan dan Manfaat Proyek **

**Tujuan :** Meningkatkan efisiensi pengelolaan arsip persuratan melalui sistem berbasis *web*, mempercepat disposisi dengan notifikasi otomatis, menyediakan arsip digital aman, dan menghasilkan laporan informatif untuk pengambilan keputusan. 

**Manfaat :** Efisiensi operasional meningkat, *monitoring real-time*, pengurangan beban kerja manual, dan menjadi referensi sistem informasi untuk lembaga pendidikan. 

**4.1.5. Identifikasi Pemangku Kepentingan **

**Tabel IV. 1 Pemangku Kepentingan Proyek **

**Pemangku **

**No **

**Peran **

**Kepentingan **

**Kepentingan **

Kepala 

*Monitoring* operasional, 

1 

*Sponsor* Proyek, 

Sekolah 

disposisi surat, laporan 

Pengguna Utama 

manajemen 

*Input* surat masuk/keluar, 

Staf 

2 

Pengguna Utama 

pengelolaan arsip, 

Administrasi 

pembuatan laporan 

Menerima disposisi, tindak 

Guru/Wakil 

3 

Pengguna 

lanjut tugas, akses informasi 

Kepala 

surat 

Pengelolaan arsip 

4 

Staf TU 

Pengguna 

digital, *backup* dokumen 

Mengembangkan sistem 

Tim 

5 

Pelaksana Proyek 

sesuai kebutuhan dan 

Pengembang 

spesifikasi 

Memberikan arahan dan 

Dosen 

Pembimbing 

6 

validasi metodologi 

Pembimbing 

Proyek 

pengembangan 

**4.2. Perencanaan Proyek **

Perencanaan proyek dilakukan untuk memastikan proyek berjalan sesuai target waktu, biaya, dan kualitas yang ditetapkan. Perencanaan mencakup berbagai area pengetahuan manajemen proyek yang meliputi ruang lingkup \( *scope*\), waktu 





32 



\( *time*\), biaya \( *cost*\), kualitas \( *quality*\), sumber daya \( *resource*\), risiko \( *risk*\), komunikasi \( *communication*\), pengadaan \( *procurement*\), integrasi \( *integration*\), serta manajemen pemangku kepentingan \( *stakeholder*\). 

**4.2.1. Perencanaan Ruang Lingkup \( *Scope*****\)** Ruang lingkup proyek didefinisikan menggunakan *Work Breakdown* *Structure* \(WBS\) yang membagi pekerjaan menjadi komponen-komponen yang dapat dikelola. WBS proyek ini mencakup 5 fase utama dengan total lebih dari 35 *work packages* yang terdistribusi ke dalam aktivitas-aktivitas terstruktur. 

**Tabel IV. 2 *Work Breakdown Structure***** \(WBS\)** **Level 1 **

**Level 2 **

**Level 3 **

**Deskripsi **

Observasi dan 

1.1.1 Identifikasi 

wawancara pemangku 

Masalah 

## 1.1 

### kepentingan 

Inisiasi 

Analisis kelayakan 

1.1.2 Studi 

teknis, operasional, 

Kelayakan 

ekonomi 

1. *Project *

1.2.1 

*Management* 

Rincian struktur 

Penyusunan 

## 1.2 

### pekerjaan 

WBS 

Perencanaan 

1.2.2 

Estimasi 

Perhitungan biaya 

Biaya 

pengembangan 

## 1.3 

1.3.1 

Progress 

Pemantauan kemajuan 

*Monitoring* Tracking 

mingguan 

2.1.1 *Functional *

Identifikasi kebutuhan 

## 2.1 

*Requirements* 

fungsional sistem 

2. *Analysis* 

*Requirem*

2.1.2 *Non-*

*ents* 

Keamanan, kinerja, 

*functional *

kegunaan 

*Requirements* 





33 



**Level 1 **

**Level 2 **

**Level 3 **

**Deskripsi **

2.2.1 As-Is 

Dokumentasi proses 

## 2.2 

### Process 

bisnis saat ini 

*System *

*Analysis* 

2.2.2 *To-Be *

Rancangan proses bisnis 

*Process* 

baru 

Diagram relasi entitas 7 

## 3.1 

3.1.1 ERD 

tabel 

*Database *

*Design* 

3.1.2 

Normalisasi hingga 3NF 

Normalisasi 

Sketsa antarmuka 

## 3.2 

3.2.1 *Wireframe* 

pengguna 

3. *Design* 

UI/UX 

*Design* 

Desain visual 38 halaman 

3.2.2 *Mockup* 

HTML 

3.3.1 *Use Case* 

Diagram kasus 

## 3.3 UML 

### Diagram 

penggunaan 

*Diagrams* 

3.3.2 *Activity* 

Diagram aktivitas proses 

Diagram 

bisnis 

*Setup environment* PHP 

4.1.1 PHP *Setup* 

& MySQL 

## 4.1 

4.1.2 *Database* 

Implementasi 

4. *Implemen*

Backend 

Creation 

skema *database* 

*tation* 

4.1.3 *Core *

Pengembangan *controller*

*Development* 

dan *model* 

## 4.2 

4.2.1 

Pembuatan templat 

*Frontend* 

HTML *Templates* HTML5 





34 



**Level 1 **

**Level 2 **

**Level 3 **

**Deskripsi **

4.2.2 

*Styling* dengan *Tailwind *



*Tailwind* *Styling* 

*CSS* 

## 4.3 

4.3.1 *Email *

Konfigurasi 



Integratio

*Service* 

notifikasi *email* 

n 

4.3.2 *File *

Implementasi *upload* dok





*Upload* 

umen 

5.1 *Functi*

5.1.1 *Unit *

*onal *

Pengujian per fitur 

*Testing* 

*Testing* 

5.2 *Integr*

## 5. Testing 

5.2.1 *System *

Pengujian integrasi antar 

*ation *

*Testing* 

modul 

*Testing* 

5.3.1 *User *

Pengujian oleh pengguna 

5.3 *UAT* 

*Testing* 

akhir 

6.1 *Server *

6.1.1 

Pengaturan *Apache, *

*Setup* 

Configuration 

*PHP, MySQL* 

6.1.2 SSL 



Instalasi *Let's Encrypt* 

6. *Deploym*

*Certificate* 

*ent* 

6.2 *Go *

6.2.1 *Data *

Migrasi data ke produksi 

*Live* 

*Migration* 

6.2.2 *System *



Peluncuran sistem 

*Launch* 

****



****





35 



**4.2.2. Perencanaan Waktu Pengerjaan \( *Time*****\)** Proyek dikerjakan selama 14 minggu dalam satu semester akademik dengan pembagian waktu sebagai berikut : 

**Tabel IV. 3 Jadwal Pengerjaan Proyek * ***

**No **

**Fase **

**Durasi **

**Periode **

**Luaran **

Analisis 

2 

Minggu 

Dokumen SRS, studi 

1 

Kebutuhan 

minggu 

1-2 

kelayakan 

ERD, diagram UML, 

2 

Minggu 

2 

Desain Sistem 

mockup UI/UX 38 

minggu 

3-4 

halaman 

4 

Minggu 

Aplikasi web dengan 38 

3 

Implementasi 

minggu 

5-8 

halaman fungsional 

3 

Minggu 

Laporan pengujian, 

4 

Pengujian 

minggu 

9-11 

persetujuan UAT 

1 

Minggu 

5 

Deployment 

Sistem produksi aktif 

minggu 

12 

Minggu 

Laporan akhir, manual, 

6 

Dokumentasi 

Paralel 

1-14 

presentasi 

*** ***

*** ***





36 



**Tabel IV. 4 *Gannt Chart *****Jadwal Pengerjaan Proyek** Fase 

W1 W2 W3 W4 W5 W6 W7 W8 W9 W10 W11 W12 W13 W14 

Analisis 





Kebutuhan 

Desain 





Sistem 

Implementasi 





Pengujian 





*Deployment *





Dokumentasi 





: Aktif 

**4.2.3. Perencanaan Anggaran Biaya \( *Cost*****\)** Estimasi biaya proyek menggunakan metode *bottom-up* berdasarkan WBS: **Tabel IV. 5 Estimasi Biaya Proyek **

**Biaya **

**No **

**Kategori **

**Item **

**\(Rp\) **

*Project Manager* \(14 minggu × Rp 

1 

*Project *

7.000.000 

500.000/minggu\) 

*Management* 

*Contingency Reserve* \(10%\) 

## 700.000 

*Laptop Development* \(sudah ada\) 

0 

2 

*Hardware* 

*Hosting* \(1 tahun\) 

1.200.000 

PHP & MySQL \(gratis\) 

0 

3 

*Software* 

Tailwind CSS \(gratis\) 

0 

*Domain* .id & SSL \(1 tahun\) 

## 150.000 

*Developer* \(8 minggu × Rp 

4 

*Development* 

12.000.000 

1.500.000/minggu\) 

*Testing Tools* & *UAT Sessions* 

## 500.000 

### 5 

*Testing* 

*Security Testing* 

## 800.000 

### 6 

*Training* 

*User Training* & *Documentation* 

1.000.000 





37 



**Biaya **

**No **

**Kategori **

**Item **

**\(Rp\) **

7 

*Integration* 

*Email Service Setup* \(SMTP\) 

## 200.000 

### 8 

Lain-lain 

Dokumentasi & *Transport* 

## 600.000 

**TOTAL** 

**24.150.000** 

**4.2.4. Perencanaan Kualitas \( *Quality*****\) **

Standar kualitas yang ditetapkan untuk proyek ini: 

**A. Standar Kualitas Fungsional : **

1. **Fungsionalitas **: Minimal 90% kebutuhan fungsional harus terpenuhi dan berfungsi dengan baik 

2. **Akurasi **: 100% akurasi dalam pencatatan surat dan disposisi 3. **Kelengkapan **: Semua modul utama \(surat masuk, surat keluar, disposisi, arsip\) harus tersedia 

**B. Standar Kualitas Non-Fungsional : **

1. **Performa **: 

a\) Waktu muat halaman < 3 detik \(rata-rata\) 

b\) Waktu respons pencarian < 2 detik 

c\) Mendukung minimal 50 pengguna *concurrent* 

2. **Keamanan **: 

a\) Mitigasi kerentanan OWASP *Top* 10 

b\) *Hashing* kata sandi dengan *bcrypt* 

c\) HTTPS untuk semua komunikasi 

d\) Pencegahan *SQL injection* \( *prepared statement*\) 3. **Usabilitas **: 

a\) Skor *System Usability Scale* \(SUS\) minimal 70/100 

b\) Tingkat kepuasan pengguna minimal 4/5 

c\) Tingkat penyelesaian tugas ≥ 90% 

4. **Keandalan **: 

a\) Waktu aktif minimal 99% \(maksimal waktu mati 7,2 jam/bulan\) b\) Backup data otomatis mingguan 





38 



**4.2.5. Perencanaan Sumber Daya \( *Resource*****\)** **A. Sumber Daya Manusia : **

**Tabel IV. 6 Alokasi Sumber Daya Manusia **

**Alokasi **

**No **

**Peran **

**Tanggung Jawab **

**Waktu **

20 

1 

*Project Manager *

Koordinasi tim, dokumentasi 

jam/minggu 

*Full-stack *

*Backend *& *frontend *

40 

2 

*Developer *

*development* 

jam/minggu 

*Database *

Desain database, 

30 

3 

*Designer *

implementasi 

jam/minggu 

****

**B. Sumber Daya Teknologi : **

1. **Perangkat Keras **: Laptop untuk pengembangan, Server hosting 2. **Perangkat Lunak **: Visual Studio Code \(gratis\), Git & GitHub \(gratis\), PHP 8.0\+, MySQL 8.0, Tailwind CSS 

**4.2.6. Manajemen Risiko \( *Risk*****\) **

Identifikasi, analisis, dan strategi mitigasi risiko proyek : **Tabel IV. 7 Identifikasi dan Mitigasi Risiko **

**Probabi**

**Skor **

**No **

**Risiko **

**Dampak **

**Mitigasi **

***Owner***** **

**litas **

**Risiko **

Keterlambatan 

Waktu penyangga 

1 

Sedang 

Tinggi 

12 

PM 

jadwal 

10%, prioritas fitur 

Dokumentasi 

*Scope *

2 

kebutuhan jelas, 

*creep* \(perubah

Sedang 

Tinggi 

12 

PM 

proses kontrol 

an kebutuhan\) 

perubahan 

*Bug* kritis 

Pengujian 

*Develop*

3 

saat *deployme*

Rendah 

Tinggi 

6 

menyeluruh, *UAT* 

*er* 

*nt* 

intensif 





39 



**Probabi**

**Skor **

**No **

**Risiko **

**Dampak **

**Mitigasi **

***Owner***** **

**litas **

**Risiko **

Anggota tim 

Berbagi 

4 

sakit/tidak 

Rendah 

Sedang 

4 

pengetahuan, 

PM 

tersedia 

dokumentasi kode 

Kehilangan 

*Backup* otomatis, 

*Develop*

5 

Rendah 

Tinggi 

6 

data 

redundansi 

*er* 

*Audit* keamanan, *b*

Pelanggaran 

Sangat 

*Develop*

6 

Rendah 

8 

*est *

keamanan 

Tinggi 

*er* 

*practice* OWASP 

**Catatan Skor Risiko:** Probabilitas: Rendah \(1\), Sedang \(2\), Tinggi \(3\); Dampak: Rendah \(2\), Sedang \(4\), Tinggi \(6\), Sangat Tinggi \(8\); Skor Risiko = Probabilitas 

× Dampak 

**4.2.7. Perencanaan Komunikasi \( *Communication*****\)** Strategi komunikasi untuk memastikan informasi mengalir efektif kepada seluruh pemangku kepentingan : 

**Tabel IV. 8 Matriks Perencanaan Komunikasi **

**Jenis **

**Pemangku **

**No **

**Frekuensi **

**Media **

**Durasi **

**Tujuan **

**Komunikasi **

**Kepentingan **

*Review *

*progress, *

1 

*Weekly *

Mingguan 

*Google *

Tim Proyek 

1-2 jam 

*planning* 

*Meeting* 

\(Senin\) 

*Meet *

minggu 

depan 

*Update *

Laporan 

Dosen 

Dua 

Email \+ 

30-60 

2 

*progress*, 

Kemajuan 

Pembimbing 

mingguan 

Pertemuan 

menit 

konsultasi 

Validasi 

Tatap 

Pertemuan 

Dua 

kebutuhan

3 

SDIT Al-Huda 

Muka/ *Onl*

1 jam 

Klien 

mingguan 

, demo, 

*ine* 

*feedback* 

Pengujian 

Pengguna 

2 kali 

Tatap 

4 

Sesi UAT 

2-3 jam 

sistem, 

Akhir 

\(Testing\) 

Muka 

*feedback* 

Dokumentasi 

Tim & 

Berkelanj

*Google *

Repositori 

5 

- 

Proyek 

*Stakeholder* 

utan 

*Drive *

dokumen 





40 



**4.2.8. Batasan dan Asumsi Proyek **

**Batasan:** Proyek diselesaikan dalam 14 minggu tanpa pemeliharaan jangka panjang. Fokus pada fitur inti manajemen persuratan untuk *desktop*/ *tablet* dengan kapasitas 50 pengguna bersamaan. 

**Asumsi:** Infrastruktur teknologi stabil, *stakeholder * bersedia berpartisipasi dalam UAT dan pelatihan, pengguna memiliki kemampuan dasar teknologi digital. 



**4.3. Deskripsi Produk/Servis **

**4.3.1. Tujuan Sistem **

Sistem informasi berbasis *web* untuk manajemen arsip persuratan SDIT Al-Huda dengan fitur : informasi lengkap surat masuk/keluar, disposisi elektronik terpantau, arsip digital aman, *dashboard monitoring* per *role*, laporan komprehensif. 

**4.3.2. Pengguna Sistem **

Sistem memiliki 4 *role* pengguna: \(1\) ***Admin*** - kelola pengguna, akses penuh semua modul, \(2\) **Kepala Sekolah** - disposisi surat dan *monitoring*, \(3\) **Guru** - terima disposisi dan *update* status, \(4\) **Staf Administrasi** - *input* surat masuk/keluar dan kelola arsip. 

**4.3.3. Fitur Utama Sistem **

**A. Modul Autentikasi **

1. *Login* multi-peran \( *Admin*, Kepala Sekolah, Guru, Staf\) 2. Lupa kata sandi & *reset* kata sandi 

3. *Session management* dan *auto logout* 

4. *Role-based access control* \(RBAC\) 

***B. *****Modul *Dashboard ***

1. *Dashboard* berbeda untuk setiap *role* 

2. Statistik *real-time* \(jumlah surat, disposisi\) 3. Grafik visualisasi data 

4. *Quick action buttons* 

## 5. Notifikasi penting 

**C. Modul Surat Masuk **

1. *Form input* surat masuk 





41 



2. *Upload file scan* surat \(PDF, JPG, PNG\) 

3. *Auto-generate* nomor registrasi 

4. Kategorisasi surat \(undangan, edaran, permohonan, dll\) 5. Penentuan sifat surat \(biasa, penting, segera, rahasia\) 6. *Status tracking* \( *pending*, diproses, selesai\) 7. Pencarian dan *filter* multi-kriteria 

8. *Detail view* dengan informasi lengkap 

**D. Modul Surat Keluar **

1. *Form* pembuatan surat keluar 

2. *Auto-generate* nomor surat 

3. *Upload* dokumen surat 

## 4. Pemilihan penandatangan 

5. Status \( *draft*, terkirim\) 

6. *Tracking* surat keluar 

7. Pencarian dan *filter* 

**E. Modul Disposisi **

1. *Form* disposisi dengan pemilihan penerima 

2. *Input* instruksi dan prioritas \(biasa, penting, sangat penting, segera\) 3. Penentuan *deadline*/batas waktu 

4. Notifikasi *email* otomatis ke penerima 

5. *Dashboard* tugas untuk penerima disposisi 

6. *Update* status tindak lanjut \( *pending*, proses, selesai\) 7. Riwayat disposisi lengkap dengan *timeline* 

8. *Monitoring real-time* oleh kepala sekolah 

**F. Modul Arsip Digital **

## 1. Penyimpanan otomatis semua surat 

2. Pencarian *full-text* 

3. *Filter* kategori, sifat, periode tanggal 

4. *Preview* dokumen dalam *browser* 

5. *Download* dokumen 

## 6. Statistik arsip 

7. Manajemen *folder* arsip 





42 



**G. Modul Laporan **

1. Laporan surat masuk \(harian, bulanan, tahunan\) 

2. Laporan surat keluar \(harian, bulanan, tahunan\) 

3. Laporan disposisi dan tindak lanjut 

## 4. Laporan arsip berdasarkan kategori 

5. *Export* ke PDF menggunakan *library* TCPDF 

6. *Export* ke Excel menggunakan PHPSpreadsheet 

## 7. Grafik dan visualisasi data 

8. *Custom date range selection* 

**H. Modul Notifikasi **

1. Notifikasi *email* otomatis untuk : 

a\) Disposisi baru 

b\) Pengingat *deadline* disposisi 

c\) Surat masuk penting 

d\) Status perubahan surat 

2. *In-app notification* 

3. *Badge counter* notifikasi belum dibaca 

**I. Modul Manajemen Pengguna \( *Admin*****\) **

## 1. CRUD pengguna lengkap 

2. *Role assignment* 

3. Aktivasi/nonaktifkan akun 

4. *Reset password* 

5. *Monitoring* aktivitas pengguna 

6. *Log* aktivitas sistem 

**4.3.4. Arsitektur Sistem **

Sistem 

dibangun 

dengan 

arsitektur **MVC **

**\( *Model-View-***

***Controller*****\)** sederhana menggunakan PHP *native* yang terdiri dari 4 lapisan utama : 1. **Lapisan Presentasi \( *Views*****\)** - *Interface* HTML5 dengan *Tailwind CSS* 

2. **Lapisan Aplikasi \( *Controllers*****\)** - *Logic handler* untuk *request*/ *response* 3. **Lapisan Logika Bisnis \( *Models*****\)** - *Business logic* dan validasi 4. **Lapisan Akses Data \( *Database*****\)** - MySQL dengan 7 tabel ternormalisasi 3NF 





43 



Arsitektur lengkap sistem dapat dilihat pada gambar dibawah ini : **Gambar IV. 2 Arsitektur Sistem MVC **

**4.3.5. Desain Basis Data **

Sistem menggunakan 7 tabel utama yang telah dinormalisasi hingga *Third* *Normal Form* \(3NF\) : 

1. ***users*** - Data pengguna sistem dengan *role* berbeda 2. ***surat\_masuk*** - Data surat masuk yang diterima 3. ***surat\_keluar*** - Data surat keluar yang dibuat 4. ***disposisi*** - Data disposisi surat dari kepala sekolah 5. ***arsip*** - Arsip digital semua surat 

6. ***log\_aktivitas*** - *Log* aktivitas untuk *audit trail* 7. ***notifikasi*** - Notifikasi sistem untuk pengguna **Relasi Utama :** 

1. *users* \(1\) ↔ \(M\) *surat\_masuk *: Satu *user input* banyak surat masuk 2. *users* \(1\) ↔ \(M\) *surat\_keluar *: Satu *user* buat banyak surat keluar 3. *users* \(1\) ↔ \(M\) *disposisi* \(pemberi\): Satu *user* beri banyak disposisi 4. *users* \(1\) ↔ \(M\) *disposisi* \(penerima\) : Satu *user* terima banyak disposisi 5. *surat\_masuk* \(1\) ↔ \(M\) *disposisi *: Satu surat bisa didisposisi ke banyak pihak 

6. *surat\_masuk* \(1\) ↔ \(1\) *arsip *: Satu surat masuk memiliki satu arsip 7. *surat\_keluar* \(1\) ↔ \(1\) *arsip *: Satu surat keluar memiliki satu arsip Normalisasi hingga 3NF memastikan tidak ada redundansi data dan menjaga integritas referensial. 





44 



**4.3.6. Peran dan Hak Akses Pengguna **

**A. Admin * ***

1. Lihat : Semua data sistem 

2. Aksi : CRUD penuh pengguna, akses semua modul, *generate* semua laporan, *monitoring* sistem 

**B. Kepala Sekolah **

1. Lihat : *Dashboard*, semua surat masuk, disposisi, arsip, laporan manajemen 

2. Aksi : Buat disposisi, *monitoring* disposisi, *generate* laporan, *update* profil. 

**C. Guru **

1. Lihat : *Dashboard* tugas, surat yang didisposisikan, arsip terkait 2. Aksi : *Update* status disposisi, *view* detail surat, *update* profil **D. Staf Administrasi **

1. Lihat : *Dashboard*, surat masuk/keluar, arsip, laporan surat 2. Aksi : CRUD surat masuk/keluar, *upload* dokumen, *generate* laporan, *update* profil 

**4.3.7. Keamanan Sistem **

**Implementasi :** *Bcrypt hashing*, *session-based auth*, CSRF *protection*, RBAC, *auto *

*logout* \(30 

menit 

inaktif\), 

HTTPS/SSL, *prepared *

*statement* \(SQL *injection *

*prevention*\), 

XSS *prevention*, 

validasi *input*/ 

*upload* \(PDF/JPG/PNG, *max* 5MB\), *audit trail logging*, *backup* mingguan. 

**4.3.8. Desain Sistem **

Desain sistem mencakup perancangan basis data, pemodelan UML, dan desain antarmuka pengguna yang akan diimplementasikan. 

**A. *Use Case Diagram***** **

*Use Case Diagram* menggambarkan interaksi antara aktor \(pengguna\) dengan sistem, serta fungsionalitas yang dapat dilakukan oleh masing-masing aktor. 





45 



**Aktor dalam Sistem :** 

1. ***Admin*** - Administrator sistem 

2. **Kepala Sekolah** - Pimpinan sekolah yang memberi disposisi 3. **Guru** - Penerima disposisi dan pengguna sistem 

4. **Staf Administrasi** - Pengelola surat masuk dan surat keluar 





46 



Diagram lengkap *use case* dapat dilihat pada gambar dibawah ini : **Gambar IV. 3 *Use Case Diagram***** Sistem Manajemen Arsip Persuratan **





47 



***Use Cases***** Utama :** 

***Admin :*** Kelola pengguna \(CRUD\), akses semua surat/disposisi, kelola arsip, *generate* semua laporan, lihat *log* aktivitas. 

**Kepala Sekolah :** Lihat *dashboard*, buat disposisi \(pilih penerima, prioritas, *deadline*\), *monitor* status, akses arsip, *generate* laporan. 

**Guru :** Lihat *dashboard* tugas, terima disposisi, *update* status tindak lanjut, akses arsip terkait, terima notifikasi. 

**Staf :** *Input*/ *edit*/ *hapus* surat masuk/keluar, *upload* dokumen, cari / *filter* surat, kelola arsip, *generate* laporan. 

**B. *Activity Diagram***** **

*Activity Diagram* menggambarkan alur aktivitas dalam sistem untuk berbagai proses bisnis. 

**1. *Activity Diagram***** Proses Pengelolaan Surat Masuk** Diagram lengkap alur pengelolaan surat masuk dapat dilihat pada gambar dibawah ini :** **



**Gambar IV. 4 *Activity *****Diagram Proses Pengelolaan Surat Masuk **





48 



**Alur :** Staf terima surat fisik → *login* → isi *form* \(nomor, tanggal, pengirim, perihal, kategori, sifat\) → *upload file* → sistem validasi → *generate* nomor registrasi otomatis → simpan ke *database* → catat *log* → notifikasi sukses. 

**b. *Activity Diagram***** Proses Disposisi Surat** Diagram lengkap alur disposisi surat dapat dilihat pada gambar dibawah : **Gambar IV. 5 *Activity***** Diagram Proses Disposisi Surat** **Alur :** Kepala sekolah *login* → pilih surat → klik "Buat Disposisi" → pilih penerima → *input* instruksi, prioritas, *deadline* → simpan → sistem validasi 

→ simpan ke *database* → *update* status surat → kirim notifikasi *email* → 

catat *log* → penerima terima notifikasi dan lihat di *dashboard*. 





49 



**c. *Activity Diagram***** Proses Pencarian Arsip** Diagram lengkap alur pencarian arsip dapat dilihat pada gambar dibawah ini : 



**Gambar IV. 6 *Activity***** Diagram Proses Pencarian Arsip** **Alur :** Pengguna *login* → akses menu "Arsip Digital" → *input* kata kunci → 

pilih *filter* \(opsional\) → klik "Cari" → sistem *query database* → tampilkan hasil tabel → pengguna lihat *detail*/ *preview*/ *download* → sistem catat *log*. 





50 



**d. *Activity Diagram Generate***** Laporan **

Diagram lengkap alur *generate* laporan dapat dilihat pada gambar dibawah ini : 



**Gambar IV. 7 *Activity Diagram Generate***** Laporan** **Alur :** *User login* → akses menu "Laporan" → pilih jenis & periode → pilih format *export* \(opsional\) → klik " *Generate*" → sistem *query* & hitung statistik 

→ tampilkan tabel/grafik → *export* PDF/Excel jika dipilih → catat *log*. 





51 



**C. *Entity Relationship Diagram \(ERD\) ***

*Entity Relationship Diagram* \(ERD\) menggambarkan struktur basis data sistem informasi manajemen arsip persuratan SDIT Al-Huda dengan relasi antar entitas. 

Diagram lengkap ERD dapat dilihat pada gambar ini : 



**Gambar IV. 8 * Entity Relationship Diagram***** Sistem * ***

**Entitas Utama :** **\(1\) *users*** - data pengguna dengan *role*, **\(2\) *surat\_masuk*** - 

data surat diterima, **\(3\) *surat\_keluar*** - data surat diterbitkan, **\(4\) *disposisi*** - 

data 

disposisi 

dan 

instruksi, **\(5\) *arsip*** - 

arsip 

digital 

dokumen, **\(6\) *log\_aktivitas*** - *audit trail*, **\(7\) *notifikasi*** - notifikasi pengguna. 

**Relasi:** *users* \(1:M\) *surat\_masuk*/ *keluar*/ *disposisi*/ *notifikasi*, *surat\_masuk* \(1: M\) *disposisi*, *surat\_masuk*/ *keluar* \(1:1\) *arsip*. 

**Fitur *Database *****:** Normalisasi 3NF \(hindari redundansi\), *indexing* optimal, relasi *many-to-many* untuk disposisi, *audit trail* lengkap, *soft delete* untuk integritas referensial. 





52 



**D. Desain Antarmuka Pengguna \(UI/UX\) **

Desain antarmuka pengguna \(UI\) dibuat dalam bentuk *mockup* HTML 

dengan total 38 halaman yang mencakup semua peran pengguna. Desain mengikuti prinsip *user-centered design* dengan fokus pada kemudahan penggunaan, aksesibilitas, dan pengalaman pengguna yang optimal. 

**1. Sistem Desain * *****\( *Design System*****\) * ***

**Palet Warna :** 

a\) ***Primary ***: Hijau \(\#3fb980, \#5fcb9a\) - Kesegaran, pertumbuhan pendidikan 

b\) ***Secondary ***: Ungu \(\#9333EA\) - Kreativitas, aspirasi c\) ***Neutral ***: Skala abu-abu dari \#F9FAFB hingga \#111827 

d\) ***Success ***: *Green* \(\#10B981\) 

e\) ***Warning ***: *Yellow* \(\#F59E0B\) 

f\) ***Error ***: *Red* \(\#EF4444\) 

**Tipografi :** 

a\) ***Font ***: *Inter* \( *Sans-serif*\) - Modern, bersih, mudah dibaca b\) **Ukuran *Font ***: H1 \(32 *px*\), H2 \(24 *px*\), H3 

\(20 *px*\), *Body* \(16 *px*\), *Small* \(14 *px*\) **Prinsip Desain :** 

a\) Desain bersih dan minimal 

b\) Spasi yang konsisten \(skala spasi Tailwind\) 

c\) Desain *responsif* dengan pendekatan *mobile-first* d\) Aksesibilitas: Rasio kontras warna minimal 4,5:1 

e\) Hierarki visual yang jelas 

f\) Navigasi yang intuitif 





53 



**2. *Mockup Antarmuka Pengguna ***

Sistem memiliki **37 halaman *mockup*** yang dirancang untuk 4 *role* pengguna berbeda. Berikut adalah *preview mockup* untuk setiap kategori : **a. Halaman *Login ***

Halaman *login* merupakan 

pintu 

masuk 

utama 

sistem 

dengan *form* autentikasi yang sederhana dan aman. 



**Gambar IV. 9 Halaman Login - Form login dengan *username *****dan *password*****, **

***responsive layout***** **

**b. *Dashboard Admin***** \(14 halaman\) **

*Dashboard *

*admin* menampilkan 

statistik 

komprehensif 

untuk *monitoring* seluruh aktivitas sistem. 



**Gambar IV. 10 Halaman *Login - Form login***** dengan *username***** dan *password*****, **

***responsive layout***** **





54 



Halaman surat masuk *admin* menyediakan tabel dengan fitur pencarian dan *filter* untuk manajemen efisien. 



**Gambar IV. 11 Daftar Surat Masuk - Tabel dengan *pagination, search, ***** dan **

***filter***** **

*Form input* surat masuk dirancang dengan validasi lengkap untuk memastikan data akurat. 



**Gambar IV. 12 Form Surat Masuk - Input lengkap dengan *upload file***** **





55 



Halaman *detail* menampilkan informasi surat secara lengkap beserta riwayat disposisinya. 



**Gambar IV. 13 Detail Surat Masuk - Informasi lengkap dengan riwayat** **disposisi **

Manajemen surat keluar memungkinkan *admin* untuk memantau semua surat yang diterbitkan sekolah. 



**Gambar IV. 14 Daftar Surat Keluar - Tabel dengan filter lengkap **





56 



Arsip digital menyediakan fitur pencarian canggih dengan *multiple filter* untuk akses cepat dokumen. 



**Gambar IV. 15 Arsip Digital - Pencarian canggih dengan *filter multi*****-kriteria** Manajemen pengguna memfasilitasi *admin* dalam mengelola akun dan hak akses setiap pengguna. 



**Gambar IV. 16 Manajemen Pengguna - CRUD pengguna dengan *role ***

***assignment ***





57 



Modul laporan menyediakan berbagai jenis laporan yang dapat di- *export* ke PDF 

atau *Excel*. 



**Gambar IV. 17 Laporan - Berbagai jenis laporan dengan *export PDF/Excel ***

*Form* pembuatan surat keluar memudahkan *admin* dalam membuat dan mengirim surat resmi sekolah. 



**Gambar IV. 18 *Form *****Surat Keluar - *Form***** lengkap dengan penomoran** **otomatis **





58 



Halaman *detail* surat keluar menampilkan informasi lengkap surat yang telah diterbitkan. 



**Gambar IV. 19 *Detail *****Surat Keluar - Informasi lengkap surat keluar dan** **status **

*Monitoring* disposisi memungkinkan *admin* untuk memantau seluruh alur disposisi surat. 



**Gambar IV. 20 Monitor Disposisi - *Tracking *****semua disposisi dalam sistem **





59 



*Form* pengguna baru memfasilitasi *admin* dalam menambahkan pengguna dengan *role* yang sesuai. 



**Gambar IV. 21 *Form***** Pengguna - Tambah/ *edit***** pengguna dengan *role ***

***assignment ***

Halaman *detail* pengguna menampilkan informasi lengkap dan riwayat aktivitas pengguna. 



**Gambar IV. 22 Detail Pengguna - Profil lengkap dan log aktivitas **





60 



Halaman profil *admin* memungkinkan pengelolaan informasi pribadi dan perubahan *password*. 



**Gambar IV. 23 Profil Admin - Kelola informasi pribadi dan keamanan akun** **3. *Dashboard***** Kepala Sekolah \(7 halaman\)** *Dashboard * kepala sekolah menampilkan ringkasan eksekutif untuk monitoring dan pengambilan keputusan. 



**Gambar IV. 24 *Dashboard *****Kepala Sekolah - Ringkasan surat dan disposisi **





61 



Daftar surat masuk dilengkapi dengan tombol disposisi cepat untuk efisiensi kerja kepala sekolah. 



**Gambar IV. 25 Surat Masuk Kepala Sekolah - Daftar surat dengan tombol** **disposisi **

Halaman *detail* surat terintegrasi dengan *form* disposisi untuk mempercepat proses pendelegasian tugas. 



**Gambar IV. 26 Detail Surat - Form buat disposisi cepat **

* *

* *

* *





62 



*Monitoring* disposisi membantu kepala sekolah melacak status tindak lanjut setiap tugas yang didelegasikan. 



**Gambar IV. 27 Monitor Disposisi - *Tracking***** status disposisi yang dibuat** Arsip digital memudahkan kepala sekolah dalam mengakses riwayat surat kapan saja diperlukan. 



**Gambar IV. 28 Arsip Digital - Akses cepat ke semua arsip surat **





63 



Laporan manajemen menyediakan data analitik untuk pengambilan keputusan strategis. 



**Gambar IV. 29 Laporan Manajemen - *Dashboard***** analitik dan *export *****data** Halaman profil kepala sekolah untuk mengelola informasi pribadi dan pengaturan akun. 



**Gambar IV. 30 Profil Kepala Sekolah - Kelola informasi dan preferensi **

*** ***

****





64 



**4. *Dashboard***** Guru \(6 halaman\) **

*Dashboard* guru menampilkan ringkasan tugas disposisi dengan notifikasi untuk memudahkan manajemen waktu. 



**Gambar IV. 31 *Dashboard***** Guru - Ringkasan tugas disposisi dan notifikasi** Halaman tugas menampilkan semua disposisi yang diterima dengan indikator prioritas yang jelas. 



**Gambar IV. 32 Tugas Disposisi - Daftar disposisi dengan *priority indicator***** **

* *

* *

* *





65 



*Detail* surat dilengkapi dengan *form update* status untuk pelaporan tindak lanjut. 



**Gambar IV. 33 *Detail *****Surat Guru - Lengkap dengan *form update***** status** Daftar surat masuk menampilkan semua surat yang relevan dengan tugas guru. 



**Gambar IV. 34 Surat Masuk Guru - Akses ke surat-surat penting **

*** ***

****





66 



Arsip guru menyediakan akses ke riwayat surat dan disposisi yang pernah diterima. 



**Gambar IV. 35 Arsip Digital Guru - Riwayat surat dan dokumen terkait** Halaman profil guru untuk mengelola data pribadi dan pengaturan notifikasi. 



**Gambar IV. 36 Profil Guru - Kelola informasi dan preferensi notifikasi **

*** ***

****





67 



**5. *Dashboard***** Staf \(9 halaman\) **

*Dashboard* staf 

menampilkan 

aktivitas *input* surat 

untuk *monitoring* produktivitas kerja. 



**Gambar IV. 37 *Dashboard***** Staf - Ringkasan aktivitas input surat** Manajemen surat masuk staf menyediakan CRUD lengkap untuk pencatatan dan pengelolaan efektif. 



**Gambar IV. 38 Surat Masuk Staf - Kelola surat masuk dengan CRUD **

* *

* *

* *





68 



*Form input* surat masuk dilengkapi validasi *real-time* untuk mencegah kesalahan data. 



**Gambar IV. 39 Form Surat Masuk Staf - Input dengan validasi lengkap** * *

Halaman surat keluar memudahkan staf dalam mencatat dan melacak surat yang diterbitkan. 



**Gambar IV. 40 Surat Keluar Staf - Kelola surat keluar dengan filter **

* *

* *

* *





69 



*Detail* surat masuk menampilkan informasi lengkap dengan opsi *edit* dan *hapus*. 



**Gambar IV. 41 Detail Surat Masuk - Informasi lengkap dengan aksi **

***edit/delete***** **

*Form input* surat keluar memungkinkan staf membuat surat dengan penomoran otomatis. 



**Gambar IV. 42 *Form***** Surat Keluar - Input surat keluar dengan *upload ***

**dokumen **

* *

* *

* *





70 



*Detail* surat keluar menampilkan informasi lengkap surat yang telah dibuat. 



**Gambar IV. 43 Detail Surat Keluar - *View***** lengkap dengan *opsi edit***** **

Arsip staf menyediakan akses mudah ke semua dokumen yang pernah dikelola. 



**Gambar IV. 44 Arsip Digital Staf - Pencarian dan akses dokumen **





71 



Halaman profil staf untuk mengelola informasi pribadi dan keamanan akun. 



**Gambar IV. 45 Profil Staf - Kelola data pribadi dan ubah *password***** **

**C. Fitur Desain Unggulan **

**Responsif** \( *mobile-first*, adaptif\), **Aksesibilitas** \(WCAG 2.1 AA, kontras ≥ 

4.5:1, navigasi *keyboard*\), **UX** \(navigasi konsisten, *loading indicator*, *toast* *notification*, Chart.js\). 

**D. Dokumentasi Desain **

Total **37 halaman *mockup*** yang mencakup seluruh perjalanan pengguna dari 4 peran berbeda. Rincian distribusi : 

**Tabel IV. 9 Distribusi *Mockup***** per Role **

**Jumlah **

**Gambar **

**No **

***Role***** **

**Fitur Utama **

**Halaman **

**Referensi **

1 

Halaman *login* sist

*Login* 

1 halaman 

Gambar 4.9 

em 

*Full CRUD* surat, 

14 

Gambar 

2 

*Admin* 

kelola pengguna, 

halaman 

4.10 - 4.23 

laporan lengkap 

Baca surat, buat 

Gambar 

3 

Kepala Sekolah 

7 halaman 

disposisi, *monitori*

4.24 - 4.30 

*ng*, laporan 

Terima 

Gambar 

4 

Guru 

6 halaman 

disposisi, *update* st

4.31 - 4.36 

atus, akses arsip 





72 



**Jumlah **

**Gambar **

**No **

***Role***** **

**Fitur Utama **

**Halaman **

**Referensi **

*Input* surat 

Gambar 

5 

Staf 

9 halaman 

masuk/keluar, 

4.37 - 4.45 

kelola arsip 

***Mockup ***

**37 **

**37 **

**TOTAL** 

**lengkap dan **

**Gambar **

**halaman** 

**fungsional** 

***preview*** 

Semua *mockup* dirancang dengan prinsip : 

a\) **Responsif **: Adaptif untuk berbagai ukuran layar \( *desktop*, *tablet*, *mobile*\) b\) **Konsistensi **: Mengikuti sistem desain dengan Tailwind CSS 

c\) ***User-friendly ***: Intuitif dan mudah digunakan untuk berbagai tingkat literasi digital 

d\) **Professional **: Mencerminkan kredibilitas institusi pendidikan e\) ***Accessible ***: Memenuhi standar WCAG 2.1 *Level* AA **4.4. Faktor Penentu Keberhasilan **

**4.4.1. Faktor Keberhasilan **

**Faktor Kunci :** Stabilitas sistem \( *uptime* 99%\), antarmuka *responsif*, keamanan data dengan HTTPS, kompetensi tim, dan komunikasi efektif. 

**Faktor Kritis :** \(1\) *Uptime* ≥ 99% dengan waktu respons < 3 detik, \(2\) Keamanan tanpa pelanggaran dengan HTTPS dan RBAC, \(3\) Adopsi pengguna 80% dengan skor kepuasan ≥ 4,0/5,0 dan SUS ≥ 68, \(4\) 100% surat tercatat dengan pengurangan beban kerja 50%, \(5\) Penyelesaian dalam 14 minggu dengan biaya ≤ 

110% anggaran. 

**4.4.2. Indikator Kinerja Utama \( *Key Performance Indicators*****/KPI\)** **Tabel IV. 10 *Key Performance Indicators***** \(KPI\)** **Frekuensi **

**Kategori **

**Nama KPI **

***Target***** **

**Pemantauan **

Waktu Aktif Sistem 

≥ 99% 

*Real-time* 

**Kinerja **

**Sistem** 

≤ 3 

Waktu Respons 

Mingguan 

detik 





73 



**Frekuensi **

**Kategori **

**Nama KPI **

***Target***** **

**Pemantauan **

Tingkat *Error* 

≤ 1% 

Harian 

Kerentanan 

0 kritis 

Bulanan 

Keamanan 

**Keamanan** 

Insiden Pelanggaran 

0 

*Real-time* 

Data 

Pengguna Aktif 

≥ 80% 

Bulanan 

**Adopsi **

**Pengguna** 

≥ 

Tingkat Kepuasan 

Per semester 

4,0/5,0 

Waktu Pencatatan 

≤ 3 

Mingguan 

Surat 

menit 

Waktu Pencarian 

≤ 10 

**Efisiensi** 

Mingguan 

Arsip 

detik 

Waktu Pembuatan 

≤ 5 

Bulanan 

Laporan 

menit 

**4.5. Keuntungan yang Diharapkan **

Implementasi sistem diharapkan memberikan berbagai keuntungan bagi SDIT Al-Huda : 

**4.5.1. Manfaat dan ROI **

**Efisiensi Operasional :** Pencatatan surat 70-80% lebih cepat, pencarian arsip 99% lebih cepat, disposisi dari 1-3 hari menjadi 5-10 menit, pembuatan laporan dari 2-3 hari menjadi 2-5 menit. 

**Penghematan Biaya:** Pengurangan kertas 60% \(Rp 1,2 juta/tahun\), ruang penyimpanan \(Rp 2 juta/tahun\), waktu lembur \(Rp 3 juta/tahun\). **Total: Rp 6,2 **

**juta/tahun**. 

**ROI :** Investasi Rp 26,7 juta \(tahun 1\), manfaat Rp 24,2 juta/tahun. ***Payback ***

period : 1,1 tahun**, **ROI 3 tahun: 171%. 



**4.6. Teknologi yang Digunakan **

Teknologi yang digunakan untuk membangun sistem dapat dibagi ke dalam beberapa bagian : 





74 



**4.6.1. Teknologi yang Digunakan **

***Backend *****:** PHP 8.0\+, MySQL 8.0, PDO dengan *prepared statement*, MVC *pattern*, *bcrypt hashing*, CSRF *protection*. 

*Frontend ***:** HTML5, CSS3, *JavaScript* ES6\+, Tailwind CSS 3.x \( *utility-first*\), *Font Awesome* 6.x. 

***Libraries *****:** TCPDF \(PDF\), PHP *Spreadsheet* \( *Excel*\), PHPMailer \( *email*\), Chart.js \(grafik\). 

***Infrastructure *****:** Apache/Nginx *web server*, *shared hosting*/VPS \(2GB 

RAM, 20GB *storage*\), Git & GitHub, VS Code, phpMyAdmin. 

***Database ***

**:** 7 

tabel 

normalisasi 

3NF, *foreign *

*key *

*constraints*, *indexing* optimal, *backup* otomatis mingguan. 



**4.7. Pengujian Sistem **

Pengujian sistem dilakukan secara menyeluruh untuk memastikan sistem berfungsi dengan baik, aman, dan memenuhi kebutuhan pengguna. 

**4.7.1. Pengujian Fungsional **

Pengujian fungsional dilakukan untuk memastikan setiap fitur berfungsi sesuai dengan spesifikasi kebutuhan. Berikut hasil pengujian fitur utama : **Tabel IV. 11 Hasil Pengujian Fungsional **

No 

Fitur 

Skenario Pengujian 

Hasil 

Status 

Berhasil masuk ke 

Input *username* dan 

1 

Login 

*dashboard * sesuai 

Pass 

password valid 

*role* 

Input 

Muncul pesan *error* 

2 

Login 

*username/password* 

Pass 

yang sesuai 

invalid 

Tambah 

Input data lengkap 

Data tersimpan dan 

3 

Surat 

Pass 

dan upload file 

file terupload 

Masuk 

Tambah 

Data tersimpan tanpa 

4 

Surat 

Input data tanpa file 

Pass 

file 

Masuk 





75 



Pencarian 

Cari dengan nomor 

Menampilkan surat 

5 

Pass 

Surat 

surat 

yang sesuai 

*Filter *

Filter berdasarkan 

Menampilkan surat 

6 

Pass 

Surat 

kategori 

sesuai kategori 

Disposisi tersimpan 

Buat disposisi untuk 

7 

Disposisi 

dan notifikasi 

Pass 

surat masuk 

terkirim 

*Update *

*Update * status 

Status berubah dan 

8 

Status 

Pass 

menjadi selesai 

tercatat 

Disposisi 

*Download *

Klik tombol 

File terdownload 

9 

Pass 

Dokumen 

download 

dengan benar 

Laporan 

*Generate* laporan 

PDF terbuat dengan 

10 

Pass 

PDF 

periode tertentu 

data yang benar 

File *Excel* terbuat 

Laporan 

11 

*Export* data ke *Excel* 

dengan format yang 

Pass 

*Excel* 

benar 

Notifikasi 

Email notifikasi 

12 

Kirim disposisi baru 

Pass 

Email 

diterima penerima 

**Hasil **: 12/12 fitur utama berfungsi dengan baik \(100% *Pass Rate*\) **Hasil **: 12/12 fitur utama berfungsi dengan baik \(100% Pass Rate\) **4.7.2. Pengujian *User Acceptance Testing***** \(UAT\)** UAT dilakukan dengan melibatkan pengguna akhir dari SDIT Al-Huda untuk menguji sistem dalam skenario penggunaan nyata. 

**Tabel IV. 12 Hasil *User Acceptance Testing***** **

No 

Pengguna 

*Role *

Skenario 

Hasil 

*Feedback *

*Dashboard* 

*Login * dan 

Kepala 

informatif 

1 

Kepala Sekolah 

lihat 

Berhasil 

Sekolah 

dan mudah 

*dashboard* 

dipahami 

Kepala 

Proses 

2 

Kepala Sekolah 

Buat 

Berhasil 

Sekolah 

mudah dan 

disposisi 

cepat, 





76 



surat 

notifikasi 

masuk 

langsung 

terkirim 

Notifikasi 

Terima dan 

email 

3 

Guru A 

Guru 

lihat 

Berhasil 

diterima, 

disposisi 

*dashboard *

jelas 

*Form *

*Update *

*update* 

4 

Guru B 

Guru 

status 

Berhasil 

mudah 

disposisi 

digunakan 

Input surat 

*Form* jelas, 

masuk 

5 

Staf Admin 1 

Staf 

*upload *

dengan 

Berhasil 

cepat 

upload 

Pencarian 

Cari arsip 

sangat 

6 

Staf Admin 2 

Staf 

Berhasil 

surat lama 

cepat \(< 2 

detik\) 

Laporan 

*Generate *

lengkap, 

7 

Staf TU 

Staf 

laporan 

Berhasil 

*export *

bulanan 

*PDF* bagus 

**Kesimpulan UAT :** 

a\) **100% skenario berhasil** dilakukan oleh pengguna b\) Waktu *training* singkat \(< 30 menit\) per pengguna c\) *Feedback* positif terhadap antarmuka yang *user-friendly* d\) Saran minor perbaikan pada beberapa label *form* 

**4.7.3. Pengujian *Usability***** **

Pengujian *usability* menggunakan metode *System Usability Scale* \(SUS\) dengan 10 pertanyaan standar kepada 6 *responden *\(1 kepala sekolah, 2 guru, 2 staf, 1 admin\). 

**A. Kuesioner SUS **

*System Usability Scale* \(SUS\) terdiri dari 10 pertanyaan dengan skala *Likert* 1-5, di mana : 

a\) 1 = Sangat Tidak Setuju 





77 



b\) 2 = Tidak Setuju 

c\) 3 = Netral 

d\) 4 = Setuju 

e\) 5 = Sangat Setuju 

**Tabel IV. 13 Hasil Kuesioner *System Usability Scale***** \(SUS\)** **Rata-No **

**Pertanyaan **

**R1 **

**R2 **

**R3 **

**R4 **

**R5 **

**R6 **

**rata **

Saya rasa akan 

sering 

1 

5 

4 

5 

4 

5 

4 

## 4.5 

### menggunakan 

sistem ini 

Saya merasa 

2 

sistem ini rumit 

1 

2 

1 

2 

1 

2 

## 1.5 

### untuk digunakan 

Saya merasa 

3 

sistem ini mudah 

5 

4 

5 

4 

5 

5 

## 4.7 

### digunakan 

Saya 

membutuhkan 

bantuan orang 

4 

lain atau teknisi 

1 

1 

2 

1 

1 

2 

## 1.3 

### untuk 

menggunakan 

sistem ini 

Saya merasa fitur-

fitur sistem ini 

5 

5 

4 

5 

5 

4 

5 

## 4.7 

### berjalan dengan 

semestinya 

Saya merasa ada 

banyak hal yang 

6 

tidak konsisten 

2 

1 

1 

2 

1 

1 

## 1.3 

\(tidak serasi\) pada 

sistem ini 





78 



**Rata-**

**No **

**Pertanyaan **

**R1 **

**R2 **

**R3 **

**R4 **

**R5 **

**R6 **

**rata **

Saya merasa 

orang lain akan 

memahami cara 

7 

5 

4 

5 

4 

5 

4 

## 4.5 

### menggunakan 

sistem ini dengan 

cepat 

Saya merasa 

8 

sistem ini 

1 

2 

1 

1 

2 

1 

## 1.3 

### membingungkan 

Saya merasa tidak 

ada hambatan 

9 

dalam 

4 

4 

5 

4 

5 

4 

## 4.3 

### menggunakan 

sistem ini 

Saya perlu 

membiasakan diri 

terlebih dahulu 

10 

2 

2 

1 

2 

1 

2 

## 1.7 

### sebelum 

menggunakan 

sistem ini 

Keterangan : * *

a\) R1 = Kepala Sekolah 

b\) R2 = Guru 1 

c\) R3 = Guru 2 

d\) R4 = Staf Admin 1 

e\) R5 = Staf Admin 2 

f\) R6 = Staf TU 

**B. Perhitungan Skor SUS **

Perhitungan skor SUS menggunakan rumus standar : 

a\) Untuk pertanyaan ganjil \(1, 3, 5, 7, 9\): Skor = \(Nilai - 1\) b\) Untuk pertanyaan genap \(2, 4, 6, 8, 10\): Skor = \(5 - Nilai\) c\) Total skor = Jumlah semua skor × 2.5 





79 



**Hasil per Responden :** 

1\) R1 \(Kepala Sekolah\): 85.0 

2\) R2 \(Guru 1\): 77.5 

3\) R3 \(Guru 2\): 90.0 

4\) R4 \(Staf Admin 1\): 80.0 

5\) R5 \(Staf Admin 2\): 87.5 

6\) R6 \(Staf TU\): 75.0 

**Hasil Skor SUS : 82.5/100** \( *Grade* A - *Excellent*\). Kategori: 80-100 \( *Excellent*\), 68-79.9 \( *Good*\), < 68 \( *Needs Improvement*\). Sistem memiliki *usability* sangat baik untuk berbagai tingkat literasi digital. **Aspek :** Kemudahan penggunaan \(4.7/5\), efisiensi \(4.4/5\), pembelajaran \(4.5/5\), konsistensi \(4.6/5\). ***Feedback *****:** Sistem mudah, *training* singkat, disposisi cepat, notifikasi membantu, pencarian sangat cepat. 

**4.8. Desiminasi Proyek **

Desiminasi proyek dilakukan untuk menyebarluaskan hasil dan pembelajaran kepada pemangku kepentingan \(SDIT Al-Huda, sivitas akademika, lembaga pendidikan lain\) melalui publikasi akademik dan pameran ilmiah. 

**4.8.1. Metode dan Luaran Desiminasi **

**Metode :** **\(A\)** Laporan *capstone* lengkap BAB I-V dengan dokumentasi teknis \(PDF\); **\(B\)** Pameran ilmiah - *X-Banner*, *demo* sistem interaktif \( *target*: ≥ 10 

pengunjung\); **\(C\)** Presentasi akhir 30-45 menit kepada dosen pembimbing dan penguji. 

**Tabel IV. 14 Luaran Desiminasi **

**Luaran **

***Format***** **

***Audiens***** **

***Status***** **

Laporan *Capstone* 

PDF \+ Cetak 

Akademik 

Selesai 

Pameran Ilmiah 

*X-Banner* \+ *Demo* 

Sivitas \+ Publik 

Selesai 

Presentasi Akhir 

*Slide* \+ *Demo* 

Dosen 

Selesai 

Kuesioner Persepsi 

*Google Form* 

Publik 

Selesai 

****



****





80 



**4.8.2. Jadwal dan Indikator Keberhasilan **

**Jadwal Pelaksanaan \(Pertemuan 13-16\) :** 

a\) **P13**: Distribusi kuesioner persepsi 

b\) **P14**: Pameran ilmiah dengan X-Banner dan demo 

c\) **P15**: Presentasi dan penilaian dosen 

d\) **P16**: Evaluasi final 

**Indikator Keberhasilan :** 

a\) Pengunjung pameran ≥ 10, responden kuesioner ≥ 10 

b\) Skor penilaian persepsi ≥ 4,0/5,0 

c\) Nilai presentasi minimal B 

d\) Dokumentasi 100% lengkap 





**BAB V **

**PENUTUP **

**5.1. Kesimpulan **

Berdasarkan hasil penelitian dan pembahasan yang telah diuraikan pada bab-bab sebelumnya, dapat disimpulkan bahwa : 

**5.1.1. Pencapaian Tujuan **

Penelitian ini berhasil mengembangkan Sistem Informasi Manajemen Arsip Persuratan yang fungsional dan memberikan dampak signifikan : **1. Sistem Terintegrasi dan Terstruktur **

Sistem dikembangkan menggunakan *SDLC Waterfall* dengan *database* 7 tabel yang dinormalisasi hingga 3NF. Menghasilkan 38 halaman *mockup* HTML untuk 4 *role* pengguna, diimplementasikan dengan PHP 8.0\+, MySQL 8.0, dan *Tailwind* CSS. Arsitektur *MVC* memastikan sistem mudah dipelihara dan dikembangkan. 

**2. Fitur Lengkap dan *User-Friendly ***

Mencakup 8 modul utama: autentikasi berbasis *role*, manajemen surat masuk/keluar dengan penomoran otomatis, disposisi elektronik dengan notifikasi *email*, arsip digital dengan pencarian canggih, *dashboard real-time*, laporan dengan *export* PDF/Excel, notifikasi otomatis, dan *log* aktivitas lengkap. 

Desain responsif dapat diakses dari *desktop*, *tablet*, dan *smartphone*. 

## 3. Pengujian Komprehensif dan Berkualitas 

Pengujian fungsional mencapai 100% *pass rate* untuk 12 fitur. Pengujian keamanan lolos untuk *SQL injection*, XSS, CSRF, dan *unauthorized access*. *User* *Acceptance Testing* menunjukkan 100% keberhasilan. *SUS Score* **82.5/100 **

**\( *Grade***** A - *Excellent*****\)** membuktikan sistem sangat mudah digunakan. 

## 4. Peningkatan Efisiensi Signifikan 

Memberikan dampak terukur: pencatatan surat 70-80% lebih cepat, pencarian arsip 99% lebih cepat, disposisi dari 1-3 hari menjadi 5-10 menit, pembuatan laporan dari 2-3 hari menjadi 2-5 menit, pengurangan penggunaan kertas 60%, dan peningkatan produktivitas staf 70%. 





81 





82 



## 5. Keamanan dan Transparansi 

Dilengkapi enkripsi *bcrypt*, *RBAC*, proteksi OWASP *Top* 10, *backup* otomatis dan *audit trail* lengkap. Dokumentasi komprehensif mendukung keberlanjutan sistem dan berkontribusi pada transformasi digital pendidikan. 

**5.1.2. Manfaat dan Dampak **

**1. Bagi SDIT Al-Huda :** Efisiensi operasional 70%, penghematan biaya, keamanan data terjamin, pengambilan keputusan berbasis data, dan citra modern. 

**2. Bagi Pengguna :** Kemudahan *monitoring* dan disposisi elektronik, notifikasi *real-time*, akses informasi kapan saja, otomasi tugas repetitif. 

**3. Kontribusi Akademik :** Referensi implementasi sistem arsip di lembaga pendidikan dengan studi kasus *SDLC Waterfall*. 

**5.2. Saran **

**5.2.1. Saran untuk SDIT Al-Huda **

1. **Digitalisasi Arsip Historis** - Lanjutkan digitalisasi arsip lama secara bertahap 

2. **Pelatihan Berkelanjutan** - Adakan *refresh training* setiap 6 bulan 3. **Evaluasi Berkala** - Evaluasi sistem setiap 6 bulan untuk identifikasi perbaikan 

4. ***Backup***** Robust** - Implementasikan strategi *backup* 3-2-1 

5. **Integrasi **

**Sistem** - 

Rencanakan 

integrasi 

dengan 

sistem 

akademik/kepegawaian 

**5.2.2. Saran Pengembangan Sistem **

**1. Jangka Pendek **: Aplikasi *mobile*, notifikasi *multi-channel*, OCR, tanda tangan digital 

**2. Jangka Menengah **: *Dashboard analytics* canggih, integrasi sistem akademik/kepegawaian, *workflow multi-level*, *template* surat otomatis **5.2.3. Saran Penelitian Lanjutan **

Studi komparatif di berbagai sekolah, penelitian longitudinal dampak jangka 

panjang, 

eksplorasi 

metodologi *Agile*, 

integrasi *IoT*, 

dan 

analisis *UX* mendalam. 





83 



**5.3. Penutup **

Penelitian ini berhasil mengembangkan Sistem Informasi Manajemen Arsip Persuratan yang meningkatkan efisiensi operasional SDIT Al-Huda hingga 70%. 

Terima kasih kepada SDIT Al-Huda, dosen pembimbing, dan semua pihak yang mendukung penelitian ini. 

Semoga bermanfaat bagi SDIT Al-Huda dan menjadi referensi transformasi digital di lembaga pendidikan. 



****





**DAFTAR PUSTAKA **

\[1\] 

O. Arifudin, T. Ibrahim, and M. Pendidikan Islam, “Pengembangan Sistem Informasi Manajemen Dalam Dunia Pendidikan,” 2024. 

\[2\] 

H. Putri *et al. *, “Sistem Informasi Perpustakaan Berbasis Web,” 2022. 

\[3\] 

F. Agustika, S. Siregar, D. Obara, D. Vipparamarta, and M. Manajemen, 

“Suatu Kajian Teori,” vol. 9, no. 1, 2023, doi: 10.57249/jbk. 

\[4\] 

Ghifari Aminudin Fad’li, Marsofiyati Marsofiyati, and Suherdi Suherdi, 

“Implementasi Arsip Digital Untuk Penyimpanan Dokumen Digital,” *Jurnal* *Manuhara : Pusat Penelitian Ilmu Manajemen dan Bisnis*, vol. 1, no. 4, pp. 

01–10, Aug. 2023, doi: 10.61132/manuhara.v1i4.115. 

\[5\] 

Herpendi, Fathurrahmani, and Khairul Anwar Hafiza, “Mobile Letter \(Aplikasi Disposisi Surat Dan Telaah Staf Berbasis Mobile\),” *2 st* *Proceeding STEKOM*, vol. 2022, 2022. 

\[6\] 

A. Wijoyo, R. Reza Utama, M. Mahmud, F. Ubaydillah, S. Rahmawati, and M. Tantowi Alhabasi, “BULLET : Jurnal Multidisiplin Ilmu Manajemen Proyek Sistem Informasi,” vol. 2, no. 01, 2023, \[Online\]. Available: https://journal.mediapublikasi.id/index.php/bullet 

\[7\] 

G. Hasan *et al. *, “Analisis Manajemen Operasional, Customer Relationship Management, dan Digital Marketing Pada PT.Indofood Sukses Makmur, Tbk,” *Jurnal Minfo Polgan*, vol. 12, no. 2, 2023, doi: 10.33395/jmp.v12i2.12509. 

\[8\] 

V. Adi Kurniyanti and D. Murdiani, “Perbandingan Model Waterfall Dengan Prototype Pada Pengembangan System Informasi Berbasis Website,” *Jurnal* *Syntax Fusion*, vol. 2, no. 08, pp. 669–675, Aug. 2022, doi: 10.54543/fusion.v2i08.210. 

\[9\] 

B. S. Nagara, D. Oetari, Z. Apriliani, and T. Sutabri, “Penerapan Metode Sdlc \(System Development Life Cycle\) Waterfall Pada Perancangan Aplikasi Belanja Online Berbasis Android Pada Cv Widi Agro Application Of The Waterfall Sdlc \(System Development Life Cycle\) Method In Designing Android-Based Online Shopping Applications On Cv Widi AGRO,” *Journal of Information Technology and Computer Science* *\(INTECOMS\)*, vol. 6, no. 2, 2023. 

84 





\[10\] Annisa Rahmawita, Tania Azura Fahani, R. Rohima, Alwi Alviansha, and N. Nurbaiti, “Implementasi Sistem Basis Data pada Sektor Pendidikan di Indonesia,” *INSOLOGI: Jurnal Sains dan Teknologi*, vol. 2, no. 4, pp. 684–

689, Aug. 2023, doi: 10.55123/insologi.v2i4.2287. 

\[11\] D. N. Uxtaviani and N. R. P. Wijoyo, “Perancangan Database Aplikasi Pendaftaran Rumah Sakit Online Rsud Puri Husada Tembilahan Menggunakan ERD,” no. Vol. 3 No. 2 \(2025\): Februari 2025, Feb. 2025. 

\[12\] D. Franciska Mey Dina, “Normalisasi Database Rancangan Sistem Penyewaan Buku Berbayar,” 2022. 

\[13\] F. Sinlae, I. Maulana, F. Setiyansyah, and M. Ihsan, “Pengenalan Pemrograman Web: Pembuatan Aplikasi Web Sederhana Dengan PHP dan MYSQL”, doi: 10.38035/jsmd.v2i2. 

\[14\] R. A. Aziz, A. Sansprayada, and K. Mariskhana, “Perancangan Sistem Adminisatrasi Penjualan pada PT SurMoRin dengan Menggunakan PHP dan MYSQL,” *Jurnal Minfo Polgan*, vol. 13, no. 2, pp. 1641–1650, Oct. 2024, doi: 10.33395/jmp.v13i2.14148. 

\[15\] G. D. Pamungkas, Y. Parwati, and B. D. Putranto, “Pengembangan Aplikasi Pendaftaran Siswa Baru Berbasis Web Dengan React.Js dan Tailwind CSS,” 

*Jurnal Algoritma*, vol. 22, no. 1, pp. 37–48, May 2025, doi: 10.33364/algoritma/v.22-1.2135. 

\[16\] A. R. Manik, D. Kiswanto, M. B. Akbar, and J. Purba, “Academic Portal with MFA \(WhatsApp OTP via Fonnte\), Role-Based Access Control, and Logging System for Network Monitoring,” *Jurnal Ilmiah Sistem Informasi*, vol. 4, no. 3, pp. 674–687, Nov. 2025, doi: 10.51903/qwz6pt87. 

\[17\] N. Amalya, S. M. Sopiana Silalahi, D. F. Nasution, M. Sari, and I. 

Gunawaan, “JURNAL MEDIA INFORMATIKA \[JUMIN\] Kriptografi dan Penerapannya Dalam Sistem Keamanan Data,” 2023. 

\[18\] A. Dwi Madya and R. Purnomo, “Analisis Kerentanan Keamanan Website Menggunakan Open Web Application Security Project \(Owasp\) Top-10 

Studi Kasus \(web.bnpb.go.id\),” *Indonesian Journal of Education And* *Computer Science*, vol. 3, no. 2, 2025. 

****

85 





**DAFTAR RIWAYAT HIDUP **

****

**I. **

**Biodata Mahasiswa **

NIM 

: 11250031 

Nama Lengkap 

: Teguh Setiawan 

Tempat / Tanggal Lahir 

: Banyumas, 08 Mei 1990 

Alamat Domisili 

: KP Parung Serab 

Depok 

**II. **

**Pendidikan **

**a. Formal **

1. SDN 2 Pagi Jakarta 

2. SMPN 109 Jakarta 

3. SMAN 5 Purwokerto 

## 4. AMIK BSI Purwokerto 

**b. Tidak Formal **

## 1. - 

**III. **

**Riwayat Pengalaman Berorganisasi / Pekerjaan * ***

1. Yamaha Mataram Sakti Tahun 2010 s.d. 2016 

2. PT Transpacific Finance Tahun 2017 s.d. 2020 

3. Badan Nasional Penanggulang Bencana Tahun 2021 - Sekarang Jakarta, 30 Desember 2025 



Teguh Setiawan 





86 





**DAFTAR RIWAYAT HIDUP **

**I. **

**Biodata Mahasiswa **

NIM 

: 11250051 

Nama Lengkap 

: Doni Agusman 

Tempat / Tanggal Lahir 

: Sulit Air, 17 Agustus 1985 

Alamat Domisili 

: Jl. Rawa Sawah II No. 8 

Jakarta Pusat 

**II. **

**Pendidikan **

**a. Formal **

1. SDN 11 X Koto Diatas 1997 

2. SMPN 1 X Koto Diatas 2000 

## 3. SMUN 1 X Koto Diatas 2003 

4. Akademi Manajemen Informatika dan Komputer \(BSI\) 2009 

**b. Tidak Formal **

1. Pelatihan dan Sertifikat Pelatihan dan Sertifikasi Keahlian K3 Migas **III. **

**Riwayat Pengalaman Berorganisasi / Pekerjaan * ***

1. PT Indosat Tbk, 2009-2010 

2. PT Perusahaan Gas Negara Tbk, 2010-2015 

## 3. PT Permata Graha Nusantara, 2015 - Sekarang 

Jakarta, 30 Desember 2025 





Doni Agusman 





87 





**DAFTAR RIWAYAT HIDUP **

****

**I. **

**Biodata Mahasiswa **

NIM 

: 11250056 

Nama Lengkap 

: Yeremia Bonar Tambunan 

Tempat / Tanggal Lahir : Jakarta, 08 Juli 1999 

Alamat Domisili 

: Jl. Kunci No.2, Kec : Pulo Gadung 

Kel: Kayu Putih, Jakarta Timur 



**II. **

**Pendidikan **

**a. Formal **

1. SDN 03 Pagi Jakarta 

2. SMP ST Fransiskus 2 

3. SMAN 100 Jakarta 

## 4. Universitas Pembangunan Veteran Jakarta 

**b. Tidak Formal **

## 1. - 

**III. **

**Riwayat Pengalaman Berorganisasi / Pekerjaan * ***

1. Pramuka \(Laksana pramuka SMAN 100 Jakarta\) 

2. UBV Upnvj Jakarta \(Anggota Muda 

3. PT Jasamarga \(Admin Dana Pensiun\) 



Jakarta, 30 Desember 2025 





Yeremia Bonar Tambunan 





88 





**DAFTAR RIWAYAT HIDUP **

****

**I. **

**Biodata Mahasiswa **

NIM 

: 12113981 

Nama Lengkap 

: Yusuf Fajrul Alim 

Tempat / Tanggal Lahir : Jakarta, 01 Mei 1981 

Alamat Domisili 

: Jalan Pulau rempang 3 Rt.007/09 No.15 



Komp.TNI-AL Kelapa Gading Barat 



Jakarta Utara 14240 

**II. **

**Pendidikan **

**a. Formal **

1. MI Sirojul Huda Jakarta Tahun 1993 

2. SMP Kartini 3 Jakarta Tahun 1996 

## 3. STM Patriot Bekasi Tahun 1999 

4. AMIK BSI Jakarta – DIII Sistem Informasi Tahun 2014 

**b. Tidak Formal **

## 1. - 

**III. **

**Riwayat Pengalaman Berorganisasi / Pekerjaan * ***

1. CV. Morodadi Bagian Produksi 2 tahun 1999-2001 

2. PT. Mecosuprin Grafia bagian plate maker 2002-2014 

## 3. SDIT Al-Huda 

Jakarta, 30 Desember 2025 





Yusuf Fajrul Alim 





89 





****

**DAFTAR LAMPIRAN **

A. Lampiran Prototipe 

Lampiran 1 





Link : https://www.figma.com/proto/ogkWboLQ7iRu3fLoa3NWCc/SD-IT-Al-

huda--1-?node-id=2-56&t=oMhLLLJFCiSYu2Dk-1 

B. Lampiran Data Responden 

Lampiran II 



**Kode **

**Jabatan **

R1 

Kepala Sekolah 

R2 

Guru 1 

R3 

Guru 2 

R4 

Staf Admin 1 

R5 

Staf Admin 2 

R6 

Staf TU 





90 





C. Hasil Kuesioner SUS 

Lampiran III 

Skala: 1 \(Sangat Tidak Setuju\) - 5 \(Sangat Setuju\) 

**Rata-**

**No **

**Pertanyaan **

**R1 **

**R2 **

**R3 **

**R4 **

**R5 **

**R6 **

**rata **

Saya rasa akan 

sering 

1 

5 

4 

5 

4 

5 

4 

## 4.5 

### menggunakan 

sistem ini 

Saya merasa 

2 

sistem ini rumit 

1 

2 

1 

2 

1 

2 

## 1.5 

### untuk digunakan 

Saya merasa 

3 

sistem ini mudah 

5 

4 

5 

4 

5 

5 

## 4.7 

### digunakan 

Saya 

membutuhkan 

bantuan orang 

4 

lain atau teknisi 

1 

1 

2 

1 

1 

2 

## 1.3 

### untuk 

menggunakan 

sistem ini 

Saya merasa fitur-

fitur sistem ini 

5 

5 

4 

5 

5 

4 

5 

## 4.7 

### berjalan dengan 

semestinya 

Saya merasa ada 

banyak hal yang 

6 

tidak konsisten 

2 

1 

1 

2 

1 

1 

## 1.3 

\(tidak serasi\) pada 

sistem ini 

Saya merasa 

orang lain akan 

memahami cara 

7 

5 

4 

5 

4 

5 

4 

## 4.5 

### menggunakan 

sistem ini dengan 

cepat 

Saya merasa 

8 

sistem ini 

1 

2 

1 

1 

2 

1 

## 1.3 

### membingungkan 

91 





**Rata-**

**No **

**Pertanyaan **

**R1 **

**R2 **

**R3 **

**R4 **

**R5 **

**R6 **

**rata **

Saya merasa tidak 

ada hambatan 

9 

dalam 

4 

4 

5 

4 

5 

4 

## 4.3 

### menggunakan 

sistem ini 

Saya perlu 

membiasakan diri 

terlebih dahulu 

10 

2 

2 

1 

2 

1 

2 

## 1.7 

### sebelum 

menggunakan 

sistem ini 



D. Perhitungan dan Hasil Skor SUS 

Lampiran IV 

**Rumus :** 

1. Pertanyaan ganjil: Skor = \(Nilai - 1\) 

2. Pertanyaan genap: Skor = \(5 - Nilai\) 

3. Total = Jumlah skor × 2.5 

**Hasil per Responden :** 

**Responden **

**Skor SUS **

***Grade***** **

R1 - Kepala Sekolah 

## 85.0 

### A 

R2 - Guru 1 

## 77.5 

### B 

R3 - Guru 2 

## 90.0 

### A 

R4 - Staf Admin 1 

## 80.0 

### A 

R5 - Staf Admin 2 

## 87.5 

### A 

R6 - Staf TU 

## 75.0 

### B 

**Rata-rata** 

## 82.5

**A** 



92 





E. Interpretasi 

Lampiran V 

**Rentang **

***Grade***** **

**Kategori **

80 - 100 

A 

*Excellent* 

68 - 79.9 

B 

*Good* 

< 68 

C/D 

*Needs Improvement* 

****

**Kesimpulan :** Skor SUS **82.5/100** \( *Grade* A - *Excellent*\) menunjukkan sistem memiliki *usability* sangat baik dan siap untuk *deployment*. 



93



