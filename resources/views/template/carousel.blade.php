<div id="carouselExampleIndicators" class="carousel slide carosel" data-bs-ride="carousel">
<<<<<<< HEAD
  <div class="hcarousel carousel-inner pt-4" style="height: 150px">
    @foreach ($news as $key => $artikel)
    <div class="carousel-item {{ ($key == 0) ? 'active' : '' }}">
            <div class="consel container text-white  carosel mb-5" style="height: 150px">
              <div class="row counters">
                <div class="col-md-4 judul">
                  <h2 style="color: white;">{{ $artikel->title }}</h2>
=======
    <div class="carousel-inner pt-4">
        @foreach ($news as $key => $artikel)
            <div class="carousel-item {{ $key == 0 ? 'active' : '' }}">
                <div class=" container text-white  carosel mb-5">
                    <div class="row counters">
                        <div class="col-md-4 judul">
                            <h2 style="color: white;">{{ $artikel->title }}</h2>
                        </div>
                        <div class="col-md-4">
                            <p style="font-weight: 100" class="mt-2 isi">{{ $artikel->excerpt }}</p>
                        </div>
                        <div class="col-md-4 text-center tombol">
                            <a href="/showartikel/{{ $artikel->slug }}"
                                style="background-color: #e39b0d; border-radius: 50px"
                                class="btn  text-center fw-bold text-white pe-5 ps-5 mt-4">Selengkapnya</a>
                        </div>
                    </div>
>>>>>>> 0fa8f29c81c91983e486d25eb3c3842bcd33d25f
                </div>
            </div>
<<<<<<< HEAD
          </div>
      @endforeach

  <div class="carousel-indicators skipback" >
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>

  </div>
</div>

=======
        @endforeach

        <div class="carousel-indicators skipback">
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0"
                class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
                aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"
                aria-label="Slide 3"></button>
        </div>
>>>>>>> 0fa8f29c81c91983e486d25eb3c3842bcd33d25f

    </div>
</div>
