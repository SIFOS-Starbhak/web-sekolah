@extends('template.app')
@section('title', $submenu->title)
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
    <div class="container pt-5" data-aos="fade-up">
        <a href="/{{ $nav }}" class="col-12" style="font-size: 17px;"><i class="fas fa-arrow-left"></i>
            Kembali</a>
        @if ($contents->count() > 1)
            <nav>
                <div class="nav nav-tabs flex-column flex-sm-row mt-4" id="nav-tab" role="tablist">
                    @foreach ($contents as $key => $item)
                        <a class="flex-sm-fill text-sm-center nav-link {{ $loop->iteration == 1 ? 'active' : '' }}"
                            aria-current="page" data-bs-toggle="tab"
                            data-bs-target="#{{ $item->slug }}"><b>{{ $item->title }}</b></a>
                    @endforeach
                </div>
            </nav>
            <div class="tab-content mt-5 mb-5" id="nav-tabContent">
                @foreach ($contents as $key => $item)
                    <div class="tab-pane fade show {{ $loop->iteration == 1 ? 'active' : '' }}" id="{{ $item->slug }}"
                        role="tabpanel" aria-labelledby="{{ $item->slug }}-tab">
                        <h2 class="fw-bold">
                            {{ $item->title }}
                        </h2>
                        <div class="mt-3">
                            {!! $item->content !!}
                        </div>
                        @if ($item->slug == 'foto-guru')
                            <section class="our-webcoderskull">
                                <div class="container">
                                    <ul class="row">
                                        @foreach ($foto as $ft)
                                            <li class="col-12 col-md-6 col-lg-3 ani">
                                                <a data-bs-toggle="modal" data-bs-target="imagemodal"
                                                    class="pop">
                                                    <div class="cnt-block equal-hight text-center" style="height: 349px;">
                                                        <img src="{{ asset('storage/' . $ft->image) }}"
                                                            class="img-responsive" alt=""
                                                            style="width:200px;height:200px; object-fit: cover;">
                                                        <h3 style="margin-top:10%;">{{ $ft->nama_guru }}</h3>
                                                    </div>
                                                </a>
                                            </li>
                                        @endforeach
                                    </ul>
                                </div>
                            </section>

                            <div class="modal fade" id="imagemodal" tabindex="-1" role="dialog"
                                aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-body">
                                        <img src="" class="imagepreview" style="width: 100%;">
                                    </div>
                                </div>
                            </div>
                        @endif
                    </div>
                @endforeach
            </div>
        @else
            @foreach ($contents as $item)
                <div class="container mt-5">
                    <h2 class="fw-bold">{{ $item->title }}</h2>
                    <div class="mb-5">
                        {!! $item->content !!}
                    </div>
                </div>
            @endforeach
        @endif
    </div>

    <script>
        $(function() {
            $('.pop').on('click', function() {
                $('.imagepreview').attr('src', $(this).find('img').attr('src'));
                $('#imagemodal').modal('show');
            });
        });
    </script>
@endsection
