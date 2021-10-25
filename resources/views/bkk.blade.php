@extends('template.app')
@section('title', 'Open Recruitment')
@section('main')
    <!-- ======= Popular Courses Section ======= -->
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
    @endsection
