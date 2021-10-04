@include('template.navbar')
@include('template.background')
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<div class="container mt-5 mb-5">
<a href="/kurikulum" class="col-12 mb-2" style="font-size: 17px;"><i class="fas fa-arrow-left"></i> Kembali</a>
{{-- <section class="our-webcoderskull padding-lg">
  <div class="container">
    <div class="row heading heading-icon">
      <h2 class="text-primary">{{ $kategori->nama_kategori }}</h2>
    </div>
    <ul class="row">
      @foreach ($foto as $ft)
      <li class="col-12 col-md-6 col-lg-3">
          <div class="cnt-block equal-hight text-center" style="height: 349px;">
            <img src="{{ asset('storage/'. $ft->foto) }}" class="img-responsive" alt="" style="width:200px;height:200px;">
            <h3 style="margin-top:10%;">{{ $ft->nama_guru }}</h3>
          </div>
        </li>
        @endforeach
    </ul>
  </div>
</section> --}}
    <section id="popular-courses" class="courses">
            <div class="container" data-aos="fade-up">
                <div class="row" data-aos="zoom-in" data-aos-delay="100">
                   @foreach ($foto as $ft)
                    <div class="col-lg-4 col-md-6 mb-4 d-flex align-items-stretch" style="height: 400px;width:250px;">
                        <div class="course-item">
                            <img src="{{ asset('storage/'. $ft->foto) }}" class="img-fluid rounded-circle "
                                alt="..." style="width:250px;height:250px; object-fit: cover; padding: 10px"/>
                            <div class="course-content">
                                <div class="d-flex justify-content-between align-items-center mb-3">
                                    <h4>{{ $kategori->nama_kategori }}</h4>
                                    <!-- <p class="price">$169</p> -->
                                </div>

                                <h3>{{ $ft->nama_guru }}</h3>
                                
                            </div>
                        </div>
                    </div>
                    @endforeach
                    <!-- End Course Item-->
                </div>
            </div>
        </section>
</div>
@include('template.footer')
        