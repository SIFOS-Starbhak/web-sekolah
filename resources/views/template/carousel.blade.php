<div id="carouselExampleIndicators" class="carousel slide carosel" data-bs-ride="carousel">
    <div class="carousel-inner pt-4">
        @foreach ($news as $new)
            @if ($new->id == 1)
                <div class="carousel-item active">
                    <div class=" container text-white  carosel mb-5">
                        <div class="row counters">
                            <div class="col-md-4 judul">
                                <h2 style="color: white">{{ $new->title }}</h2>
                            </div>
                            <div class="col-md-4">
                                <p style="font-weight: 100" class="mt-2 isi">{{ $new->content }}</p>
                            </div>
                            <div class="col-md-4 text-center tombol">
                                <a href="" style="background-color: #e39b0d; border-radius: 50px"
                                    class="btn  text-center fw-bold text-white pe-5 ps-5 mt-4">Selengkapnya</a>
                            </div>
                        </div>
                    </div>
                </div>
            @else
                <div class="carousel-item">
                    <div class="container text-white  carosel mb-5">
                        <div class="row counters">
                            <div class="col-md-4 judul">
                                <h2 style="color: white">{{ $new->title }}</h2>
                            </div>
                            <div class="col-md-4">
                                <p style="font-weight: 100" class="mt-2 isi">{{ $new->content }}</p>
                            </div>
                            <div class="col-md-4 text-center tombol">
                                <a href="" style="background-color: #e39b0d; border-radius: 50px"
                                    class="btn  text-center fw-bold text-white pe-5 ps-5 mt-4">Selengkapnya</a>
                            </div>
                        </div>
                    </div>
                </div>
            @endif
        @endforeach

        <div class="carousel-indicators skipback">
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0"
                class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
                aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"
                aria-label="Slide 3"></button>
        </div>

    </div>
</div>
