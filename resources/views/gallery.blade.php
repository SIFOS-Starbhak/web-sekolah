@extends('template.app')
@section('title', 'Gallery')
@section ('main')
<div class="container" data-aos="fade-up">
    <div class="row card-group " data-aos="zoom-in" data-aos-delay="100">

        <section id="popular-courses" class="courses">
            <div class="container" data-aos="fade-up">
                <div class="d-flex justify-content-center row flex-wrap" data-aos="zoom-in" data-aos-delay="100" >
                    @foreach ($cardgallery as $fg)
                        <div class="col-lg-4 mb-4" style="width: 300px;">
                            <div class="course-item shadow">
                                <img src="{{ asset('storage/' . $fg->image) }}" class="img-fluid" alt="..."
                                    style="width:100%;height:250px;" />
                                <div class="course-content mt-3 text-center mb-3">
                                    <h3><a href="/gallery/{{ $fg->slug }}"><span>Gallery Tahun</span> {{ $fg->tahun }}</a>
                                    </h3>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </section>
    </div>
</div>
@endsection