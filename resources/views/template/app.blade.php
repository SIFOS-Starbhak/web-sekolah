<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />

    <title>@yield('title') - SMK Taruna Bhakti</title>
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
        integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
        crossorigin="anonymous" />
    <!-- =======================================================
* Template Name: Mentor - v4.5.0
* Template URL: https://bootstrapmade.com/mentor-free-education-bootstrap-theme/
* Author: BootstrapMade.com
* License: https://bootstrapmade.com/license/
======================================================== -->
@foreach ($settings as $item)
    @if ($item->display_name == 'Fitur Home Page')
        <style>
            #hero {
                width: 100% !important;
                height: 100% !important;
                background: url('{{ asset("storage/$item->value") }}') top center;
                background-size: cover !important;
                position: relative !important;
            }

            #hero:before {
                content: "" !important;
                background: rgba(0, 0, 0, 0.4) !important;
                position: absolute !important;
                bottom: 0 !important;
                top: 0 !important;
                left: 0 !important;
                right: 0 !important;
            }

            #hero {
    background-attachment: fixed;
}

        </style>
    @endif
@endforeach
<style>
    .artikel {
        color: white;
        font-weight: bold;
    }

    .artikel:hover {
        text-decoration: underline 2px;
    }

    .sosmed {
            color: white;
            font-weight: bold;
        }

    .sosmed:hover {
        text-decoration: underline 2px;
        color: #2689c9;
    }

</style>
</head>

<body>
    <header id="header" class="{{ request()->is('artikel') ? '' : 'fixed-top' }}">
        <div class="container d-flex align-items-center">
            <!-- <img src="assets/img/logotb.png" alt="" style="height: 70px; width: 70px" /> -->
            @foreach ($settings as $setting)
                @if ($setting->display_name == 'Site Logo')

                    <a href="/"><img src="{{ asset('storage/' . $setting->value) }}" alt=""
                            style="height: 70px; width: 70px" /></a>
                @endif
            @endforeach
            <!-- Uncomment below if you prefer to use an image logo -->
            <!-- <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

            <nav id="navbar" class="navbar order-last order-lg-0" style="margin-left: auto">
                <ul>
                    {{-- <li><a href="/" class="{{ request()->is('/*') ? 'active' : '' }}">Home</a></li> --}}
                    
                    <li><a href="/kurikulum"
                            class="{{ request()->is('kurikulum*') ? 'active' : '' }}">Kurikulum</a>
                    </li>
                    <li><a href="/hubin" class="{{ request()->is('hubin*') ? 'active' : '' }}">Hubungan
                            Industri</a>
                    </li>
                    <li><a href="/sarpras" class="{{ request()->is('sarpras*') ? 'active' : '' }}">Sarana Pra
                            Sarana</a></li>
                    <li><a href="/kesiswaan"
                            class="{{ request()->is('kesiswaan*') ? 'active' : '' }}">Kesiswaan</a>
                    </li>
                    <li><a href="/bkk" class="{{ request()->is('bkk*') ? 'active' : '' }}">BKK</a></li>
                    <li><a href="/programkeahlian" class="{{ request()->is('programkeahlian*') ? 'active' : '' }}">Program Keahlian</a></li>
                    <li><a href="/galery" class="{{ request()->is('galery*') ? 'active' : '' }}">Galery</a></li>
                    <li><a href="/kontakkami" class="{{ request()->is('kontakkami*') ? 'active' : '' }}">Kontak
                            Kami</a></li>
                    <li><a href="{{ route('login') }}" target="_blank" class="btn-get-started active">Login</a>
                    </li>
                </ul>
                <i class="bi bi-list mobile-nav-toggle"></i>
            </nav>
            <!-- .navbar -->
        </div>
    </header>
    <section id="hero" class="d-flex justify-content-center align-items-center">
        <div class="container position-relative" style="margin-bottom: 10%;" data-aos="zoom-in" data-aos-delay="100">
            @foreach ($settings as $item)
                @if ($item->display_name == 'Heading')
    
                    <h1>{!! $item->value !!}</h1>
                @elseif( $item->display_name == 'Sub Heading' )
                    <h2>{{ $item->value }}</h2>
                @endif
            @endforeach
            <a href="/profile" class="btn btn-outline-light mt-4" style="padding: 10px 30px 10px 30px; border-radius: 50px">Profile</a>
            
        </div>
    </section>

    @yield('main')

    <footer class="counts section-bg" style="background-color: #095b90;">
        <div class="container text-white">
            <div class="row counters mt-4">
                <div class="col-md-2" style="font-family: poppins">
                    <img src="{{ asset('template/assets/img/logotb.png') }}" alt=""
                        style="width: 95px; height: 95px" />
                </div>
                <div class="col-md-4 mt-3">
                    <p style="font-size: 20px">
                        <b>
                            YAYASAN SETYA BHAKTI <br />
                            SMK TARUNA BHAKTI
                        </b>
                    </p>
                    <p style="font-size: 13px; font-weight: lighter">
                        Jalan Pekapuran Kel.Curug <br />
                        Kec.Cimanggis , Kota Depok <br />
                        Propinsi Jawa Barat <br />
                        <br />
                        Telpon : (021) 874 4810
                    </p>
                </div>
                <div class="col-md-6 mt-3">
                    <p style="font-size: 20px"><b> Admission Information</b></p>
                    <br />
                    <p style="font-size: 13px; font-weight: lighter">
                        Email : taruna@smktarunabhakti.net <br />
                        Format: name, address, phone number, <br />
                        majors, and description
                    </p>
                </div>
                <hr class="mt-4" style="height: 2.5px" />
                <section>
                    <div class="text-center" style="margin-bottom: -15%">
                        <p style="font-size: 13px; font-weight: lighter">
                            Copyright SMK Taruna Bhakti <br />
                            Developed by Software Engineering SMK Taruna Bhakti
                        </p>
                    </div>
                </section>
            </div>
        </div>
    </footer>
    <script src="{{ asset('template/assets/vendor/aos/aos.js') }}"></script>
    <script src="{{ asset('template/assets/vendor/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
    <script src="{{ asset('template/assets/vendor/php-email-form/validate.js') }}"></script>
    <script src="{{ asset('template/assets/vendor/purecounter/purecounter.js') }}"></script>
    <script src="{{ asset('template/assets/vendor/swiper/swiper-bundle.min.js') }}"></script>

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
        })
    </script>
</body>

</html>
