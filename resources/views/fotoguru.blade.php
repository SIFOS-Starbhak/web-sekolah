@extends('template.app')
@section('title', 'Foto Guru')
@section('main')
    <style>
        .ani {
            transition: 500ms;
        }

        .ani:hover {
            -ms-transform: scale(1.05);
            /* IE 9 */
            -webkit-transform: scale(1.05);
            /* Safari 3-8 */
            transform: scale(1.05);
            box-shadow: 20px;
            transition: 500ms;
        }

    </style>
    <div class="container mt-5 mb-5">
        <a href="/kurikulum" class="col-12 mb-2" style="font-size: 17px;"><i class="fas fa-arrow-left"></i> Kembali</a>
        <section class="our-webcoderskull padding-lg">
            <div class="container">
                <div class="row heading heading-icon">
                    <h2 class="text-primary kategori-guru fw-bold">{{ $kategori->nama_kategori }}</h2>
                </div>
                <ul class="row">
                    @foreach ($foto as $ft)
                        <li class="col-12 col-md-6 col-lg-3 ani">
                            <a data-toggle="modal" data-target="imagemodal" class="pop">
                                <div class="cnt-block equal-hight text-center" style="height: 349px;">
                                    <img src="{{ asset('storage/' . $ft->foto) }}" class="img-responsive" alt=""
                                        style="width:200px;height:200px; object-fit: cover;">
                                    <h3 style="margin-top:10%;">{{ $ft->nama_guru }}</h3>
                                </div>
                            </a>
                        </li>
                    @endforeach
                </ul>
            </div>
        </section>
    </div>

    <div class="modal fade" id="imagemodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
        aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-body">
                <img src="" class="imagepreview" style="width: 100%;">
            </div>
        </div>
    </div>
@endsection
@push('js')
    <script>
        $(function() {
            $('.pop').on('click', function() {
                $('.imagepreview').attr('src', $(this).find('img').attr('src'));
                $('#imagemodal').modal('show');
            });
        });
    </script>
@endpush
