@extends('template.app')
@section('title', 'Ekstrakulikuler')
@section('main')
    <style>
        .ani {
            transition: 500ms;
        }

        .ani:hover {
            -ms-transform: scale(1.05);
            /* IE 9 */
            -webkit-transform: scale(1.05);
            /* Safari 3-8 */
            transform: scale(1.05);
            box-shadow: 20px;
            transition: 500ms;
        }

    </style>
    <div class="container mt-5" data-aos="fade-up">
        <a href="/kesiswaan" class="col-12" style="font-size: 17px;"><i class="fas fa-arrow-left"></i>
            Kembali</a>
        <div class="row card-group " data-aos="zoom-in" data-aos-delay="100">
            <section id="popular-courses" class="courses">
                <div class="container" data-aos="fade-up">
                    <h3 class="fw-bold text-center mb-5">Ekstrakurikuler</h3>
                    <div class="d-flex justify-content-center row flex-wrap" data-aos="zoom-in" data-aos-delay="100">
                        @foreach ($eskul as $item)
                            <div class="col-lg-4 mb-4" style="width: 300px">
                                <a href="/ekskul/{{ $item->slug }}">
                                    <div class="course-item shadow h-100 ani">
                                        <img src="{{ asset('storage/' . $item->image) }}"
                                            class="img-fluid justify-content-center" alt="..."
                                            style="width:100%;height:250px;object-fit: cover" />
                                        <div class="course-content mt-3">
                                            <h3><a href="/ekskul/{{ $item->slug }}">{{ $item->title }}</a>
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
@endsection
