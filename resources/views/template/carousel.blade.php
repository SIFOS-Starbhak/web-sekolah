<div id="carouselExampleIndicators" class="carousel slide carosel" data-bs-ride="carousel">
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
                </div>
            </div>
            <div class="carousel-indicators skipback">
                @foreach ($news as $key => $item)
                    <button type="button" data-bs-target="#carouselExampleIndicators"
                        data-bs-slide-to="{{ $key }}" class="{{ $key == 0 ? 'active' : '' }}"
                        aria-current="true" aria-label="Slide {{ $loop->iteration }}"></button>
                @endforeach
            </div>
        @endforeach


    </div>
</div>
