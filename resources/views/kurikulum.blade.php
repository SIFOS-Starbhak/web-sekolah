@include('template.navbar')
@include('template.background')

<head>
    <style>
        .guru:hover {
            -ms-transform: scale(1.05);
            /* IE 9 */
            -webkit-transform: scale(1.05);
            /* Safari 3-8 */
            transform: scale(1.05);
            box-shadow: 20px;
        }

    </style>
</head>
<div class="container pt-5">
    <nav class="nav nav-tabs flex-column flex-sm-row mt-1">
        <a class="flex-sm-fill text-sm-center nav-link active fw-bold" aria-current="page" data-bs-toggle="tab"
            data-bs-target="#home">Guru SMK Taruna Bhakti</a>
        <a class="flex-sm-fill text-sm-center nav-link fw-bold" data-bs-toggle="tab"
            data-bs-target="#kurikulum">Kurikulum SMK Taruna Bhakti</a>
        <a class="flex-sm-fill text-sm-center nav-link fw-bold" data-bs-toggle="tab" data-bs-target="#contact">Kompetensi
            Keahlian</a>

        {{-- <a class="flex-sm-fill text-sm-center nav-link " data-bs-toggle="tab" data-bs-target="#sistem">Sistem Pembelajaran</a>
  <a class="flex-sm-fill text-sm-center nav-link " data-bs-toggle="tab" data-bs-target="#sertifikasi">Sertifikasi Internasional</a> --}}
    </nav>




    <div class="tab-content mb-5" id="myTabContent">


        <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
            <section id="popular-courses" class="courses">
                <div class="container" data-aos="fade-up">
                    <div class="row card-group " data-aos="zoom-in" data-aos-delay="100">

                        <section id="popular-courses" class="courses">
                            <div class="container" data-aos="fade-up">
                                <div class="row" data-aos="zoom-in" data-aos-delay="100">
                                    @foreach ($fotoguru as $fg)
                                        <div class="col-lg-4 col-md-6 mb-4 d-flex align-items-stretch"
                                            style="height: 450px;width:350px;">
                                            <a href="/kurikulum/{{ $fg->slug }}">
                                                <div class="course-item shadow guru">
                                                    <img src="{{ asset('storage/' . $fg->foto) }}" class="img-fluid"
                                                        alt="..." style="width:300px;height:300px;padding:10px;" />
                                                    <div class="course-content mt-2 text-center ">

                                                        <h3 class="mb-4"><a
                                                                href="/kurikulum/{{ $fg->slug }}">{{ $fg->nama_kategori }}</a>
                                                        </h3>

                                                        <p>{!! $fg->caption !!}</p>
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
        <!-- End Popular Courses Section -->



        <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
            @foreach ($kompetensi as $p)
                <br>
                {!! $p->body !!}
            @endforeach
        </div>

        <div class="tab-pane fade" id="kurikulum" role="tabpanel" aria-labelledby="kurikulum-tab">
            @foreach ($struktur as $item)
                {!! $item->body !!}
            @endforeach
        </div>


    </div>
</div>



@include('template.footer')
