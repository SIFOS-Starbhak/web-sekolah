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