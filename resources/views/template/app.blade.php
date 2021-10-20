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
        integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
    <!-- =======================================================
  * Template Name: Mentor - v4.5.0
  * Template URL: https://bootstrapmade.com/mentor-free-education-bootstrap-theme/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
    <style>
        #hero {
            width: 100% !important;
            height: 100% !important;
            background-size: cover !important;
            position: relative !important;
        }

        #hero:before {
            content: "" !important;
            background: rgba(0, 0, 0, 0) !important;
            position: absolute !important;
            bottom: 0 !important;
            top: 0 !important;
            left: 0 !important;
            right: 0 !important;
        }

        #hero div img {
            object-fit: cover;
        }

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
    <header id="header" class="sticky-top">
        <div class="container d-flex align-items-center">
            @foreach ($settings as $setting)
                @if ($setting->display_name == 'Site Logo')
                    <a href="/"><img src="{{ asset('storage/' . $setting->value) }}" alt=""
                            style="height: 70px; width: 70px" /></a>
                @endif
            @endforeach
            <!-- Uncomment below if you prefer to use an image logo -->
            {{-- <a href="index.html" class="logo me-auto"><img src="{{asset('template/assets/img/logo.png')}}" alt="" class="img-fluid"></a> --}}

            <nav id="navbar" class="navbar order-last order-lg-0 show" style="margin-left: auto">
                <ul>
                    {{-- <li><a href="/" class="{{ request()->is('/*') ? 'active' : '' }}">Home</a></li> --}}
                    @foreach ($navbar as $item)
                        <li><a href="/{{ $item->slug }}"
                                class="{{ request()->is($item->slug . '*') ? 'active' : '' }}">{{ $item->name }}</a>
                        </li>
                    @endforeach

                    <li><a href="{{ route('login') }}" target="_blank" class="btn-get-started active">Login</a>
                    </li>

                </ul>
                <i class="bi bi-list mobile-nav-toggle"></i>
            </nav>
            <!-- .navbar -->
        </div>
    </header>

    @if (!request()->is('/registalum'))
        <div id="carouselExampleIndicators2" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner" id="hero">
                @foreach ($backgrounds as $key => $bg)
                    <div class="carousel-item {{ $key == 0 ? 'active' : '' }}">
                        <img src="{{ asset('storage/' . $bg->image) }}" class="d-block" alt="..." width="100%"
                            style="height: 600px; filter: brightness(50%)">
                        <div class="carousel-caption d-none d-md-block container"
                            style="margin-bottom: 13%; margin-left: -10%; text-align: left;" data-aos="zoom-in"
                            data-aos-delay="100">
                            @foreach ($settings as $item)
                                @if ($item->display_name == 'Heading')
                                    {!! $item->value !!}
                                @endif
                            @endforeach

                            <a href="/profile" class="btn btn-outline-light mt-4"
                                style="padding: 10px 30px 10px 30px; border-radius: 50px">Profile</a>
                        </div>
                    </div>

                @endforeach
            </div>
            {{-- <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators2"
            data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators2"
            data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button> --}}
        </div>
    @endif
    {{-- <section id="hero" class="d-flex justify-content-center align-items-center">
        <div class="container position-relative" style="margin-bottom: 10%;" data-aos="zoom-in" data-aos-delay="100">
            @foreach ($backgrounds as $key => $bg)
            <div class="carousel-item {{ $key == 0 ? 'active' : '' }}">
                <img src="{{ asset('storage/' . $bg->image) }}" class="d-block" alt="..." width="100%"
                        style="height: 600px;object-fit: cover">

 @foreach ($settings as $item)
                            @if ($item->display_name == 'Heading')
                                <h1>{!! $item->value !!}</h1>
                            @elseif( $item->display_name == 'Sub Heading' )
                                <h2>{{ $item->value }}</h2>
                            @endif
                        @endforeach
            <a href="/profile" class="btn btn-outline-light mt-4"
                style="padding: 10px 30px 10px 30px; border-radius: 50px">Profile</a>

        </div>
    </section> --}}

    @yield('main')

    <footer class="counts section-bg" style="background-color: #095b90;">
        <div class="container text-white">
            <div class="row counters mt-4">
                <div class="col-md-2" style="font-family: poppins">
                    <img src="{{ asset('template/assets/img/logotb.png') }}" alt=""
                        style="width: 95px; height: 95px" />
                </div>
                <div class="col-md-3 mt-3">
                    <p style="font-size: 20px">
                        <b>
                            YAYASAN SETYA BHAKTI <br />
                            SMK TARUNA BHAKTI
                        </b>
                    </p>
                    <p style="font-size: 13px; font-weight: lighter">
                        Jalan Pekapuran Kel. Curug <br />
                        Kec. Cimanggis , Kota Depok <br />
                        Provinsi Jawa Barat <br />
                        Kode Pos : 16953<br />
                        Telepon : (021) 874 4810
                    </p>
                </div>
                <div class="col-md-3 mt-3">
                    <p style="font-size: 20px"><b>Admission Information</b></p>
                    <br />
                    <p style="font-size: 13px; font-weight: lighter">
                        Email : <a class="text-white link-email"
                            href="https://mail.google.com/mail/u/0/#inbox?compose=CllgCJfrtXDBTmXvRjBmgJVHHJSbRTpLwSxXtCMfZcnbzmglgHtJHJdDwfWdvzzCLGZzlRLstnV"
                            target="_blank">taruna@smktarunabhakti.net</a> <br />
                        Format: name, address, phone number, <br />
                        majors, and description
                    </p>
                </div>
                <div class="col-md-4 mt-3">
                    <iframe class="shadow-lg"
                        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3422.9758774687684!2d106.86757171434212!3d-6.3841757642214585!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69eb7eb989aead%3A0xab7c10f23f712046!2sSMK%20Taruna%20Bhakti!5e1!3m2!1sid!2sid!4v1633323181916!5m2!1sid!2sid"
                        style="border-radius: 5px" allowfullscreen="" loading="lazy">
                    </iframe>
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

</body>

</html>
