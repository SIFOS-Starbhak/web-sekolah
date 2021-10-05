@include('template.navbar')
<!-- ======= Popular Courses Section ======= -->
<section id="popular-courses" class="courses">
    <div class="container" data-aos="fade-up">
        <div class="row" data-aos="zoom-in" data-aos-delay="100">
            @forelse ($article as $artikel)
                <div class="col-lg-4 col-md-6 mb-4 d-flex align-items-stretch" style="height: 400px;width:350px;">
                    <div class="course-item">
                        <img src="{{ asset('storage/' . $artikel->image) }}" class="img-fluid" alt="..."
                            style="width:350px;height:250px;" />
                        <div class="course-content">
                            <div class="d-flex justify-content-between align-items-center mb-3">
                                <h4>{{ $artikel->category->name }}</h4>
                                <!-- <p class="price">$169</p> -->
                            </div>

                            <h3><a href="{{ route('showartikel', $artikel->slug) }}">{{ $artikel->title }}</a></h3>
                            <p>{{ $artikel->excerpy }}</p>
                        </div>
                    </div>
                </div>
            @empty
                <div class="alert alert-danger">
                    Artikel Belum Tersedia
                </div>
            @endforelse
            <!-- End Course Item-->
        </div>
    </div>
</section>
@include('template.footer')
