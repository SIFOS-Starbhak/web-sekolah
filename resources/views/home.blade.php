<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />

    <title>SMK Taruna Bhakti - Our Quality Ask be Different</title>
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
        .sosmed {
            color: white;
            font-weight: bold;
        }

        .sosmed:hover {
            text-decoration: underline 2px;
            color: #2689c9;
        }

        .artikel {
            color: white;
            font-weight: bold;
        }

        .artikel:hover {
            text-decoration: underline 2px;
        }

    </style>
</head>

<body>
    <!-- ======= Header ======= -->

    {{-- <header id="header" class="fixed-top"> --}}
    @include('template.navbar')
    {{-- </header> --}}

    <!-- End Header -->

    <!-- ======= Hero Section ======= -->
    @include('template.background')
    <!-- End Hero -->

    <main id="main">
        <!-- ======= Counts Section ======= -->
        <!-- Carousel -->

        @include('template.carousel')

        <!-- End Carousel -->
        <!-- End Counts Section -->

        <!-- ======= About Section ======= -->
        <section id="about" class="about" style="background-color: #d7efff; font-family: 'Poppins', sans-serif">
            <div class="container" data-aos="fade-up">
                <div class="row">
                    <div class="col-lg-6 col-md-6 order-1 order-lg-2 text-end" data-aos="fade-left" data-aos-delay="100">
                        @foreach ($settings as $item)
                            @if ($item->display_name == 'Image Content')
                                <img src="{{ asset('storage/' . $item->value) }}" class="img-fluid whystarbak" alt=""
                                    style="height: 430px; width: 430px; border-radius: 20px; margin-left: auto" />
                            @endif
                        @endforeach
                    </div>
                    <div class="col-lg-6 col-md-6 pt-4 pt-lg-0 order-2 order-lg-1 content">
                        @foreach ($settings as $item)
                            @if ($item->display_name == 'Title Content')
                                <h3>{{ $item->value }}</h3>
                            @elseif( $item->display_name == 'Content' )
                                <p style="font-size: 20px">{!! $item->value !!}</p>
                            @endif
                        @endforeach
                    </div>
                </div>
            </div>
        </section>
        <!-- End About Section -->

        <!-- ======= Counts Section ======= -->
        <section id="counts" class="counts section-bg">
            <div class="container">
                <div class="row counters">
                    <div>
                        <p>SMK Taruna Bhakti</p>
                    </div>
                    <br />
                    <div>
                        <p>
                            Protokol Kesehatan di Lingkungan Sekolah
                            <button type="button" class="btn" style="color: white" data-bs-toggle="modal"
                                data-bs-target="#exampleModal"><i class="far fa-arrow-alt-circle-right"
                                    style="font-size: 25px"></i>
                        </p>
                    </div>
                </div>
            </div>
        </section>


        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
            aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content" style="width: 100%">
                    @foreach ($home as $img)
                        <img class="fotoakb" src="{{ asset('storage/' . $img->image) }}" alt=""
                            style="width:100%;">
                    @endforeach
                </div>
            </div>
        </div>

        <!-- ======= Why Us Section ======= -->
        <section id="why-us" class="why-us bg-dark">
            <div class="container" data-aos="fade-up">
                <div class="text-center">
                    <a class="btn btn-outline-light pe-5 ps-5" style="border-radius: 50px">Virtual
                        Tour SMK Taruna Bhakti</a>
                </div>
                @foreach ($settings as $setting)
                    @if ($setting->display_name == 'Virtual Tour')
                        <iframe class="mt-5" src="{{ $setting->value }}"
                            style="width:100%; height:500px; border-radius: 25px">
                        </iframe>
                    @endif
                @endforeach

            </div>
            </div>
        </section>
        <!-- End Why Us Section -->

        <!-- Artikel dan Info Sekolah -->
        <section id="counts" class="counts section-bg" style="background: #e39b0d">
            <div class="container">
                <div class="text-center">
                    <a class="btn btn-outline-light pe-5 ps-5" style="border-radius: 50px">Artikel dan Info
                        Sekolah</a>
                </div>
            </div>
        </section>
        <!-- End -->
        <!-- ======= Popular Courses Section ======= -->
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
                                            <a href="/category/{{ $artikel->category->slug }}"
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

        <div class="container">
            <div class="text-center">
                <a href="/artikel" class="btn btn-outline-primary pe-5 ps-5 mb-5" style="border-radius: 50px">Load More
                    ...</a>
            </div>
        </div>

        <section id="counts" class="counts section-bg mt-4" style="background-color: #fff9f9">
            <div class="container text-center">
                <div class="row counters kebawah owl-carousel">
                    @foreach ($partners as $partner)
                        <div class="col-md-3 mt-2">
                            <img src="{{ asset('storage/' . $partner->logo_perusahaan) }}" alt="" />
                            <br><br>
                            <h5 class="fw-bold">{{ $partner->nama_perusahaan }}</h5>
                        </div>
                    @endforeach
                </div>
            </div>
        </section>


        <section id="counts" class="counts section-bg " style="background-color: #3b4850">
            <div class="container text-white">
                <div class="row counters mt-4 mb-5">
                    <div class="col-md-7" style="font-family: poppins">
                        <h1>
                            STARBHAK <br />
                            <h1 class="mt-2">LATEST</h1>
                        </h1>
                        <br />
                        <h1 style="font-size: 50px; font-weight: bolder"><b>ACTIVITIES.</b></h1>
                    </div>
                    <div class="col-md-3 mt-5">
                        <i class="fab fa-instagram" style="font-size: 40px"></i>
                        <br>
                        @foreach ($settings as $IG)
                            @if ($IG->display_name == 'Link Instagram')
                                <p><a href="{{ $IG->value }}" target="_blank" class="sosmed">INSTGARAM</a>
                                </p>
                            @endif
                        @endforeach
                        <p style="font-size: 13px; font-weight: lighter">
                            Check out the latest photos <br />
                            on starbhak.offcial Instagram
                        </p>
                    </div>
                    <div class="col-md-2 mt-5">
                        <i class="fab fa-facebook" style="font-size: 40px"></i>
                        <br>
                        @foreach ($settings as $FB)
                            @if ($FB->display_name == 'Link Facebook')
                                <p><a href="{{ $FB->value }}" target="_blank" class="sosmed">Facebook
                                        Page</a></p>
                            @endif
                        @endforeach
                        <p style="font-size: 13px; font-weight: lighter">Check out the latest photos on starbhak.offcial
                            Facebook</p>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Trainers Section -->
        {{-- <footer  class="counts section-bg" style="background-color: #095b90;"> --}}
        @include('template.footer')
        {{-- </footer> --}}
    </main>
    <!-- End #main -->
    <!-- ======= Footer ======= -->

    <!-- End Footer -->
    <div id="preloader"></div>
    <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
            class="bi bi-arrow-up-short"></i></a>

    <!-- Vendor JS Files -->
    <script src="{{ asset('template/assets/vendor/aos/aos.js') }}"></script>
    <script src="{{ asset('template/assets/vendor/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
    <script src="{{ asset('template/assets/vendor/php-email-form/validate.js') }}"></script>
    <script src="{{ asset('template/assets/vendor/purecounter/purecounter.js') }}"></script>
    <script src="{{ asset('template/assets/vendor/swiper/swiper-bundle.min.js') }}"></script>
    <script src="jquery.min.js"></script>
    <script src="owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Main JS File -->
    <script src="{{ asset('template/assets/js/main.js') }}"></script>
    <script>
        //default settings:
        $('.owl-carousel').owlCarousel({
                    nav: false,
                    loop: true,
                    margin: 30,
                    dots: true,
                    autoplay: true,
                    autoplaySpeed: 2200,
                    autoplayTimeout: 2200,
                    autoplayHoverPause: true,
                    slideTransition: 'linear',
                    responsive: {
                        0: {
                            items: 1
                        },
                        576: {
                            items: 2
                        },
                        768: {
                            items: 3
                        },
                        992: {
                            items: 4
                        }
                    }
    </script>
</body>

</html>
