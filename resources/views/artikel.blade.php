<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />

    <title>Mentor Bootstrap Template - Index</title>
    <meta content="" name="description" />
    <meta content="" name="keywords" />

    <!-- Favicons -->

    <link href="{{ asset('template/assets/img/favicon.png') }}" rel="icon" />

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

    <style>
        .artikel {
            color: white;
            font-weight: bold;
        }

        .artikel:hover {
            text-decoration: underline 2px;
        }

    </style>
    <!-- =======================================================
  * Template Name: Mentor - v4.5.0
  * Template URL: https://bootstrapmade.com/mentor-free-education-bootstrap-theme/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>
    @include('template.navbar')
    <!-- ======= Popular Courses Section ======= -->
    <div class="text-center mt-5">
        <h1 class="fw-bold">All Article</h1>
    </div>
    <section id="popular-courses" class="courses">
        <div class="container" data-aos="fade-up">
            <div class="d-flex justify-content-center row flex-wrap" data-aos="zoom-in" data-aos-delay="100">
                @forelse ($article as $artikel)
                    <div class="col-lg-4 mb-4">
                        <div class="course-item shadow">
                            <img src="{{ asset('storage/' . $artikel->image) }}" class="img-fluid" alt="..."
                                style="width:100%;height:250px;" />
                            <div class="course-content">
                                <div class="d-flex justify-content-between mb-3">
                                    <h4>
                                        <a href="/category/{{ $artikel->category->name }}"
                                            class="artikel">{{ $artikel->category->name }}</a>
                                    </h4>
                                    <!-- <p class="price">$169</p> -->
                                </div>
                                <h3><a href="/{{ $artikel->slug }}">{{ $artikel->title }}</a>
                                </h3>

                                <p>{{ $artikel->excerpt }}</p>
                                <p><a href="/{{ $artikel->slug }}">Read More ...</a></p>
                            </div>
                        </div>
                    </div>
                @empty
                    <div class="btn btn-danger">
                        Tidak Ada Artikel
                    </div>
                @endforelse
                <!-- End Course Item-->
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
