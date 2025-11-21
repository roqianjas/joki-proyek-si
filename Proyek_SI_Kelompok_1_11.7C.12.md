**PERANCANGAN SISTEM MANAJEMEN ARSIP PERSURATAN DI SDIT AL-HUDA**

**Dosen Pengampu :**

**[IKA KURNIAWATI, M.Kom]{.mark}**

![](media/image1.jpg){width="2.5833333333333335in"
height="2.609783464566929in"}

**Makalah ini diajukan untuk memenuhi Tugas Mata Kuliah**

**Proyek Sistem Informasi II**

**KELOMPOK 1**

> **1. TEGUH SETIAWAN 11250031**
>
> **2. YEREMIA BONAR 11250056**
>
> **3. DONI AGUSMAN 11250051**
>
> **4. YUSUF FAJRUL ALIM 11250128**
>
> **Kelas 11.7C.12**

**PROGRAM STUDI SISTEM INFORMASI**

**FAKULTAS TEKNOLOGI INFORMASI**

**UNIVERSITAS NUSA MANDIRI**

**JAKARTA**

**2026**

**KATA PENGANTAR**

Segala puji dan syukur penulis panjatkan kehadirat Allah SWT karena atas
rahmat dan karunia-Nya penulis dapat menyelesaikan laporan tugas Mata
Kuliah Proyek Sistem Informasi II yang berjudul "Optimalisasi Manajemen
Surat Masuk dan Keluar Melalui Sistem Informasi di SDIT Al-Huda" sesuai
dengan waktu yang telah ditentukan. Makalah ini diajukan untuk memenuhi
Tugas Mata Kuliah Proyek Sistem Informasi II Universitas Nusa Mandiri,
Program Studi Sistem Informasi. Tujuan dari penulisan laporan tugas Mata
Kuliah Proyek Sistem Informasi II ini adalah agar mahasiswa dapat
menambah wawasan dan ilmu pengetahuan tentang pengelolaan surat masuk
dan keluar secara digital yang dilakukan oleh dunia pendidikan dalam
bentuk laporan kerja lapangan. Dalam menyelesaikan tugas Mata Kuliah
Proyek Sistem Informasi II ini, penulis menerima segala bentuk bantuan
baik dalam bentuk bimbingan, pengajaran, pengalaman, serta dorongan
motivasi dari berbagai pihak. Untuk itu, pada kesempatan kali ini
penulis ingin mengucapkan terima kasih dan rasa hormat yang
sebesar-besarnya kepada :

1.  IKA KURNIAWATI, M.Kom, selaku Dosen mata kuliah Proyek Sistem
    > Informasi II Universitas Nusa Mandiri.

2.  Ibu Rita Amalia, S.H dan Bapak Rustamaji Arditomo, S.Pd, selaku
    > Kepala SDIT Al-Huda dan Wakil bidang Kurikulum, mengizinkan serta
    > membantu penulis untuk mengumpulkan data terkait Laporan Tugas
    > Mata Kuliah Proyek Sistem Informasi II.

3.  Orang tua dan keluarga besar penulis yang telah memberikan dukungan
    > baik secara moril maupun materil dan juga selalu mendoakan penulis
    > agar diberi kemudahan dalam penyusunan Laporan Mata Kuliah Proyek
    > Sistem Informasi II.

4.  Sahabat penulis, dan Bismillah serta seluruh teman-teman
    > seperjuangan pada program studi Sistem Informasi Angkatan Tahun
    > 2025, khususnya teman-teman dari kelas 11.7C.12 yang telah
    > memberikan banyak pengalaman dan pembelajaran bagi penulis selama
    > kuliah di Universitas Nusa Mandiri.

Dalam penulisan dan penyusunan laporan ini, tentunya masih banyak
kekurangan dan kesalahan karena keterbatasan kemampuan Penulis. Untuk
itu, Penulis mengharapkan kritik dan saran dari semua pihak demi
perbaikan yang bersifat membangun atas laporan ini.

Akhirnya dengan segala kerendahan hati, penulis mengucapkan terima kasih
dan semoga laporan ini dapat bermanfaat bagi kita semua.

Wassalamu'alaikum Wr. Wb

Jakarta, 9 Oktober 2025

> **BAB I**
>
> **PENDAHULUAN**

1.  **Latar Belakang**

Perkembangan teknologi informasi yang pesat di era digital telah membawa
perubahan signifikan dalam sistem komunikasi dan pengelolaan data. Dalam
konteks lembaga pendidikan, pemanfaatan teknologi menjadi kebutuhan
penting untuk meningkatkan efektivitas dan efisiensi administrasi. SDIT
Al-Huda masih menghadapi kendala dalam pengelolaan surat masuk dan
keluar yang dilakukan secara manual, sehingga sering terjadi
keterlambatan penyampaian informasi, risiko kehilangan arsip, serta
kesulitan dalam pencarian dokumen. Kondisi ini berpotensi menghambat
kelancaran proses administrasi dan menurunkan kinerja organisasi secara
keseluruhan.

Tata kelola teknologi informasi (IT Governance) memiliki peran penting
dalam memastikan sistem informasi berjalan selaras dengan tujuan bisnis.
Pada sektor Pendidikan Sekolah Dasar seperti SDIT Al-Huda, penerapan IT
Governance berpotensi meningkatkan efektivitas pengelolaan data
administrasi persuratan sehingga lebih efisien, terarah, dan aman.
Berdasarkan penelitian Rizki & Bahtiar (2020), penerapan COBIT 5 pada
lembaga pendidikan dapat membantu mengidentifikasi kekuatan dan
kelemahan pengelolaan TI, serta memberikan rekomendasi untuk peningkatan
kinerja tata kelola. Menurut ISACA (2012), COBIT 5 merupakan kerangka
kerja yang memberikan panduan komprehensif bagi organisasi dalam tata
kelola dan manajemen teknologi informasi, agar selaras dengan tujuan
bisnis dan memberikan nilai yang optimal.

Oleh karena itu, diperlukan penerapan sistem informasi berbasis web yang
mampu mengelola surat secara elektronik secara terintegrasi.
Implementasi sistem ini diharapkan dapat mengoptimalkan proses
administrasi, mempercepat distribusi informasi, serta mewujudkan tata
kelola arsip yang tertib dan efisien di lingkungan SDIT Al-Huda. Urgensi
penerapan sistem ini terletak pada pentingnya transformasi digital dalam
menunjang manajemen dokumen yang akurat, aman, dan mudah diakses. Tanpa
adanya sistem informasi yang terintegrasi, sekolah berisiko mengalami
penumpukan arsip, kesalahan pencatatan, serta kehilangan data penting
yang dapat mengganggu kualitas pelayanan administrasi pendidikan.

2.  **Identifikasi Masalah**

Berdasarkan uraian latar belakang, maka permasalahan yang dapat
diidentifikasi dalam penelitian ini adalah sebagai berikut:

1.  Proses pengelolaan surat masuk dan keluar di SDIT Al-Huda masih
    > dilakukan secara manual sehingga kurang efisien.

2.  Penyimpanan arsip surat masih berbasis kertas, menyebabkan risiko
    > kehilangan, kerusakan, atau kesulitan dalam pencarian kembali
    > dokumen.

3.  Tidak adanya sistem informasi terintegrasi yang dapat memantau alur
    > surat secara real-time dari penerimaan hingga pendistribusian.

4.  Kurangnya pemanfaatan teknologi informasi dalam mendukung tata
    > kelola administrasi sekolah.

5.  Potensi keterlambatan penyampaian informasi kepada pihak terkait
    > akibat proses disposisi dan pencatatan yang tidak terdokumentasi
    > secara sistematis.

    1.  **Ruang Lingkup**

Ruang lingkup pekerjaan dalam proyek *Optimalisasi Manajemen Surat Masuk
dan Keluar melalui Sistem Informasi di SDIT Al-Huda* mencakup seluruh
tahapan analisis, perancangan, pengembangan, hingga implementasi sistem
informasi berbasis web. Kegiatan ini dilakukan secara terstruktur agar
sistem yang dibangun mampu memenuhi kebutuhan pengguna dan mendukung
proses administrasi surat menyurat secara efektif. Adapun ruang lingkup
pekerjaan yang dilakukan meliputi:

1.  Mengidentifikasi jenis surat, baik surat masuk maupun surat keluar.

2.  Menentukan pengguna sistem yang terdiri atas admin, Kepala Sekolah,
    > Guru dan staf.

3.  Menentukan fitur utama yang diperlukan dalam sistem.

4.  Memberikan *prototype* bagi pengguna sebagai acuan dalam penggunaan
    > sistem.

5.  Menentukan platform yang akan digunakan, yaitu berbasis web
    > (*web-based*).

6.  Merancang kebutuhan basis data.

7.  Mendesain antarmuka pengguna (UI/UX) pada tampilan *dashboard*,
    > formulir input surat, dan elemen lainnya menggunakan tools seperti
    > Figma.

8.  Merancang alur *flowchart* surat masuk dan surat keluar.

9.  Melakukan pengembangan aplikasi yang mencakup pembuatan basis data
    > serta pengkodean *frontend* dan *backend*.

10. Melaksanakan pengujian sistem untuk memastikan seluruh fitur
    > berfungsi dengan baik.

11. Melakukan implementasi atau pengunggahan aplikasi ke server hosting.

12. Menyelenggarakan pelatihan bagi pengguna sistem, meliputi admin,
    > Kepala Sekolah, guru dan staf.

13. Melaksanakan kegiatan pemeliharaan dan evaluasi sistem secara
    > berkala.

    1.  **Tujuan dan Manfaat**

<!-- -->

1.  Pengertian Surat Masuk dan Keluar

Pada dasarnya, pengertian surat masuk dan surat keluar sudah sering
dipakai dalam berbagai aktivitas administrasi, baik dalam lingkup sebuah
perusahaan maupun dalam instansi tertentu. Surat masuk dapat diartikan
sebagai sebuah surat yang masuk dalam suatu instansi atau perusahaan
atau bisa juga pada bagian lain yang dikirim oleh instansi atau
perusahaan lain. Namun, surat masuk juga bisa berasal dari instansi atau
perusahaan yang sama, tetapi dari bagian yang lain. Maksud dari
pembuatan surat keluar adalah untuk menciptakan hubungan timbal yang
baik sehingga kedua belah pihak bisa mendapatkan suatu keuntungan
tertentu.

2.  Tujuan dan Fungsi Surat Masuk dan Surat Keluar

Setelah mengetahui tentang pengertian surat masuk dan surat keluar,
Dengan memahami tujuan dan fungsinya, Kamu bisa jadi akan lebih matang
dalam mengatur dan mengelola surat masuk dan surat keluar di suatu
perusahaan atau instansi. Berikut ini adalah tujuan dan fungsi surat
masuk dan surat keluar yang perlu diperhatikan, diantaranya yaitu.

a.  Fungsi Surat Masuk

Fungsi yang paling utama dari surat masuk dan surat keluar yaitu sebagai
sarana komunikasi antara pihak perusahaan atau instansi dengan pihak
yang lain. Beberapa fungsi dan tujuan surat masuk yang lain yaitu,
sebagai berikut:

> a\. Sebagai alat komunikasi
>
> b\. Sebagai wakil dari penulis
>
> c\. Sebagai alat bukti historis
>
> d\. Sebagai pedoman pelaksanaan kerja
>
> e\. Sebagai alat pengingat
>
> f\. Sebagai alat bukti tertulis

b.  Fungsi Surat Keluar

> Hampir sama dengan dengan surat masuk, salah satu fungsi dari surat
> keluar adalah sebagai media komunikasi atau interaksi sebuah
> perusahaan atau instansi dengan pihak lainnya. Berikut ini adalah
> beberapa fungsi dan tujuan secara umum dari surat keluar, diantaranya
> yaitu:
>
> a\. Sebagai alat tata usaha
>
> b\. Sebagai wakil penulis
>
> c\. Sebagai media komunikasi tertulis
>
> d\. Sebagai alat bukti tertulis
>
> e\. Sebagai alat ukur kemajuan suatu perusahaan atau instansi

3\. Manfaat Mengelola Surat Masuk dan Keluar

Setiap sebuah perusahaan atau instansi lainnya pasti memerlukan sistem
pengelolaan terkait surat masuk dan surat keluar. Pengelolaan sendiri
dilakukan agar kegiatan atau aktivitas dari sebuah perusahaan atau
instansi bisa berlangsung secara optimal sehingga mampu mencapai tujuan
yang telah ditentukan.

Dengan mengelola surat masuk dan surat keluar secara optimal, maka suatu
perusahaan atau lembaga bisa memiliki kinerja yang optimal dan cenderung
meningkat. Hal ini dikarenakan sistem komunikasi yang telah diatur
sehingga penyebaran surat menjadi lebih cepat dan tepat. Adapun manfaat
dari pembuatan perancangan sistem informasi manajemen persuratan
berbasis *web* pada SDIT Al-Huda sebagai berikut :

a.  Surat masuk dan surat keluar akan tercatat dengan baik.

b.  Prosedur penanganan surat jelas dan dapat dijalankan dengan baik.

c.  Surat masuk akan disimpan dan dikelola dengan baik sehingga mudah
    > ditemukan ketika diperlukan.

d.  Seringkali ada surat masuk yang sifatnya rahasia. Dengan penanganan
    > surat yang baik maka kerahasiaan akan tetap terjaga.

e.  Menciptakan sistem pengarsipan surat yang modern.

f.  Mengganti sistem buku agenda konvensional dengan platform digital
    > yang lebih efisien.

g.  Mengembangkan pola keilmuan dan membuka wawasan tentang ilmu
    > pengetahuan baru yang sesuai dengan bidang teknologi informasi
    > khususnya program *internet*.

h.  Memudahkan pencarian dokumen yang dibutuhkan karena data tersimpan
    > secara digital dan dapat diakses dengan mudah.

i.  Mengatur seluruh proses surat masuk dan keluar, mulai dari
    > penerimaan, pencatatan, pengarahan, hingga pendistribusian.

j.  Mengurangi resiko kehilangan atau kerusakan fisik dokumen kertas
    > akibat usia atau faktor lainnya karena penyimpanan dilakukan
    > secara digital.

k.  Menyimpan catatan rinci tentang semua surat yang masuk dan keluar,
    > beserta tanggal dan keterangan penting, untuk pemantauan dan
    > analisis.

**Waktu Pengerjaan**

Pelaksanaan pekerjaan sistem manajemen surat keluar dan masuk pada SDIT
Al-Huda dilaksanakan selama 15(lima belas) minggu dimulai dari tanggal
24 September 2025 sampai dengan 31 Desember 2025 dengan rincian sebagai
berikut:

![](media/image2.png){width="6.526042213473316in"
height="2.590903324584427in"}

**Work Breakdown Structure (WBS)**

![](media/image3.png){width="6.546875546806649in"
height="10.117898075240594in"}

**Sumber Daya Proyek**

1.  Project Manager (Ketua Tim)

<!-- -->

a.  Mengkoordinasikan seluruh kegiatan proyek;

b.  membuat jadwal kerja;

c.  memastikan proyek berjalan sesuai rencana;

d.  serta menjadi penghubung utama antara tim pengembang dan pihak
    > sekolah.

<!-- -->

2.  System Analyst (Analis Sistem)

<!-- -->

a.  Menganalisis kebutuhan pengguna;

b.  menyusun dokumen spesifikasi sistem;

c.  serta merancang alur proses dan kebutuhan fungsional sistem.

<!-- -->

3.  Database Designer (Perancang Basis Data)

<!-- -->

a.  Mendesain struktur basis data;

b.  menentukan relasi antar tabel;

c.  memastikan integritas serta keamanan data dalam sistem.

<!-- -->

4.  Programmer / Developer (Frontend & Backend)

<!-- -->

a.  Mengembangkan aplikasi berdasarkan rancangan yang telah dibuat;

b.  melakukan pengkodean;

c.  integrasi modul;

d.  serta pengujian fungsionalitas sistem.

<!-- -->

5.  UI/UX Designer : Mendesain tampilan antarmuka pengguna yang
    > interaktif, mudah digunakan, dan sesuai kebutuhan pengguna dengan
    > menggunakan tools seperti Figma.

6.  Tester / Quality Assurance (QA) : Melakukan pengujian terhadap
    > sistem untuk memastikan tidak terdapat kesalahan (*bug*) dan
    > seluruh fitur berjalan sesuai kebutuhan pengguna.

7.  Documentation & Training Staff : Menyusun dokumentasi teknis dan
    > panduan pengguna, serta memberikan pelatihan kepada admin, staf,
    > dan pimpinan SDIT Al-Huda.

8.  IT Support / Maintenance Staff : Menangani instalasi, pemeliharaan
    > server, backup data, serta memastikan sistem dapat beroperasi
    > dengan baik setelah implementasi.

**Rencana Anggaran Biaya**

Rencana anggaran biaya yang diperlukan untuk membangun sistem manajemen
persuratan pada SDIT Al-Huda senilai Rp 50.000.000,- (Lima Puluh Juta
Rupiah) dengan rincian sebagai berikut:

| **NO** | **KEGIATAN**                                                                                                                           | **QTY** | **SAT** | **HARGA SATUAN** | **JUMLAH**           |
|--------|----------------------------------------------------------------------------------------------------------------------------------------|---------|---------|------------------|----------------------|
|        | **Analisis Desain Sistem**                                                                                                             |         |         |                  |                      |
| 1      | Mengidentifikasi jenis surat, baik surat masuk maupun surat keluar                                                                     | 1       | LOT     | Rp 2.000.000,00  | Rp 2.000.000,00      |
| 2      | Menentukan pengguna sistem yang terdiri atas admin, TU, KS, dan staf                                                                   | 1       | LOT     | Rp 2.000.000,00  | Rp 2.000.000,00      |
|        | **Desain Aplikasi**                                                                                                                    |         |         |                  |                      |
| 3      | Menentukan fitur utama yang diperlukan dalam sistem                                                                                    | 1       | LOT     | Rp 1.500.000,00  | Rp 1.500.000,00      |
| 4      | Memberikan prototype bagi pengguna sebagai acuan dalam penggunaan sistem                                                               | 1       | UNIT    | Rp 2.500.000,00  | Rp 2.500.000,00      |
|        | **Pemrograman**                                                                                                                        |         |         |                  |                      |
| 5      | Menentukan platform yang akan digunakan, yaitu berbasis web (web-based)                                                                | 1       | LOT     | Rp 2.000.000,00  | Rp 2.000.000,00      |
| 6      | Merancang kebutuhan basis data                                                                                                         | 1       | LOT     | Rp 2.500.000,00  | Rp 2.500.000,00      |
| 7      | Mendesain antarmuka pengguna (UI/UX) pada tampilan dashboard, formulir input surat, dan elemen lainnya menggunakan tools seperti Figma | 1       | LOT     | Rp 3.000.000,00  | Rp 3.000.000,00      |
| 8      | Merancang alur flowchart surat masuk dan surat keluar                                                                                  | 1       | LOT     | Rp 2.000.000,00  | Rp 2.000.000,00      |
| 9      | Melakukan pengembangan aplikasi yang mencakup pembuatan basis data serta pengkodean frontend dan backend                               | 1       | LOT     | Rp 4.500.000,00  | Rp 4.500.000,00      |
|        | **Testing**                                                                                                                            |         |         |                  |                      |
| 10     | Melaksanakan pengujian sistem untuk memastikan seluruh fitur berfungsi dengan baik                                                     | 1       | LOT     | Rp 2.500.000,00  | Rp 2.500.000,00      |
|        | **Instalasi**                                                                                                                          |         |         |                  |                      |
| 11     | Melakukan implementasi atau pengunggahan aplikasi ke server hosting                                                                    | 1       | LOT     | Rp 3.000.000,00  | Rp 3.000.000,00      |
|        | **Training**                                                                                                                           |         |         |                  |                      |
| 12     | Menyelenggarakan pelatihan bagi pengguna sistem, meliputi admin, staf, dan pimpinan                                                    | 1       | PAKET   | Rp 15.000.000,00 | Rp 15.000.000,00     |
|        | **Maintenance**                                                                                                                        |         |         |                  |                      |
| 13     | Melaksanakan kegiatan pemeliharaan dan evaluasi sistem secara berkala                                                                  | 1       | LOT     | Rp 2.500.000,00  | Rp 2.500.000,00      |
|        | **Administrasi**                                                                                                                       |         |         |                  |                      |
| 14     | Melakukan Administrasi Proyek dan mendokumentasikan                                                                                    | 1       | LOT     | Rp 5.000.000,00  | Rp 5.000.000,00      |
|        |                                                                                                                                        |         |         |                  |                      |
|        | **PERENCANAAN TOTAL**                                                                                                                  |         |         |                  | **Rp 50.000.000,00** |

**Manajemen Risiko**

Manajemen risiko merupakan proses untuk mengidentifikasi, menganalisis,
dan mengendalikan potensi permasalahan yang dapat menghambat
keberhasilan proyek. Dalam proyek *Optimalisasi Manajemen Surat Masuk
dan Keluar di SDIT Al-Huda*, beberapa risiko yang mungkin terjadi
beserta strategi penanganannya adalah sebagai berikut:

| No  | Risiko yang Mungkin Terjadi                                       | Dampak                                                       | Tingkat Risiko | Strategi Mitigasi                                                                                                 |
|-----|-------------------------------------------------------------------|--------------------------------------------------------------|----------------|-------------------------------------------------------------------------------------------------------------------|
| 1   | Keterlambatan dalam proses pengumpulan data kebutuhan pengguna    | Menghambat tahapan perancangan sistem                        | Sedang         | Menyusun jadwal wawancara dan observasi secara terstruktur serta melakukan konfirmasi ulang kepada pihak sekolah. |
| 2   | Kesalahan dalam perancangan basis data                            | Sistem tidak berjalan optimal atau terjadi *data redundancy* | Tinggi         | Melakukan uji desain basis data dan *review* bersama tim pengembang sebelum implementasi.                         |
| 3   | Gangguan teknis saat pengembangan (bug/error)                     | Menunda proses pengujian sistem                              | Sedang         | Melakukan pengujian modul secara bertahap dan menerapkan *version control*.                                       |
| 4   | Keterbatasan kemampuan pengguna dalam mengoperasikan sistem baru  | Sistem tidak dimanfaatkan secara maksimal                    | Tinggi         | Memberikan pelatihan dan panduan penggunaan sistem secara praktis.                                                |
| 5   | Kehilangan data akibat kesalahan penyimpanan atau gangguan server | Hilangnya arsip penting sekolah                              | Tinggi         | Melakukan pencadangan (*backup*) data secara rutin dan menggunakan sistem penyimpanan berbasis cloud.             |
| 6   | Keterlambatan jadwal implementasi                                 | Menurunkan kepercayaan pihak pengguna                        | Sedang         | Melakukan monitoring timeline proyek secara berkala dan memperkuat koordinasi antar tim.                          |
| 7   | Akses tidak sah atau pelanggaran keamanan data                    | Potensi kebocoran informasi penting                          | Tinggi         | Mengimplementasikan autentikasi pengguna dan enkripsi data pada sistem.                                           |

**Perencanaan Komunikasi**

Perencanaan komunikasi bertujuan untuk memastikan seluruh pihak yang
terlibat dalam proyek memperoleh informasi yang jelas, tepat waktu, dan
sesuai dengan tanggung jawab masing-masing. Komunikasi yang efektif
mendukung kelancaran koordinasi, pengambilan keputusan, dan pemantauan
kemajuan proyek.

| No  | Pihak Terlibat                       | Informasi yang Dikomunikasikan                               | Media/Alat Komunikasi                               | Frekuensi                               | Penanggung Jawab            |
|-----|--------------------------------------|--------------------------------------------------------------|-----------------------------------------------------|-----------------------------------------|-----------------------------|
|     | Tim Pengembang Internal              | Progres pengembangan sistem, kendala teknis, pembagian tugas | Rapat tim, grup WhatsApp, Google Meet               | Setiap minggu                           | Ketua Tim Proyek            |
|     | Pihak SDIT Al-Huda (Admin, Guru, KS) | Kebutuhan sistem, hasil uji coba, dan jadwal pelatihan       | Rapat koordinasi, email resmi, Google Form          | Setiap dua minggu atau sesuai kebutuhan | Koordinator Proyek          |
|     | Koordinator Proyek                   | Laporan perkembangan proyek dan evaluasi hasil kerja         | Laporan mingguan, presentasi, email                 | Setiap akhir tahap utama                | Ketua Tim Proyek            |
|     | Pengguna Akhir (User)                | Panduan penggunaan sistem, hasil pelatihan, dan umpan balik  | Pelatihan langsung, video tutorial, dokumen panduan | Setelah implementasi                    | Tim Dokumentasi & Pelatihan |
|     | Tim Evaluasi                         | Hasil pengujian sistem dan rekomendasi perbaikan             | Rapat evaluasi, laporan tertulis                    | Setelah tahap uji coba                  | Tim QA / Tester             |
