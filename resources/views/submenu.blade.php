@extends('template.app')
@section('title', $submenu->title)
@section('main')
    <div class="container mt-5 mb-5" data-aos="fade-up">
        <a href="/{{ $nav }}" class="col-12" style="font-size: 17px;"><i class="fas fa-arrow-left"></i>
            Kembali</a>
        @foreach ($contents as $item)
            {!! $item->content !!}
            <div class="row">
                @foreach ($gallery as $photo)
                    @if ($photo->sub_menu == $item->id)
                        <div class="column">
                            <img src="{{ asset('storage/' . $photo->image) }}" alt="" width="99%"
                                onclick="myFunction(this);">
                        </div>
                    @endif
                @endforeach
            </div>
            <!-- The expanding image container -->
            <div class="closeimg">
                <!-- Close the image -->
                <span onclick="this.parentElement.style.display='none'" class="closebtn">&times;</span>

                <!-- Expanded image -->
                <img id="expandedImg" style="width:100%">
            </div>



        @endforeach
    </div>
    <script>
        function myFunction(imgs) {
            var expandImg = document.getElementById("expandedImg");
            var imgText = document.getElementById("imgtext");
            expandImg.src = imgs.src;
            expandImg.parentElement.style.display = "block";
        }
    </script>
@endsection
