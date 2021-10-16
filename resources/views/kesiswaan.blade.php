<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />


    <meta content="" name="description" />
    <meta content="" name="keywords" />

    <!-- Favicons -->
    <link href="{{asset('favicon.ico')}}" rel="icon" />

    <link href="{{asset('template/assets/img/apple-touch-icon.png')}}" rel="apple-touch-icon" />

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet" />

    <!-- Vendor CSS Files -->
    <link href="{{asset('template/assets/vendor/animate.css/animate.min.css')}}" rel="stylesheet" />
    <link href="{{asset('template/assets/vendor/aos/aos.css')}}" rel="stylesheet" />
    <link href="{{asset('template/assets/vendor/bootstrap/css/bootstrap.min.css')}}" rel="stylesheet" />
    <link href="{{asset('template/assets/vendor/bootstrap-icons/bootstrap-icons.css')}}" rel="stylesheet" />
    <link href="{{asset('template/assets/vendor/boxicons/css/boxicons.min.css')}}" rel="stylesheet" />
    <link href="{{asset('template/assets/vendor/remixicon/remixicon.css')}}" rel="stylesheet" />
    <link href="{{asset('template/assets/vendor/swiper/swiper-bundle.min.css')}}" rel="stylesheet" />

    <!-- Template Main CSS File -->
    <link href="{{asset('template/assets/css/style.css')}}" rel="stylesheet" />

    <!-- Font Awesome -->
    <!-- <link href="fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css" /> -->
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
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

    <div class="container mt-5 mb-5">
        <nav>
            @foreach ($kegiatan_osis as $key => $item)
            <div class="nav nav-tabs" id="nav-tab" role="tablist">
                <button class="nav-link fw-bold {{ ($key == 0) ? 'active' : '' }}" id="nav-home-tab" data-bs-toggle="tab" data-bs-target="#{{ $item->slug }}"
                    type="button" role="tab" aria-controls="nav-home" aria-selected="true">{{ $item->title }}</button>

            </div>
            @endforeach
        </nav>
        <div class="tab-content" id="nav-tabContent">
            @foreach ($kegiatan_osis as $key => $item)
            <div class="tab-pane fade show {{ ($key == 0) ? 'active' : '' }}" id="osis" role="tabpanel" aria-labelledby="nav-home-tab">
                <div class="container" data-aos="fade-up">
                    {!! $ko->body !!}
                </div>
            </div>
            @endforeach
        </div>
    </div>
    </div>
    <br>

    @include('template.footer')
    <script src="{{asset('template/assets/vendor/aos/aos.js')}}"></script>
    <script src="{{asset('template/assets/vendor/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
    <script src="{{asset('template/assets/vendor/php-email-form/validate.js')}}"></script>
    <script src="{{asset('template/assets/vendor/purecounter/purecounter.js')}}"></script>
    <script src="{{asset('template/assets/vendor/swiper/swiper-bundle.min.js')}}"></script>

    <!-- Template Main JS File -->
    <script src="{{asset('template/assets/js/main.js')}}"></script>
  </body>
</html>
