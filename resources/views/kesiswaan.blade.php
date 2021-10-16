@extends('template.app')
@section('title', 'Kesiswaan')
@section('main')
    <div class="container mt-5 mb-5" data-aos="fade-up">
        <section id="popular-courses" class="courses">
            <div class="container" data-aos="fade-up">
                <div class="row card-group " data-aos="zoom-in" data-aos-delay="100">

                    <section id="popular-courses" class="courses">
                        <div class="container" data-aos="fade-up">
                            <div class="row justify-content-center" data-aos="zoom-in" data-aos-delay="100">
                                @foreach ($kesiswaans as $kesiswaan)
                                    <div class="col-lg-4 col-md-6 mb-5 d-flex align-items-stretch"
                                        style="height: 450px;width:350px;">
                                        <a href="/kesiswaan/{{ $kesiswaan->slug }}">
                                            <div class="course-item shadow guru">
                                                <img src="{{ asset('storage/' . $kesiswaan->image) }}"
                                                    class="img-fluid" alt="..."
                                                    style="width:300px;height:300px;padding:10px;" />
                                                <div class="course-content mt-2 text-center ">

                                                    <h3 class="mb-4"><a
                                                            href="/kesiswaan/{{ $kesiswaan->slug }}">{{ $kesiswaan->title }}</a>
                                                    </h3>

                                                </div>

                                            </div>
                                        </a>
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    </section>

                </div>
            </div>
        </section>
    </div>
    <br>
@endsection
