@extends('template.app')
@section('title', $gallery->title)
@section('main')

    <style>
        .ani {
            transition: 200ms;
            filter: brightness(70%)
        }

        .ani:hover {
            filter: none
                /* -ms-transform: scale(1.05);
                        -webkit-transform: scale(1.05);
                        transform: scale(1.05);
                        box-shadow: 20px;
                        transition: 500ms; */
        }

    </style>
    <style type="text/css">
        .content>div{
            width: 100% !important;
        }
        @media screen and (max-width:900px) {
            .content>div {
                width: 100% !important
            }

            .elem{
                width: 48% !important;
            }
        }

        @media screen and (max-width:360px) {

            .elem{
                width: 100% !important;
            }
        }

        .elem,
        .elem * {
            box-sizing: border-box;
            margin: 0 !important;
        }

        .elem {
            display: inline-block;
            font-size: 0;
            width: 31%;
            border: 20px solid transparent;
            border-bottom: none;
            margin: auto;
            /* padding: 10px; */
            height: auto;
            background-clip: padding-box;
        }

        .elem>span {
            display: block;
            cursor: pointer;
            height: 0;
            padding-bottom: 70%;
            background-size: cover;
            background-position: center center;
        }

    </style>
    <!-- //////////////////////////////////////////////// -->
    <!-- REQUIRED ELEMENTS -->

    <script src="{{ asset('lightbox/lib/jquery.js') }}" type="text/javascript"></script>

    <script src="{{ asset('lightbox/js/lc_lightbox.lite.js') }}" type="text/javascript"></script>
    <link rel="stylesheet" href="{{ asset('lightbox/css/lc_lightbox.css') }}" />


    <!-- SKINS -->
    <link rel="stylesheet" href="{{ asset('lightbox/skins/minimal.css') }}" />


    <!-- ASSETS -->
    <script src="{{ asset('lightbox/lib/AlloyFinger/alloy_finger.min.js') }}" type="text/javascript"></script>
    {{-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script> --}}
    <div class="container mt-5 mb-5" data-aos="fade-up">
        <a href="/gallery" class="col-12" style="font-size: 17px;"><i class="fas fa-arrow-left"></i>
            Kembali</a>
        @if (request()->is('gallery/image'))
            <!-- PAGE'S BASE CSS -->
            {{-- <div class="container"> --}}
                <div class="header">
                    <div style="text-align: center; color: #3f3f3f; padding: 40px 20px 25px; opacity: 0.9;">
                        <h1>Gallery</h1>
                        </h3>
                    </div>
                </div>


                <div class="content d-flex justify-content-center flex-wrap">
                    @foreach ($image as $item)
                        <a class="elem" href="{{ asset('storage/' . $item->photo) }}"
                            title="{{ $item->title }}" data-lcl-txt="{{ $item->description }}" data-lcl-author="someone"
                            data-lcl-thumb="{{ asset('storage/' . $item->photo) }}">
                            <span style="background-image: url({{ asset('storage/' . $item->photo) }});"></span>
                        </a>
                    @endforeach

                    <br /><br />
                </div>
            {{-- </div> --}}



            <!-- //////////////////////////////////////////////// -->
            <!-- LIGHTBOX INITIALIZATION -->
            <script type="text/javascript">
                $(document).ready(function(e) {

                    // live handler
                    lc_lightbox('.elem', {
                        wrap_class: 'lcl_fade_oc',
                        gallery: true,
                        thumb_attr: 'data-lcl-thumb',

                        skin: 'minimal',
                        radius: 0,
                        padding: 0,
                        border_w: 0,
                    });

                });
            </script>
            <!-- //////////////////////////////////////////////// -->
            <!-- //////////////////////////////////////////////// -->
            {{-- <div class="closeimg text-center">
                <!-- Close the image -->
                <span onclick="this.parentElement.style.display='none'" class="closebtn text-dark">&times;</span>

                <!-- Expanded image -->
                <img id="expandedImg" class="mt-4" style="width:80%;">
            </div>

            <div class="row mt-5">
                @foreach ($image as $key => $kls)
                    <div class="col-4 mt-4">
                        <img src="{{ asset('storage/' . $kls->photo) }}" class="d-block img-fluid mx-auto ani" alt="..."
                            width="100%" onclick="myFunction(this);">
                    </div>
                @endforeach
            </div> --}}



            {{-- <div id="carouselExampleIndicators" class="carousel slide my-5" data-bs-ride="carousel">
                <div class="carousel-indicators">
                    @foreach ($image as $key => $kls)
                        <button type="button" data-bs-target="#carouselExampleIndicators"
                            data-bs-slide-to="{{ $loop->iteration - 1 }}"
                            class="{{ $loop->iteration == 1 ? 'active' : '' }}" aria-current="true"
                            aria-label="Slide {{ $loop->iteration }}"><img class="img-fluid mx-auto"
                                src="{{ asset('storage/' . $kls->photo) }}" width="100%" alt=""></button>
                    @endforeach
                </div>
                <div class="carousel-inner">
                    @foreach ($image as $key => $kls)
                        <div class="carousel-item {{ $loop->iteration == 1 ? 'active' : '' }}">
                            <img src="{{ asset('storage/' . $kls->photo) }}" class="d-block img-fluid mx-auto" alt="..."
                                width="25%">
                        </div>
                    @endforeach
                </div>
            </div> --}}
        @endif
        @if (request()->is('gallery/video'))
            {{-- <div class="container mx-auto my-5">
        @foreach ($video as $item)
            <video width="320" height="240" controls>
                <source src="{{ asset('storage/' . $item->video) }}" type="video/mp4">
            </video>
        @endforeach
    </div> --}}


            {{-- <div id="trailer">
                <div id="video">
                    <div class="row justify-content-left">
                        @foreach ($video as $item)
                            <div class="col-4 mt-4 text-center">
                                <video controls width="100%" onclick="if(/Android/.test(navigator.userAgent))this.play();">
                                    <source src="{{ asset('storage/' . $item->video) }}" type="video/mp4" />
                                    <embed src="video/flashfox.swf"
                                        flashVars="autoplay=true&amp;controls=true&amp;loop=true&amp;src=trailer.mp4"
                                        allowFullScreen="true" wmode="transparent" type="application/x-shockwave-flash"
                                        pluginspage="http://www.adobe.com/go/getflashplayer_en" />
                                </video>
                                <h5 class="fw-bold">{{ $item->title }}</h5>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div> --}}




            {{-- <div class="container" data-aos="fade-up">
                <div class="row card-group " data-aos="zoom-in" data-aos-delay="100">

                    <section id="popular-courses" class="courses">
                        <div data-aos="fade-up">
                            <div class="d-flex justify-content-left row flex-wrap" data-aos="zoom-in" data-aos-delay="100">
                                @foreach ($video as $item)
                                    <div class="col-lg-4 mb-4" style="">
                                        <video controls width="100%" poster="{{ asset('storage/' . $item->thumbnail) }}"
                                            onclick="if(/Android/.test(navigator.userAgent))this.play();">
                                            <source src="{{ asset('storage/' . $item->video) }}" type="video/mp4" />
                                            <embed src="video/flashfox.swf"
                                                flashVars="autoplay=true&amp;controls=true&amp;loop=true&amp;src=trailer.mp4"
                                                allowFullScreen="true" wmode="transparent"
                                                type="application/x-shockwave-flash"
                                                pluginspage="http://www.adobe.com/go/getflashplayer_en" />
                                        </video>
                                        <h5 class="fw-bold mt-2 text-center">{{ $item->title }}</h5>
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    </section>

                </div>
            </div> --}}
            <div class="row">
                <div class="col">
                    
                </div>
            </div>
        @endif
    </div>
@endsection
