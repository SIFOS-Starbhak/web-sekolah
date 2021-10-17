<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />

    <title>Sarana Pra Sarana - SMK Taruna Bhakti</title>
    <meta content="" name="description" />
    <meta content="" name="keywords" />

    <!-- Favicons -->

    <link href="{{ asset('favicon.ico') }}" rel="icon" />

    <link href="{{ asset('template/assets/img/apple-touch-icon.png') }}" rel="apple-touch-icon" />

    <!-- Google Fonts -->
    <link
        href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
        rel="stylesheet" />

    <!-- Vendor CSS Files -->
    <link href="{{ asset('template/assets/vendor/animate.css/animate.min.css') }}" rel="stylesheet" />
    <link href="{{ asset('template/assets/vendor/aos/aos.css') }}" rel="stylesheet" />
    <link href="{{ asset('template/assets/vendor/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet" />
    <link href="{{ asset('template/assets/vendor/bootstrap-icons/bootstrap-icons.css') }}" rel="stylesheet" />
    <link href="{{ asset('template/assets/vendor/boxicons/css/boxicons.min.css') }}" rel="stylesheet" />
    <link href="{{ asset('template/assets/vendor/remixicon/remixicon.css') }}" rel="stylesheet" />
    <link href="{{ asset('template/assets/vendor/swiper/swiper-bundle.min.css') }}" rel="stylesheet" />

    <!-- Template Main CSS File -->
    <link href="{{ asset('template/assets/css/style.css') }}" rel="stylesheet" />

    <!-- Font Awesome -->
    <!-- <link href="fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css" /> -->
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
        integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
    <!-- =======================================================
  * Template Name: Mentor - v4.5.0
  * Template URL: https://bootstrapmade.com/mentor-free-education-bootstrap-theme/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>
    
    @include('template.navbar')
    @include('template.background')

    <div class="container-fluid pt-5">
        <nav class="nav nav-tabs flex-column flex-sm-row mt-1">
            @foreach ($category as $key => $item)
                <a class="flex-sm-fill text-sm-center nav-link fw-bold {{ $key == 0 ? 'active' : '' }}"
                    aria-current="page" data-bs-toggle="tab"
                    data-bs-target="#{{ $item->slug }}">{{ $item->name }}</a>
            @endforeach
        </nav>
    </div>

    <div class="container pt-5">
        <div class="tab-content mb-5" id="myTabContent">

            <!-- Sarpras -->
            <div class="tab-pane fade show active" id="sarana-dan-prasarana-sekolah" role="tabpanel"
                aria-labelledby="home-tab">
                <div class="row">
                    <div class="">
                        <h3><b>Sarana dan Prasarana Sekolah</b></h3>
                        <hr>
                        <br>
                        <p class="
                        mt-3">Gedung Sekolah Milik sendiri dengan design bangunan
                            berbentuk permanen yang di sesuaikan
                            dengan kebutuhan pendidikan dan berlantai 4.</p>
                        <div class=" text-center">
                            @foreach ($gallery as $item)
                                @if ($item->content_id == 15)
                                    <img src="{{ asset('storage/' . $item->image) }}" alt="Foto 1" width="50%"
                                        class="mt-3">
                                    <br>
                                    <h3 class="fw-bold">{{ $item->nama_photo }}</h3>
                                @endif
                            @endforeach
                        </div>
                        @foreach ($content as $item)
                            @if ($item->title == 'Sarana dan Prasarana Sekolah')
                                {!! $item->description !!}
                            @endif
                        @endforeach
                        <p class="fw-bold">Galery Foto Sarana Lab Komputer SMK Taruna Bhakti</p>
                        <br>

                        <p class="fw-bold">Samsung</p>
                        <!-- SAMSUNG -->
                        <!-- The grid: four columns -->
                        <div class="row">
                            @foreach ($samsung as $galaxy)
                                <div class="column">
                                    <img src="{{ asset('storage/' . $galaxy->image) }}" alt="" width="99%"
                                        onclick="myFunction(this);">
                                </div>
                            @endforeach
                        </div>
                        <!-- The expanding image container -->
                        <div class="closeimg">
                            <!-- Close the image -->
                            <span onclick="this.parentElement.style.display='none'"
                                class="closebtn">&times;</span>

                            <!-- Expanded image -->
                            <img id="expandedImg" style="width:100%">
                        </div>
                        <p class="fw-bold">Lab Bahasa</p>
                        <!-- Lab Bahasa -->
                        <br>
                        <div class="row">
                            @foreach ($bahasa as $lab)
                                <div class="column">
                                    <img src="{{ asset('storage/' . $lab->image) }}" alt="" width="99%"
                                        onclick="myImg(this);">
                                </div>
                            @endforeach
                        </div>

                        <!-- The expanding image container -->
                        <div class="closeimg">
                            <!-- Close the image -->
                            <span onclick="this.parentElement.style.display='none'"
                                class="closebtn">&times;</span>

                            <!-- Expanded image -->
                            <img id="expanded-Img" style="width:100%">
                        </div>
                    </div>
                </div>
            </div>

            <!-- Ruang umum -->
            <div class="tab-pane fade" id="ruang-pembelajaran-umum" role="tabpanel" aria-labelledby="profile-tab">
                <div class="row">
                    <div class="">
                        <h3><b>Ruang Pembelajaran Umum</b></h3>
                        <hr>
                        <br>

                        @foreach ($content as $item)
                            @if ($item->category_id == 2)
                                <!-- Table 2 -->
                                <table class="table table-bordered" style="width: 100%;" border="1">
                                    <tr>
                                        <td style="width: 50%;">
                                            <h6 class="fw-bold">{{ $item->title }}</h6>
                                            {!! $item->description !!}
                                        </td>
                                        <td style="width: 50%;">
                                            <div id="carouselExampleIndicators{{ $loop->iteration }}"
                                                class="carousel slide" data-bs-ride="carousel">
                                                <div class="carousel-indicators">
                                                    @if ($loop->iteration == 1)
                                                        @foreach ($kelas as $key => $kls)
                                                            <button type="button"
                                                                data-bs-target="#carouselExampleIndicators1"
                                                                data-bs-slide-to="{{ $key }}"
                                                                class="{{ $key == 0 ? 'active' : '' }}"
                                                                aria-current="true"
                                                                aria-label="Slide {{ $loop->iteration }}"></button>
                                                        @endforeach
                                                    @endif
                                                    @if ($loop->iteration == 2)
                                                        @foreach ($bahasa as $key => $lab)
                                                            <button type="button"
                                                                data-bs-target="#carouselExampleIndicators2"
                                                                data-bs-slide-to="{{ $loop->iteration - 1 }}"
                                                                class="{{ $loop->iteration == 1 ? 'active' : '' }}"
                                                                aria-current="true"
                                                                aria-label="Slide {{ $loop->iteration }}"></button>
                                                        @endforeach
                                                    @endif
                                                    @if ($loop->iteration == 3)
                                                        @foreach ($perpus as $ki => $pustaka)
                                                            <button type="button"
                                                                data-bs-target="#carouselExampleIndicators3"
                                                                data-bs-slide-to="{{ $loop->iteration - 1 }}"
                                                                class="{{ $loop->iteration == 1 ? 'active' : '' }}"
                                                                aria-current="true"
                                                                aria-label="Slide {{ $loop->iteration }}"></button>
                                                        @endforeach
                                                    @endif
                                                </div>
                                                <div class="carousel-inner">
                                                    @if ($loop->iteration == 1)
                                                        @foreach ($kelas as $key => $kls)
                                                            <div
                                                                class="carousel-item {{ $key == 0 ? 'active' : '' }}">
                                                                <img src="{{ asset('storage/' . $kls->image) }}"
                                                                    class="d-block w-100" alt="..." width="70%">
                                                            </div>
                                                        @endforeach
                                                    @endif
                                                    @if ($loop->iteration == 2)
                                                        @foreach ($bahasa as $key => $lab)
                                                            <div
                                                                class="carousel-item {{ $loop->iteration == 1 ? 'active' : '' }}">
                                                                <img src="{{ asset('storage/' . $lab->image) }}"
                                                                    class="d-block w-100" alt="..." width="70%">
                                                            </div>
                                                        @endforeach
                                                    @endif
                                                    @if ($loop->iteration == 3)
                                                        @foreach ($perpus as $ki => $pustaka)
                                                            <div
                                                                class="carousel-item {{ $loop->iteration == 1 ? 'active' : '' }}">
                                                                <img src="{{ asset('storage/' . $pustaka->image) }}"
                                                                    class="d-block w-100" alt="..." width="70%">
                                                            </div>
                                                        @endforeach
                                                    @endif
                                                </div>
                                            </div>
                                            <!-- Carousel Lab Bahasa -->
                                            <!-- End Carousel Lab Bahasa -->
                                        </td>
                                    </tr>
                                </table>
                            @endif
                        @endforeach

                    </div>
                </div>
            </div>

            <!-- Ruang Khusus -->
            <div class="tab-pane fade" id="ruang-pembelajaran-khusus" role="tabpanel" aria-labelledby="contact-tab">
                <div class="row">
                    <div class="">
                        <h3><b>Ruang Pembelajaran Khusus</b></h3>
                        <hr>
                        <br>

                        <!-- Table Ruang Khusus -->
                        @foreach ($content as $item)
                            @if ($item->category_id == 3)
                                <!-- Table 2 -->
                                <table class="table table-bordered" style="width: 100%;" border="1">
                                    <tr>
                                        <td style="width: 50%;">
                                            <div id="carouselExampleIndicators{{ $loop->iteration }}"
                                                class="carousel slide" data-bs-ride="carousel">
                                                <div class="carousel-indicators">
                                                    @if ($loop->iteration == 4)
                                                        @foreach ($tkj as $key => $kls)
                                                            <button type="button"
                                                                data-bs-target="#carouselExampleIndicators4"
                                                                data-bs-slide-to="{{ $loop->iteration - 1 }}"
                                                                class="{{ $loop->iteration == 1 ? 'active' : '' }}"
                                                                aria-current="true"
                                                                aria-label="Slide {{ $loop->iteration }}"></button>
                                                        @endforeach
                                                    @endif
                                                    @if ($loop->iteration == 5)
                                                        @foreach ($mm as $key => $lab)
                                                            <button type="button"
                                                                data-bs-target="#carouselExampleIndicators5"
                                                                data-bs-slide-to="{{ $loop->iteration - 1 }}"
                                                                class="{{ $loop->iteration == 1 ? 'active' : '' }}"
                                                                aria-current="true"
                                                                aria-label="Slide {{ $loop->iteration }}"></button>
                                                        @endforeach
                                                    @endif
                                                    @if ($loop->iteration == 6)
                                                        @foreach ($rpl as $ki => $pustaka)
                                                            <button type="button"
                                                                data-bs-target="#carouselExampleIndicators6"
                                                                data-bs-slide-to="{{ $loop->iteration - 1 }}"
                                                                class="{{ $loop->iteration == 1 ? 'active' : '' }}"
                                                                aria-current="true"
                                                                aria-label="Slide {{ $loop->iteration }}"></button>
                                                        @endforeach
                                                    @endif
                                                    @if ($loop->iteration == 7)
                                                        @foreach ($bc as $ki => $pustaka)
                                                            <button type="button"
                                                                data-bs-target="#carouselExampleIndicators7"
                                                                data-bs-slide-to="{{ $loop->iteration - 1 }}"
                                                                class="{{ $loop->iteration == 1 ? 'active' : '' }}"
                                                                aria-current="true"
                                                                aria-label="Slide {{ $loop->iteration }}"></button>
                                                        @endforeach
                                                    @endif
                                                    @if ($loop->iteration == 8)
                                                        @foreach ($tei as $ki => $pustaka)
                                                            <button type="button"
                                                                data-bs-target="#carouselExampleIndicators8"
                                                                data-bs-slide-to="{{ $loop->iteration - 1 }}"
                                                                class="{{ $loop->iteration == 1 ? 'active' : '' }}"
                                                                aria-current="true"
                                                                aria-label="Slide {{ $loop->iteration }}"></button>
                                                        @endforeach
                                                    @endif
                                                </div>
                                                <div class="carousel-inner">
                                                    @if ($loop->iteration == 4)
                                                        @foreach ($tkj as $key => $kls)
                                                            <div
                                                                class="carousel-item {{ $loop->iteration == 1 ? 'active' : '' }}">
                                                                <img src="{{ asset('storage/' . $kls->image) }}"
                                                                    class="d-block w-100" alt="..." width="70%">
                                                            </div>
                                                        @endforeach
                                                    @endif
                                                    @if ($loop->iteration == 5)
                                                        @foreach ($mm as $key => $lab)
                                                            <div
                                                                class="carousel-item {{ $loop->iteration == 1 ? 'active' : '' }}">
                                                                <img src="{{ asset('storage/' . $lab->image) }}"
                                                                    class="d-block w-100" alt="..." width="70%">
                                                            </div>
                                                        @endforeach
                                                    @endif
                                                    @if ($loop->iteration == 6)
                                                        @foreach ($rpl as $ki => $pustaka)
                                                            <div
                                                                class="carousel-item {{ $loop->iteration == 1 ? 'active' : '' }}">
                                                                <img src="{{ asset('storage/' . $pustaka->image) }}"
                                                                    class="d-block w-100" alt="..." width="70%">
                                                            </div>
                                                        @endforeach
                                                    @endif
                                                    @if ($loop->iteration == 7)
                                                        @foreach ($bc as $ki => $pustaka)
                                                            <div
                                                                class="carousel-item {{ $loop->iteration == 1 ? 'active' : '' }}">
                                                                <img src="{{ asset('storage/' . $pustaka->image) }}"
                                                                    class="d-block w-100" alt="..." width="70%">
                                                            </div>
                                                        @endforeach
                                                    @endif
                                                    @if ($loop->iteration == 8)
                                                        @foreach ($tei as $ki => $pustaka)
                                                            <div
                                                                class="carousel-item {{ $loop->iteration == 1 ? 'active' : '' }}">
                                                                <img src="{{ asset('storage/' . $pustaka->image) }}"
                                                                    class="d-block w-100" alt="..." width="70%">
                                                            </div>
                                                        @endforeach
                                                    @endif
                                                </div>
                                            </div>
                                            <!-- Carousel Lab Bahasa -->
                                            <!-- End Carousel Lab Bahasa -->
                                        </td>
                                        <td style="width: 50%;">
                                            <h6 class="fw-bold">{{ $item->title }}</h6>
                                            {!! $item->description !!}
                                        </td>
                                    </tr>
                                </table>
                            @endif
                        @endforeach

                    </div>
                </div>
            </div>

            <!-- Parkiran -->
            <div class="tab-pane fade" id="fasilitas-parkir-kendaraan-siswa" role="tabpanel"
                aria-labelledby="contact-tab">
                <div class="row">
                    <div class="">
                        <h3><b>Fasilitas Parkir Kendaraan Siswa</b></h3>
                        <hr>
                        <br>
                        @foreach ($content as $item)
                            @if ($item->category_id == 4)
                                <div class="text-center mb-4">
                                    @foreach ($gallery as $photo)
                                        @if ($photo->content_id == $item->id)
                                            <img src="{{ asset('storage/' . $photo->image) }}" alt="Foto 1"
                                                width="10%" class="mt-3">
                                            <br>
                                        @endif
                                    @endforeach
                                </div>
                                {!! $item->description !!}
                            @endif
                        @endforeach
                    </div>
                </div>
            </div>

            <!-- Mushola -->
            <div class="tab-pane fade" id="mushola-raudhotul-ilmi" role="tabpanel" aria-labelledby="contact-tab">
                <div class="row">
                    <div class="">
                        <h3><b>Mushola Raudhotul Ilmi</b></h3>
                        <hr>
                        <br>
                        @foreach ($content as $item)
                            @if ($item->category_id == 5)
                                <div class="text-center mb-4">
                                    @foreach ($gallery as $photo)
                                        @if ($photo->content_id == $item->id)
                                            <img src="{{ asset('storage/' . $photo->image) }}" alt="Foto 1"
                                                width="70%" height="49%" class="mt-3">
                                            <br>
                                        @endif
                                    @endforeach
                                </div>
                                {!! $item->description !!}
                            @endif
                        @endforeach
                    </div>
                </div>
            </div>

            <!-- Mushola -->
            <div class="tab-pane fade" id="fasilitas-pendukung" role="tabpanel" aria-labelledby="contact-tab">
                <div class="row">
                    <div class="">
                        <h3><b>Fasilitas Pendukung</b></h3>
                        <hr>
                        <br>
                        @foreach ($content as $item)
                            @if ($item->category_id == 6)
                                <table class="table table-bordered mt-4">
                                    <tr>
                                        <td style="width: 50%;">
                                            <h6 class="fw-bold">{{ $item->title }}</h6>
                                            {!! $item->description !!}
                                        </td>
                                        <td style="width: 50%;">
                                            @foreach ($gallery as $photo)
                                                @if ($photo->content_id == $item->id)
                                                    <img src="{{ asset('storage/' . $photo->image) }}" alt="Foto 1"
                                                        width="70%" height="49%" class="mt-3">
                                                @endif
                                            @endforeach
                                        </td>
                                    </tr>
                                </table>
                            @endif
                        @endforeach
                    </div>
                </div>
            </div>

        </div>
    </div>

    <script>
        function myFunction(imgs) {
            var expandImg = document.getElementById("expandedImg");
            var imgText = document.getElementById("imgtext");
            expandImg.src = imgs.src;
            expandImg.parentElement.style.display = "block";
        }

        function myImg(img) {
            var expandImg = document.getElementById("expanded-Img");
            var imgText = document.getElementById("img-text");
            expandImg.src = img.src;
            expandImg.parentElement.style.display = "block";
        }
    </script>


    @include('template.footer')
    <!-- Vendor JS Files -->
    <script src="{{ asset('template/assets/vendor/aos/aos.js') }}"></script>
    <script src="{{ asset('template/assets/vendor/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
    <script src="{{ asset('template/assets/vendor/php-email-form/validate.js') }}"></script>
    <script src="{{ asset('template/assets/vendor/purecounter/purecounter.js') }}"></script>
    <script src="{{ asset('template/assets/vendor/swiper/swiper-bundle.min.js') }}"></script>

    <!-- Template Main JS File -->
    <script src="{{ asset('template/assets/js/main.js') }}"></script>
</body>

</html>