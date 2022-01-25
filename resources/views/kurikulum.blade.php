@extends('template.app')
@section('title', 'Kurikulum')
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

    <section id="popular-courses" class="courses">
        <div class="container" data-aos="fade-up">
            
            <div class="d-flex justify-content-center row flex-wrap" data-aos="zoom-in" data-aos-delay="100">
                @foreach ($fotoguru as $fg)
                    <div class="col-lg-4 mb-4" style="width: 300px">
                        <a href="/guru-starbhak/{{ $fg->slug }}">
                            <div class="course-item h-100 shadow ani">
                                <img src="{{ asset('storage/' . $fg->foto) }}" class="img-fluid" alt="..."
                                    style="width:100%;height:250px; object-fit: cover;" />
                                <div class="course-content mt-3">
                                    <h3><a href="/guru-starbhak/{{ $fg->slug }}">{{ $fg->nama_kategori }}</a>
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
@endsection
