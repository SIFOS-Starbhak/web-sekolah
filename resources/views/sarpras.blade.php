@include('template.navbar')
@include('template.background')


<div class="container-fluid pt-5">
  <nav class="nav nav-tabs flex-column flex-sm-row mt-1">
    <a class="flex-sm-fill text-sm-center nav-link active fw-bold" aria-current="page" data-bs-toggle="tab" data-bs-target="#sarpras">Sarana dan Prasarana Sekolah</a>
    <a class="flex-sm-fill text-sm-center nav-link fw-bold" data-bs-toggle="tab" data-bs-target="#ruangumum">Ruang Pembelajaran Umum</a>
    <a class="flex-sm-fill text-sm-center nav-link fw-bold" data-bs-toggle="tab" data-bs-target="#ruangkhusus">Ruang Pembelajaran Khusus</a>
    <a class="flex-sm-fill text-sm-center nav-link fw-bold" data-bs-toggle="tab" data-bs-target="#parkir">Fasilitas Parkir Kendaraan Siswa</a>
    <a class="flex-sm-fill text-sm-center nav-link fw-bold" data-bs-toggle="tab" data-bs-target="#mushola">Mushola Raudhotul Ilmi</a>
    <a class="flex-sm-fill text-sm-center nav-link fw-bold" data-bs-toggle="tab" data-bs-target="#pendukung">Fasilitas Pendukung</a>
  </nav>
</div>

<div class="container pt-5">
<div class="tab-content mb-5" id="myTabContent">

  <!-- Sarpras -->
  <div class="tab-pane fade show active" id="sarpras" role="tabpanel" aria-labelledby="home-tab">
    <div class="row">
      <div class="">
        <h3><b>Sarana dan Prasarana Sekolah</b></h3>
        <hr>
        <br>
        <p class="mt-3">Gedung Sekolah Milik sendiri dengan design bangunan berbentuk permanen yang di sesuaikan dengan kebutuhan pendidikan dan berlantai 4.</p>
        <div class=" text-center">
          
          <img src="{{ asset('photos/gedung_tb.jpg')}}" alt="Foto 1" width="70%" height="49%" class="mt-3">
          <br>
          <img src="{{ asset('photos/')}}" alt="Foto 2" width="70%" height="49%" class="mt-3 mb-5">

          <!-- Tempat Parkir Siswa -->
          <p class="mt-5 fw-bold">Tempat Parkir Siswa</p>
          <img src="{{ asset('photos/')}}" alt="Tempat Parkir" width="70%" height="49%" class="mt-3 mb-5">

          <!-- Lapangan Olahraga -->
          <p class="mt-5 fw-bold">Lapangan Olahraga</p>
          <img src="{{ asset('photos/')}}" alt="Lapangan Olahraga" width="70%" height="49%" class="mt-3 mb-5">

          <!-- Ruang Belajar Teori -->
          <p class="mt-5 fw-bold">Ruang Belajar Teori</p>
          <img src="{{ asset('photos/rb_teori.jpg')}}" alt="Ruang Belajar Teori" width="70%" height="49%" class="mt-3 mb-5">
        </div>
        <p class="mt-5">Laboratorium Komputer dan Ruangan Terdiri dari :</p>
        <ol>
          <li>Lab Network Advance</li>
          <li>Lab Network</li>
          <li>Lab Maintenance and Repair</li>
          <li>Lab Simulasi Digital</li>
          <li>Lab Axioo Class Program</li>
          <li>Lab Multimedia Medium</li>
          <li>Lab Multimedia Advance</li>
          <li>Lab Pemrograman Basic</li>
          <li>Lab Pemrograman Advance</li>
          <li>Lab Bahasa Inggris</li>
          <li>Lab Video dan Audio Editing</li>
          <li>Studio Mini Penyiaran TV</li>
          <li>Ruang Server dan Fasilitas lainnya</li>
        </ol>
        <p>Lingkungan sekolah yang asri dan nyaman jauh dari bising, mudah terjangkau oleh siswa/i dari <br> berbagai jurusan dengan kendaraan umum.</p>
        <p>Memiliki kantin dengan konsep cafetaria yang bersih, rapi serta nyaman dengan variasi makanan dan <br> minuman yang sehat, agar terjaga kesehatan dari siswa/i.</p>
        <p>Seluruh ruangan sekolah terjangkau dari Zona Hotspot yang di support oleh :</p>
        <ol>
          <li>Wifi id (Telkom) dengan jaringan Fiber Optik 100 Mbps</li>
          <li>Biznet dengan jaringan Fiber Optik 20 Mbps Dedicated 1:1</li>
          <li>Varnion Techology Jaringan wireless 2 Mbps</li>
        </ol>
        <p class="fw-bold">Galery Foto Sarana Lab Komputer SMK Taruna Bhakti</p>
        <br>

        <!-- SAMSUNG -->
        <p class="fw-bold">SAMSUNG</p>
        <div class="row">
          <div class="col-4">
            <img src="{{ asset('photos/samsung1.jpeg')}}" alt="" width="99%">
          </div>
          <div class="col-4">
            <img src="{{ asset('photos/samsung2.jpeg')}}" alt="" width="99%">
          </div>
          <div class="col-4">
            <img src="{{ asset('photos/samsung3.jpeg')}}" alt="" width="99%">
          </div>
        </div>
        <img src="{{ asset('photos/samsung1.jpeg')}}" class="mt-4 mb-5" alt="" width="99.5%">

        <!-- Lab Bahasa -->
        <br>
        <p class="fw-bold">LAB BAHASA</p>
        <div class="row">
          <div class="col-4">
            <img src="{{ asset('photos/lbhs1.jpeg')}}" alt="" width="99%">
          </div>
          <div class="col-4">
            <img src="{{ asset('photos/lbhs2.jpeg')}}" alt="" width="99%">
          </div>
          <div class="col-4">
            <img src="{{ asset('photos/lbhs3.jpeg')}}" alt="" width="99%">
          </div>
        </div>
        <img src="{{ asset('photos/lbhs1.jpeg')}}" class="mt-4 mb-5" alt="" width="99.5%">
      </div>
    </div>
  </div>

  <!-- Ruang umum -->
  <div class="tab-pane fade" id="ruangumum" role="tabpanel" aria-labelledby="profile-tab">
    <div class="row">
      <div class="">
        <h3><b>Ruang Pembelajaran Umum</b></h3>
        <hr>
        <br>

        <!-- Table 1 -->
        <table class="table table-bordered" style="width: 100%;" border="1">
          <tr>
            <td style="width: 60%;">
              SMK Taruna Bhakti memilki ruang kelas dengan penjelasan sebagai berikut:
              <ol>
                <li>Jumlah Ruang Kelas : 32</li>
                <li>Rata-rata ukuran kelas : 8 x 8 m = 64 m<sup>2</sup></li><br>
                <p class="text-center">Fasilitas Ruang Kelas</p><br>
                <img class="text-center" src="{{ asset('photos/.png')}}" alt="Gambar 1">
              </ol>
            </td>
            <td  style="width: 40%;">
              <img class="" src="{{ asset('photos/rpembelajaran1.png')}}" alt="" width="100%">
            </td>
          </tr>
        </table>

        <!-- Table 2 -->
        <table class="table table-bordered" style="width: 100%;" border="1">
          <tr>
            <td style="width: 50%;">
              <h6 class="fw-bold">Laboratorium Bahasa</h6>
              <p>SMK Taruna Bhakti memiliki 2 Laboratorium Bahasa yang berada pada gedung bagian Timur lantai 3. Di dalam Lab. Bahasa masing-masing memiliki seperangkat peralatan audio video untuk kegiatan pembelajaran Bahasa dengan kapasitas 20 siswa dengan masing-masing siswa menempati 1 meja multimedia.</p>
            </td>
            <td style="width: 50%;">

              <!-- Carousel Lab Bahasa -->
              <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-indicators">
                  <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                  <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                  <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                  <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" aria-label="Slide 3"></button>
                </div>
                <div class="carousel-inner">
                  <div class="carousel-item">
                    <img src="{{ asset('photos/labbhs1.jpeg')}}" class="d-block w-100" alt="..." width="100%">
                  </div>
                  <div class="carousel-item">
                    <img src="{{ asset('photos/labbhs2.jpeg')}}" class="d-block w-100" alt="..." width="100%">
                  </div>
                  <div class="carousel-item">
                    <img src="{{ asset('photos/labbhs3.jpeg')}}" class="d-block w-100" alt="..." width="100%">
                  </div>
                  <div class="carousel-item active">
                    <img src="{{ asset('photos/labbhs4.jpeg')}}" class="d-block w-100" alt="..." width="100%">
                  </div>
                </div>
              </div>
              <!-- End Carousel Lab Bahasa -->

            </td>
          </tr>
          <tr>
            <td style="width: 50%;">
              
              <!-- Carousel Perpus -->
              <div id="carouselExampleIndicators1" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-indicators">
                  <button type="button" data-bs-target="#carouselExampleIndicators1" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                  <button type="button" data-bs-target="#carouselExampleIndicators1" data-bs-slide-to="1" aria-label="Slide 2"></button>
                  <button type="button" data-bs-target="#carouselExampleIndicators1" data-bs-slide-to="2" aria-label="Slide 3"></button>
                </div>
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <img src="{{ asset('photos/perpus1.png')}}" class="d-block w-100" alt="..."  width="100%">
                  </div>
                  <div class="carousel-item">
                    <img src="{{ asset('photos/perpus2.png')}}" class="d-block w-100" alt="..."  width="100%">
                  </div>
                  <div class="carousel-item">
                    <img src="{{ asset('photos/perpus3.png')}}" class="d-block w-100" alt="..."  width="100%">
                  </div>
                </div>
              </div>
              <!-- End Caorousel Perpus -->

            </td>
            <td style="width: 50%;">
              <h6 class="fw-bold">Laboratorium Bahasa</h6>
              <p>SMK Taruna Bhakti Depok memiliki Ruang Perpustakaan dengan luas ruangan  : 8 m X 4 m = 32 m2
                Letak perpustakaan berada pada lantai 3 gedung bagian Barat yang diapit oleh Laboratorium RPL Medium dan MM Advance. Terdapat  3 lemari besar 1 rak buku terbuat dari besi dan 2 rak kayu besar menjulang tinggi yang berisi ratusan buku dengan berbagai macam judul dan tema.</p>
            </td>
          </tr>
        </table>

      </div>
    </div>
  </div>

  <!-- Ruang Khusus -->
  <div class="tab-pane fade" id="ruangkhusus" role="tabpanel" aria-labelledby="contact-tab">
    <div class="row">
      <div class="">
        <h3><b>Ruang Pembelajaran Umum</b></h3>
        <hr>
        <br>

        <!-- Table Ruang Khusus -->
        <table class="table table-bordered mb-5" style="width: 100%;" border="1">
          <tr>
            <td>
              <p class="mt-4 fw-bold">Teknik Komputer dan Jaringan</p>

              <!-- Carousel TKJ -->
              <div id="carouselExampleIndicatorstkj" class="carousel slide mt-3" data-bs-ride="carousel">
                <div class="carousel-indicators">
                  <button type="button" data-bs-target="#carouselExampleIndicatorstkj" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                  <button type="button" data-bs-target="#carouselExampleIndicatorstkj" data-bs-slide-to="1" aria-label="Slide 2"></button>
                  <button type="button" data-bs-target="#carouselExampleIndicatorstkj" data-bs-slide-to="2" aria-label="Slide 3"></button>
                  <button type="button" data-bs-target="#carouselExampleIndicatorstkj" data-bs-slide-to="3" aria-label="Slide 3"></button>
                </div>
                <div class="carousel-inner">
                  <div class="carousel-item">
                    <img src="{{ asset('photos/tkj1.jpeg')}}" class="d-block w-100" alt="..." width="100%">
                  </div>
                  <div class="carousel-item">
                    <img src="{{ asset('photos/tkj2.jpeg')}}" class="d-block w-100" alt="..." width="100%">
                  </div>
                  <div class="carousel-item">
                    <img src="{{ asset('photos/tkj3.jpeg')}}" class="d-block w-100" alt="..." width="100%">
                  </div>
                  <div class="carousel-item active">
                    <img src="{{ asset('photos/tkj4.jpeg')}}" class="d-block w-100" alt="..." width="100%">
                  </div>
                </div>
              </div>
              <!-- End Carousel TKJ -->
              <p class="mt-3">Jurusan Teknik Komputer dan jaringan (TKJ) SMK Taruna Bhakti Depok memiliki 3 laboratorium yaitu Laboratorium Network dan Laboratorium Network Advance.</p>

            </td>
          </tr>
          <tr>
            <td>
              <p class="mt-4 fw-bold">Multimedia</p>

              <!-- Carousel MM -->
              <div id="carouselExampleIndicatorsmm" class="carousel slide mt-3" data-bs-ride="carousel">
                <div class="carousel-indicators">
                  <button type="button" data-bs-target="#carouselExampleIndicatorsmm" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                  <button type="button" data-bs-target="#carouselExampleIndicatorsmm" data-bs-slide-to="1" aria-label="Slide 2"></button>
                  <button type="button" data-bs-target="#carouselExampleIndicatorsmm" data-bs-slide-to="2" aria-label="Slide 3"></button>
                  <button type="button" data-bs-target="#carouselExampleIndicatorsmm" data-bs-slide-to="3" aria-label="Slide 3"></button>
                </div>
                <div class="carousel-inner">
                  <div class="carousel-item">
                    <img src="{{ asset('photos/mm1.jpeg')}}" class="d-block w-100" alt="..." width="100%">
                  </div>
                  <div class="carousel-item">
                    <img src="{{ asset('photos/mm2.jpeg')}}" class="d-block w-100" alt="..." width="100%">
                  </div>
                  <div class="carousel-item">
                    <img src="{{ asset('photos/mm3.jpeg')}}" class="d-block w-100" alt="..." width="100%">
                  </div>
                  <div class="carousel-item active">
                    <img src="{{ asset('photos/mm4.jpeg')}}" class="d-block w-100" alt="..." width="100%">
                  </div>
                </div>
              </div>
              <!-- End Carousel MM -->

              <p class="mt-3">Jurusan Multimedia (MM) SMK Taruna Bhakti Depok memiliki 2 laboratorium yaitu Laboratorium MM Medium dan Laboratorium MM Advance. Kedua laboratorium ini berada pada lantai yang sama tetapi dipisah oleh Laboratorium RPL Advance dan Ruang Perpustakaan. Uniknya di laboratorium ini adalah pada bagian dindingnya, dimana siswa jurusan Multimedia diberikan tantangan untuk mendesain dinding kedua ruangan tersebut dengan desain 3D.</p>

            </td>
          </tr>
          <tr>
            <td>
              <p class="mt-4 fw-bold">Rekayasa Perangkat Lunak</p>

              <!-- Carousel RPL -->
              <div id="carouselExampleIndicatorsrpl" class="carousel slide mt-3" data-bs-ride="carousel">
                <div class="carousel-indicators">
                  <button type="button" data-bs-target="#carouselExampleIndicatorsrpl" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                  <button type="button" data-bs-target="#carouselExampleIndicatorsrpl" data-bs-slide-to="1" aria-label="Slide 2"></button>
                  <button type="button" data-bs-target="#carouselExampleIndicatorsrpl" data-bs-slide-to="2" aria-label="Slide 3"></button>
                  <button type="button" data-bs-target="#carouselExampleIndicatorsrpl" data-bs-slide-to="3" aria-label="Slide 3"></button>
                </div>
                <div class="carousel-inner">
                  <div class="carousel-item">
                    <img src="{{ asset('photos/rpl1.jpeg')}}" class="d-block w-100" alt="..." width="100%">
                  </div>
                  <div class="carousel-item">
                    <img src="{{ asset('photos/rpl2.jpeg')}}" class="d-block w-100" alt="..." width="100%">
                  </div>
                  <div class="carousel-item">
                    <img src="{{ asset('photos/rpl3.jpeg')}}" class="d-block w-100" alt="..." width="100%">
                  </div>
                  <div class="carousel-item active">
                    <img src="{{ asset('photos/rpl4.jpeg')}}" class="d-block w-100" alt="..." width="100%">
                  </div>
                </div>
              </div>
              <!-- End Carousel RPL -->

              <p class="mt-3">Jurusan Rekayasa Perangkat Lunak (RPL) SMK Taruna Bhakti Depok memiliki 2 laboratorium yaitu Laboratorium RPL Medium dan Laboratorium RPL Advance. Laboratorium RPL Medium berada pada lantai 4 berdekatan dengan Laboratorium Teknik Elektronika Industri. Sedangkan Laboratorium RPL Advance berapa pada lantai 3 berdekatan dengan Ruang Perpustakaan dan Laboratorium MM Medium.</p>

            </td>
          </tr>
          <tr>
            <td>
              <p class="mt-4 fw-bold">Teknik Elektronika Industri</p>

              <!-- Carousel TEI -->
              <div id="carouselExampleIndicatorstei" class="carousel slide mt-3" data-bs-ride="carousel">
                <div class="carousel-indicators">
                  <button type="button" data-bs-target="#carouselExampleIndicatorstei" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                  <button type="button" data-bs-target="#carouselExampleIndicatorstei" data-bs-slide-to="1" aria-label="Slide 2"></button>
                  <button type="button" data-bs-target="#carouselExampleIndicatorstei" data-bs-slide-to="2" aria-label="Slide 3"></button>
                  <button type="button" data-bs-target="#carouselExampleIndicatorstei" data-bs-slide-to="3" aria-label="Slide 3"></button>
                </div>
                <div class="carousel-inner">
                  <div class="carousel-item">
                    <img src="{{ asset('photos/tei1.jpeg')}}" class="d-block w-100" alt="..." width="100%">
                  </div>
                  <div class="carousel-item">
                    <img src="{{ asset('photos/tei2.jpeg')}}" class="d-block w-100" alt="..." width="100%">
                  </div>
                  <div class="carousel-item">
                    <img src="{{ asset('photos/tei3.jpeg')}}" class="d-block w-100" alt="..." width="100%">
                  </div>
                  <div class="carousel-item active">
                    <img src="{{ asset('photos/tei4.jpeg')}}" class="d-block w-100" alt="..." width="100%">
                  </div>
                </div>
              </div>
              <!-- End Carousel TEI -->

              <p class="mt-3">Jurusan Teknik Elektronika Industri (TEI) SMK Taruna Bhakti Depok memiliki 1 Laboratorium yang diberi nama sama dengan jurusannya yaitu Laboratorium Teknik Elektronika Industri yang berada pada lantai 4 berdekatan dengan Laboratorium RPL Advance dan Ruang Kelas 18.</p>

            </td>
          </tr>
          <tr>
            <td>
              <p class="mt-4 fw-bold">Broadcasting</p>

              <!-- Carousel BC -->
              <div id="carouselExampleIndicatorsbc" class="carousel slide mt-3" data-bs-ride="carousel">
                <div class="carousel-indicators">
                  <button type="button" data-bs-target="#carouselExampleIndicatorsbc" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                  <button type="button" data-bs-target="#carouselExampleIndicatorsbc" data-bs-slide-to="1" aria-label="Slide 2"></button>
                  <button type="button" data-bs-target="#carouselExampleIndicatorsbc" data-bs-slide-to="2" aria-label="Slide 3"></button>
                  <button type="button" data-bs-target="#carouselExampleIndicatorsbc" data-bs-slide-to="3" aria-label="Slide 3"></button>
                </div>
                <div class="carousel-inner">
                  <div class="carousel-item">
                    <img src="{{ asset('photos/bc1.jpeg')}}" class="d-block w-100" alt="..." width="100%">
                  </div>
                  <div class="carousel-item">
                    <img src="{{ asset('photos/bc2.jpeg')}}" class="d-block w-100" alt="..." width="100%">
                  </div>
                  <div class="carousel-item">
                    <img src="{{ asset('photos/bc3.jpeg')}}" class="d-block w-100" alt="..." width="100%">
                  </div>
                  <div class="carousel-item active">
                    <img src="{{ asset('photos/bc4.jpeg')}}" class="d-block w-100" alt="..." width="100%">
                  </div>
                </div>
              </div>
              <!-- End Carousel BC -->

              <p class="mt-3">Jurusan Broadcasting SMK Taruna Bhakti memiliki satu Laboratorium dan satu Studio Broadcast. Laboratorium Broadcasting berada pada Gedung bagian Barat lantai satu yang bersebelahan dengan Ruang Kelompok Kerja Kurikulum. Sedangkan Studio Broadcast berada pada Gedung Timur lantai 2 yang berdekatan dengan Laboratorium Simdig. Studio Broadcast ini juga dapat digunakan oleh siswa dari jurusan Multimedia.</p>

            </td>
          </tr>
        </table>

      </div>
    </div>
  </div>

  <!-- Parkiran -->
  <div class="tab-pane fade" id="parkir" role="tabpanel" aria-labelledby="contact-tab">
    <div class="row">
      <div class="">
        <h3><b>Fasilitas Parkir Kendaraan Siswa</b></h3>
        <hr>
        <br>
        <div class="text-center mb-4">
          <img src="{{ asset('photos/')}}" alt="Foto 1" width="70%" height="49%" class="mt-3">
          <br>
          <img src="{{ asset('photos/')}}" alt="Foto 2" width="70%" height="49%" class="mt-3 mb-5">
        </div>
        <p>Fasilitas Parkir Kendaraan Siswa[ngg_images source=”galleries” display_type=”photocrati-nextgen_basic_slideshow” gallery_width=”600″ gallery_height=”400″ cycle_effect=”fade” cycle_interval=”10″ show_thumbnail_link=”1″ thumbnail_link_text=”[Show thumbnails]” order_by=”sortorder” order_direction=”ASC” returns=”included” maximum_entity_count=”500″]</p>
      </div>
    </div>
  </div>

  <!-- Mushola -->
  <div class="tab-pane fade" id="mushola" role="tabpanel" aria-labelledby="contact-tab">
    <div class="row">
      <div class="">
        <h3><b>Mushola Raudhotul Ilmi</b></h3>
        <hr>
        <br>
        <img src="{{ asset('photos/')}}" alt="Foto 1" width="70%" height="49%" class="mt-3">
          <br>
        <img src="{{ asset('photos/')}}" alt="Foto 2" width="70%" height="49%" class="mt-3">
        <br>
        <img src="{{ asset('photos/')}}" alt="Foto 2" width="70%" height="49%" class="mt-3 mb-5">
        <p class="mt-3">Fasilitas pendukung ini difungsikan selain sebagai Ruang belajar mata pelajaran Pendidikan Agama dan Budi Pekerti, difungsikan juga sebagai tempat ibadah (Musholla).Ruangan ini dapat menampung kurang lebih 120 siswa.</p>
      </div>
    </div>
  </div>

  <!-- Mushola -->
  <div class="tab-pane fade" id="pendukung" role="tabpanel" aria-labelledby="contact-tab">
    <div class="row">
      <div class="">
        <h3><b>Fasilitas Pendukung</b></h3>
        <hr>
        <br>
        <table class="table table-bordered mt-4">
          <tr>
            <td style="width: 50%;">
              SMK Taruna Bhakti memiliki Gedung milik sendiri dengan luas lantai bangungan sebesar 3.651 m² terdiri dari empat lantai.
            </td>
            <td style="width: 50%;">
              
            </td>
          </tr>
        </table>

        <table class="table table-bordered mt-4">
          <tr>
            <td>
              Server SMK Taruna Bhakti <br>SMK Taruna Bhakti memiliki Server yang dipergunakan untuk menyimpan data elektronik berupa Sistem Informasi Manajemen Sekolah. Perangkat server ini terdapat di ruangan yang berada pada lantai 2 diapit oleh Laboratorium Network dan Laboratorium ACP. Luas Ruang Server adalah 96 m² yang terdiri dari dua ruang yang saling terhubung satu sama lain.
            </td>
          </tr>
          <tr>
            <td>
              Taman Sekolah <br>Sekolah berwawasan lingkungan, itulah yang diusung oleh SMK Taruna Bhakti. Sehingga terdapat taman-taman disetiap sudut sekolah.
            </td>
          </tr>
        </table>

        <table class="table table-bordered mt-4">
          <tr>
            <td>
              Pendopo <br>SMK Taruna Bhakti memiliki ruang penerima tamu yang mengosong konsep Joglo. Konsep terbuka sengaja diusung agar tamu yang datang ke SMK Taruna Bhakti dapat dengan nyaman menikmati taman dan kicauan burung, sehingga membuat perasaan menjadi tenang.
            </td>
          </tr>
        </table>
      </div>
    </div>
  </div>

</div>
</div>


@include('template.footer')