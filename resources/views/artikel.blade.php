@include('template.navbar')
    <!-- ======= Popular Courses Section ======= -->
        <section id="popular-courses" class="courses">
            <div class="container" data-aos="fade-up">
                <div class="row" data-aos="zoom-in" data-aos-delay="100">
                    @foreach ($article as $artikel)
                    <div class="col-lg-4 col-md-6 d-flex align-items-stretch">
                        <div class="course-item">
                            <img src="{{ asset('storage/' . $artikel->image) }}" class="img-fluid"
                                alt="..." />
                            <div class="course-content">
                                <div class="d-flex justify-content-between align-items-center mb-3">
                                    <h4>{{ $artikel->category->name }}</h4>
                                    <!-- <p class="price">$169</p> -->
                                </div>
                                <h3><a href="{{route('showartikel',$artikel->slug )}}">{{ $artikel->title }}</a></h3>

                                <p>{{ $artikel->excerpy }}</p>
                            </div>
                        </div>
                    </div>
                    @endforeach
                    <!-- End Course Item-->
                </div>
            </div>
        </section>
@include('template.footer')