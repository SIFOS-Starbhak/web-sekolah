<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />

    <title>Kurikulum - SMK Taruna Bhakti</title>
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
 <style>
            .guru:hover {
                -ms-transform: scale(1.05);
                /* IE 9 */
                -webkit-transform: scale(1.05);
                /* Safari 3-8 */
                transform: scale(1.05);
                box-shadow: 20px;
            }

        </style>

</head>

<body>
    @include('template.navbar')
    @include('template.background')

     <section id="popular-courses" class="courses">
                    <div class="container" data-aos="fade-up">
                        <div class="row card-group " data-aos="zoom-in" data-aos-delay="100">
<a href="/kurikulum" class="col-12" style="font-size: 17px;"><i class="fas fa-arrow-left"></i>
                Kembali</a>
                            <section id="popular-courses" class="courses">
                                <div class="container" data-aos="fade-up">
                                    <div class="row" data-aos="zoom-in" data-aos-delay="100">
                                        @foreach ($fotoguru as $fg)
                                            <div class="col-lg-4 col-md-6 mb-4 d-flex align-items-stretch"
                                                style="height: 450px;width:350px;">
                                                <a href="/kurikulum/{{ $fg->slug }}">
                                                    <div class="course-item shadow guru">
                                                        <img src="{{ asset('storage/' . $fg->foto) }}"
                                                            class="img-fluid" alt="..."
                                                            style="width:300px;height:300px;padding:10px;" />
                                                        <div class="course-content mt-2 text-center ">

                                                            <h3 class="mb-4"><a
                                                                    href="/kurikulum/{{ $fg->slug }}">{{ $fg->nama_kategori }}</a>
                                                            </h3>

                                                            <p>{!! $fg->caption !!}</p>
                                                        </div>

                                                    </div>
                                                </a>
                                            </div>
                                        @endforeach
                                    </div>
                                </div>
                            </section>



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