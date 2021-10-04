@include('template.navbar')
@include('template.background')
<head>
  <style>
    .guru:hover{
      -ms-transform: scale(1.05); /* IE 9 */
      -webkit-transform: scale(1.05); /* Safari 3-8 */
      transform: scale(1.05);
    }
  </style>
</head>
<div class="container pt-5">
<nav class="nav nav-tabs flex-column flex-sm-row mt-1">
  <a class="flex-sm-fill text-sm-center nav-link active fw-bold" aria-current="page" data-bs-toggle="tab" data-bs-target="#home">Guru SMK Taruna Bhakti</a>
  <a class="flex-sm-fill text-sm-center nav-link fw-bold" data-bs-toggle="tab" data-bs-target="#kurikulum">Kurikulum SMK Taruna Bhakti</a>
  <a class="flex-sm-fill text-sm-center nav-link fw-bold" data-bs-toggle="tab" data-bs-target="#contact">Kompetensi Keahlian</a>

  {{-- <a class="flex-sm-fill text-sm-center nav-link " data-bs-toggle="tab" data-bs-target="#sistem">Sistem Pembelajaran</a>
  <a class="flex-sm-fill text-sm-center nav-link " data-bs-toggle="tab" data-bs-target="#sertifikasi">Sertifikasi Internasional</a> --}}
</nav>




<div class="tab-content mb-5" id="myTabContent">


     <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">      <section id="popular-courses" class="courses">
        <div class="container" data-aos="fade-up">
          <div class="row card-group " data-aos="zoom-in" data-aos-delay="100">

            <section id="popular-courses" class="courses">
              <div class="container" data-aos="fade-up">
                <div class="row" data-aos="zoom-in" data-aos-delay="100">
              @foreach ($fotoguru as $fg)
              <div class="col-lg-4 col-md-6 mb-4 d-flex align-items-stretch" style="height: 450px;width:350px;">
                <a href="/{{ $fg->slug }}">
                  <div class="course-item">
                    <img src="{{asset('storage/'.$fg->foto)}}" class="img-fluid" alt="..."  style="width:300px;height:300px;padding:10px;" />
                    <div class="course-content mt-2 text-center ">
                      
                      <h3 class="mb-4"><a href="">{{ $fg->nama_kategori }}</a></h3>
                    
                      <p>{!! $fg->caption !!}</p>
                      </div>
                    
                  </div>
                </a>
              </div>
              @endforeach
                </div>
            </div>
          </section>

              {{-- <section id="popular-courses" class="courses">
                <div class="container" data-aos="fade-up">
                    <div class="row" data-aos="zoom-in" data-aos-delay="100">
                        @foreach ($article as $artikel)
                        <div class="col-lg-4 col-md-6 mb-4 d-flex align-items-stretch" style="height: 450px;width:350px;">
                            <div class="course-item">
                                <img src="{{ asset('storage/' . $artikel->image) }}" class="img-fluid"
                                    alt="..." style="width:350px;height:300px;"/>
                                <div class="course-content">
                                    <div class="d-flex justify-content-between align-items-center mb-3">
                                        <h4>{{ $artikel->category->name }}</h4>
                                        <!-- <p class="price">$169</p> -->
                                    </div>
    
                                    <h3><a href="/{{ $artikel->slug }}">{{ $artikel->title }}</a></h3>
                                    <p>{{ $artikel->excerpy }}</p>
                                </div>
                            </div>
                        </div>
                        @endforeach
                        <!-- End Course Item-->
                    </div>
                </div>
            </section> --}}
            {{-- <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-md-0 mb-4 guru">
              <a href="/fotoguru">
                <div class="course-item">
                  <img src="{{asset('template/assets/img/abouttb.jpg')}}" class="img-fluid" alt="..."  style="height: 70%;width:100%;"/>
                  <div class="course-content">
                    <h3><a href="">Staff Tata Usaha</a></h3>
                    <p>Et architecto provident deleniti facere repellat nobis iste. Id facere quia quae dolores dolorem tempore.</p>
                  </div>
                </div>
              </a>
            </div>

            <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-lg-0 mb-4 guru">
              <a href="/fotoguru">
                <div class="course-item">
                  <img src="{{asset('template/assets/img/abouttb.jpg')}}" class="img-fluid" alt="..."  style="height: 70%;width:100%;"/>
                  <div class="course-content">
                     <h3><a href="">Guru Bimbingan Konseling</a></h3>
                    <p>Et architecto provident deleniti facere repellat nobis iste. Id facere quia quae dolores dolorem tempore.</p>
                  </div>
                </div>
              </a>
            </div>
            
            <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-lg-0 mb-4 guru">
              <a href="/fotoguru">
                <div class="course-item">
                  <img src="{{asset('template/assets/img/abouttb.jpg')}}" class="img-fluid" alt="..."  style="height: 70%;width:100%;"/>
                  <div class="course-content">
                     <h3><a href="">Guru Kejuruan</a></h3>
                    <p>Et architecto provident deleniti facere repellat nobis iste. Id facere quia quae dolores dolorem tempore.</p>
                  </div>
                </div>
              </a>
            </div>

            <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-lg-0 mb-4 guru">
              <a href="/fotoguru">
                <div class="course-item">
                  <img src="{{asset('template/assets/img/abouttb.jpg')}}" class="img-fluid" alt="..."  style="height: 70%;width:100%;"/>
                  <div class="course-content">
                     <h3><a href="">Guru Normatif Dan Adaptif</a></h3>
                    <p>Et architecto provident deleniti facere repellat nobis iste. Id facere quia quae dolores dolorem tempore.</p>
                  </div>
                </div>
              </a>
            </div> --}}

          </div>
        </div>
      </section>
    </div>
      <!-- End Popular Courses Section -->
  


    <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
      @foreach($kompetensi as $p)
    <br>
    {!! $p->body !!}
    @endforeach
  </div>

    <div class="tab-pane fade" id="kurikulum" role="tabpanel" aria-labelledby="kurikulum-tab">
      @foreach ($struktur as $item)
        {!!  $item->body !!}
      @endforeach
  </div>


</div>
</div>



@include('template.footer')