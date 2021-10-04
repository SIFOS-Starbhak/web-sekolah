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
        #hero {
            width: 100% !important;
            height: 530px !important;
            background: url("{{ Voyager::image(setting('site.home_jumbotron')) }}") top center;
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

    </style>
    @stack('css')
</head>

<body>
    {{-- Start Navbar --}}
    @include('template.navbar')
    {{-- End Navbar --}}
    {{-- Start Jumbotron --}}
    <section id="hero" class="d-flex justify-content-center align-items-center">
        <div class="container position-relative" style="margin-bottom: 10%;" data-aos="zoom-in" data-aos-delay="100">
            @if (setting('site.home_title'))
                <h1>{!! setting('site.home_title') !!}</h1>
            @endif
            @if (setting('site.home_subtitle'))
                <h2>{{ setting('site.home_subtitle') }}</h2>
            @endif
            <a href="{{ route('login') }}" target="_blank" class="btn-get-started">Login</a>
        </div>
    </section>
    {{-- End Jumbotron --}}

    {{-- Start Carousel --}}
    {{-- @include('template.carousel') --}}
    {{-- End Carousel --}}


    <script src="{{ asset('template/assets/vendor/aos/aos.js') }}"></script>
    <script src="{{ asset('template/assets/vendor/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
    <script src="{{ asset('template/assets/vendor/php-email-form/validate.js') }}"></script>
    <script src="{{ asset('template/assets/vendor/purecounter/purecounter.js') }}"></script>
    <script src="{{ asset('template/assets/vendor/swiper/swiper-bundle.min.js') }}"></script>

    <!-- Template Main JS File -->
    <script src="{{ asset('template/assets/js/main.js') }}"></script>
    @stack('js')
</body>

</html>
