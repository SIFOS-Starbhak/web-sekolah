@extends('template.app')
@section('title', $gallery->title)
@section('main')

    <style>
        .ani {
            transition: 200ms;
            filter: brightness(75%)
        }

        .ani:hover {
            filter: none;
        }

    </style>
    {{-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script> --}}
    <div class="container mt-5 mb-5" data-aos="fade-up">
        <a href="/gallery" class="col-12" style="font-size: 17px;"><i class="fas fa-arrow-left"></i>
            Kembali</a>
        @if (request()->is('gallery/image'))
            <div class="closeimg text-center">
                <!-- Close the image -->
                <span onclick="this.parentElement.style.display='none'" class="closebtn text-dark">&times;</span>

                <!-- Expanded image -->
                <img id="expandedImg" class="mt-4" style="width:50%;">
            </div>

            <div class="row mt-5" style="max-height: 400px; overflow-y: scroll;">
                @foreach ($image as $key => $kls)
                    <div class="col-md-3 mt-4">
                        <img src="{{ asset('storage/' . $kls->photo) }}" class="d-block img-fluid mx-auto ani" alt="..."
                            width="100%" onclick="myFunction(this);">
                    </div>
                @endforeach
            </div>



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




            <div class="container" data-aos="fade-up">
                <div class="row card-group " data-aos="zoom-in" data-aos-delay="100">


                    <section id="popular-courses" class="courses">
                        <div data-aos="fade-up">
                            <div class="d-flex justify-content-left row flex-wrap" data-aos="zoom-in" data-aos-delay="100">
                                @foreach ($video as $item)
                                    <div class="col-lg-4 mb-4" style="">
                                        <video controls width="100%"
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
            </div>
        @endif
    </div>


    <script>
        $('.owl-carousel').owlCarousel({
            loop: true,
            margin: 10,
            nav: true,
            responsive: {
                0: {
                    items: 1
                },
                600: {
                    items: 3
                },
                1000: {
                    items: 5
                }
            }
        })

        function myFunction(imgs) {
            var expandImg = document.getElementById("expandedImg");
            var imgText = document.getElementById("imgtext");
            expandImg.src = imgs.src;
            expandImg.parentElement.style.display = "block";
        }
    </script>

@endsection
