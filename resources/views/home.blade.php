@extends('template.app')
@section('title', 'Home')
@section('main')
    <main id="main">
        <!-- ======= Counts Section ======= -->
        <!-- Carousel -->

        <div id="carouselExampleIndicators" class="carousel slide carosel" data-bs-ride="carousel">
            <div class="carousel-inner pt-4" style="height: auto">
                @foreach ($news as $key => $artikel)
                    <div class="carousel-item {{ $key == 0 ? 'active' : '' }}">
                        <div class=" container text-white mb-5">
                            <div class="row counters">
                                <div class="col-md-4 judul">
                                    <h2 style="color: white;">{{ $artikel->title }}</h2>
                                </div>
                                <div class="col-md-4">
                                    <p style="font-weight: 100" class="mt-2 isi">{{ $artikel->excerpt }}</p>
                                </div>
                                <div class="col-md-4 text-center tombol">
                                    <a href="/showartikel/{{ $artikel->slug }}"
                                        style="background-color: #e39b0d; border-radius: 50px"
                                        class="btn  text-center fw-bold text-white pe-5 ps-5 mt-4">Selengkapnya</a>
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
                <div class="carousel-indicators skipback">
                    @foreach ($news as $key => $item)
                        <button type="button" data-bs-target="#carouselExampleIndicators"
                            data-bs-slide-to="{{ $key }}" class="{{ $key == 0 ? 'active' : '' }}"
                            aria-current="true" aria-label="Slide {{ $loop->iteration }}"></button>
                    @endforeach
                </div>
            </div>
        </div>

        <!-- End Carousel -->
        <!-- End Counts Section -->

        <!-- ======= About Section ======= -->
        <section id="about" class="about" style="background-color: #d7efff; font-family: 'Poppins', sans-serif">
            <div class="container" data-aos="fade-up">
                <div class="row">
                    @foreach ($content as $item)
                        <div class="col-lg-6 col-md-6 order-1 order-lg-2 text-end" data-aos="fade-left"
                            data-aos-delay="100">
                            <img src="{{ asset('storage/' . $item->image) }}" class="img-fluid whystarbak" alt=""
                                style="height: 430px; width: 430px; border-radius: 20px; margin-left: auto" />
                        </div>
                        <div class="col-lg-6 col-md-6 pt-4 pt-lg-0 order-2 order-lg-1 content">
                            <h3>{{ $item->title }}</h3>
                            <p style="font-size: 20px">{!! $item->body !!}</p>
                        </div>
                    @endforeach
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
                        @foreach ($home as $img)
                            <p>
                                {{ $img->title }}
                                <button type="button" class="btn" style="color: white" data-bs-toggle="modal"
                                    data-bs-target="#exampleModal"><i class="far fa-arrow-alt-circle-right"
                                        style="font-size: 25px"></i>
                            </p>
                        @endforeach
                    </div>
                </div>
            </div>
        </section>


        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                    <a class="btn btn-outline-light text-light pe-5 ps-5" style="border-radius: 50px">Virtual
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
        </section>
        <!-- End Why Us Section -->

        <!-- Artikel dan Info Sekolah -->
        <section id="counts" class="counts section-bg" style="background: #e39b0d">
            <div class="container">
                <div class="text-center">
                    <a class="btn btn-outline-light text-light pe-5 ps-5" style="border-radius: 50px">Artikel dan Info
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
                                @if (file_exists(public_path('article-img/' . $artikel->image)))
                                    <img src="{{ 'article-img/' . $artikel->image }}" class="img-fluid" alt="..."
                                        style="width:100%;height:250px;" />
                                @else
                                    <img src="{{ asset('storage/' . $artikel->image) }}" class="img-fluid" alt="..."
                                        style="width:100%;height:250px;" />
                                @endif
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
                                    <p><a href="/showartikel/{{ $artikel->slug }}">Read More ...</a></p>
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

        @foreach ($posts as $key => $item)
            @if ($key == 6)
                <div class="container">
                    <div class="text-center">
                        <a href="/artikel" class="btn btn-outline-primary pe-5 ps-5 mb-5" style="border-radius: 50px">Load
                            More
                            ...</a>
                    </div>
                </div>
            @endif
        @endforeach

        <section id="counts" class="counts section-bg mt-4" style="background-color: #fff9f9">
            <div class="container text-center">
                <div class="row counters kebawah owl-carousel">
                    @foreach ($partners as $partner)
                        <div class="col-md-3 mt-2 partner"">
                                    <a href=" {{ $partner->link_perusahaan }}">
                            <img title="{{ $partner->nama_perusahaan }}"
                                src="{{ asset('storage/' . $partner->logo_perusahaan) }}" alt="" />
                            </a>
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
                                <p><a href="{{ $IG->value }}" target="_blank" class="sosmed">INSTAGRAM</a>
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
    </main>
    <!-- End #main -->
    <!-- ======= Footer ======= -->

    <!-- End Footer -->
    <div id="preloader"></div>
    <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
            class="bi bi-arrow-up-short"></i></a>
@endsection
