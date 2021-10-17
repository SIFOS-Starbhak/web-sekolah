@extends('template.app')
@section('title', 'Article')
@section('main')
    <!-- ======= Popular Courses Section ======= -->
    <div class="text-center mt-5">
        <h1 class="fw-bold">All Article</h1>
    </div>
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
                                        <a href="/category/{{ $artikel->category->name }}"
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
    @endsection
