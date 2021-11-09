@extends('template.app')
@section('title', 'Open Recruitment')
@section('main')
    <!-- ======= Popular Courses Section ======= -->
    <div class="container mt-5 mb-5" data-aos="fade-up">
        <a href="/bkk" class="col-12" style="font-size: 17px;"><i class="fas fa-arrow-left"></i>
            Kembali</a>
        @if (request()->is('bkk/open-recruitment'))
            <div class="text-center mt-5">
                <h1 class="fw-bold">Recruitment</h1>
            </div>
            <section id="popular-courses" class="courses">
                <div class="container" data-aos="fade-up">
                    <div class="d-flex justify-content-center row flex-wrap" data-aos="zoom-in" data-aos-delay="100">
                        @forelse ($reqruitment as $item)
                            <div class="col-lg-4 mb-4">
                                <div class="course-item shadow">
                                    <img src="{{ asset('storage/' . $item->image) }}" class="img-fluid" alt="..."
                                        style="width:100%;height:250px;" />
                                    <div class="course-content">
                                        <div class="d-flex justify-content-between mb-3">
                                            <h4>
                                                <a href="/{{ $item->nama_perusahaan }}"
                                                    class="item">{{ $item->nama_perusahaan }}</a>
                                            </h4>
                                            <!-- <p class="price">$169</p> -->
                                        </div>
                                        <h3><a href="/{{ $item->slug }}">{{ $item->title }}</a>
                                        </h3>

                                        <p>{{ Str::words($item->body, 25) }}</p>
                                        <p><a href="/{{ $item->slug }}">Read More ...</a></p>
                                    </div>
                                </div>
                            </div>
                        @empty
                            <div class="btn btn-danger">
                                Tidak Ada Open Recruitment
                            </div>
                        @endforelse
                        <!-- End Course Item-->
                    </div>
                </div>
            </section>
        @endif
        @if (request()->is('bkk/data-siswa-starbhak'))
            <div class="container mt-5 mb-5">
                <div class="text-center mt-5">
                    <h1 class="fw-bold">Data dan CV Siswa</h1>
                </div>
                <section class="our-webcoderskull padding-lg">
                    <div class="container">
                        <ul class="row">
                            @foreach ($users as $user)
                                <li class="col-12 col-md-6 col-lg-3 ani">
                                    <a data-toggle="modal" data-target="imagemodal" class="pop">
                                        <div class="cnt-block equal-hight text-center" style="height: 349px;">
                                            @if (file_exists(public_path('user-img/' . $user->avatar)))
                                                <img src="{{ 'user-img/' . $user->avatar }}" class="img-responsive" alt=""
                                                style="width:200px;height:200px; object-fit: cover;"/>
                                            @else
                                                <img src="{{ asset('storage/' . $user->avatar) }}" class="img-responsive" alt=""
                                                style="width:200px;height:200px; object-fit: cover;"/>
                                            @endif
                                            <h3 style="margin-top:10%;">{{ $user->name }}</h3>
                                            <h6 style="margin-top:10%;">{{ $user->user->skill }}</h6>
                                            <h6 style="margin-top:10%;"><a href="/{{ 'storage/' . $user->user->cv }}">CV -
                                                    {{ $user->name }}</a></h6>
                                        </div>
                                    </a>
                                </li>
                            @endforeach
                        </ul>
                    </div>
                </section>
            </div>
        @endif
    </div>
@endsection
