@extends('template.app')
@section('title', 'Sarana Pra sarana')
@section('main')

    <div class="container pt-5">
        <div class="tab-content mb-5" id="myTabContent">

            <!-- Sarpras -->
            <div class="tab-pane fade show active" id="sarana-dan-prasarana-sekolah" role="tabpanel"
                aria-labelledby="home-tab">
                <div class="row">
                    <div class="">
                        <h3><b>Sarana dan Prasarana Sekolah</b></h3>
                        <hr>
                        <br>
                        <p class="
                        mt-3">Gedung Sekolah Milik sendiri dengan design bangunan
                            berbentuk permanen yang di sesuaikan
                            dengan kebutuhan pendidikan dan berlantai 4.</p>
                        <div class=" text-center">
                            @foreach ($gallery as $item)
                                @if ($item->content_id == 15)
                                    <img src="{{ asset('storage/' . $item->image) }}" alt="Foto 1" width="50%"
                                        class="mt-3">
                                    <br>
                                    <h3 class="fw-bold">{{ $item->nama_photo }}</h3>
                                @endif
                            @endforeach
                        </div>
                        @foreach ($content as $item)
                            @if ($item->title == 'Sarana dan Prasarana Sekolah')
                                {!! $item->description !!}
                            @endif
                        @endforeach
                        <p class="fw-bold">Galery Foto Sarana Lab Komputer SMK Taruna Bhakti</p>
                        <br>

                        <p class="fw-bold">Samsung</p>
                        <!-- SAMSUNG -->
                        <!-- The grid: four columns -->
                        <div class="row">
                            @foreach ($samsung as $galaxy)
                                <div class="column">
                                    <img src="{{ asset('storage/' . $galaxy->image) }}" alt="" width="99%"
                                        onclick="myFunction(this);">
                                </div>
                            @endforeach
                        </div>
                        <!-- The expanding image container -->
                        <div class="closeimg">
                            <!-- Close the image -->
                            <span onclick="this.parentElement.style.display='none'"
                                class="closebtn">&times;</span>

                            <!-- Expanded image -->
                            <img id="expandedImg" style="width:100%">
                        </div>
                        <p class="fw-bold">Lab Bahasa</p>
                        <!-- Lab Bahasa -->
                        <br>
                        <div class="row">
                            @foreach ($bahasa as $lab)
                                <div class="column">
                                    <img src="{{ asset('storage/' . $lab->image) }}" alt="" width="99%"
                                        onclick="myImg(this);">
                                </div>
                            @endforeach
                        </div>

                        <!-- The expanding image container -->
                        <div class="closeimg">
                            <!-- Close the image -->
                            <span onclick="this.parentElement.style.display='none'"
                                class="closebtn">&times;</span>

                            <!-- Expanded image -->
                            <img id="expanded-Img" style="width:100%">
                        </div>
                    </div>
                </div>
            </div>

    <script>
        function myFunction(imgs) {
            var expandImg = document.getElementById("expandedImg");
            var imgText = document.getElementById("imgtext");
            expandImg.src = imgs.src;
            expandImg.parentElement.style.display = "block";
        }

        function myImg(img) {
            var expandImg = document.getElementById("expanded-Img");
            var imgText = document.getElementById("img-text");
            expandImg.src = img.src;
            expandImg.parentElement.style.display = "block";
        }
    </script>

@endsection