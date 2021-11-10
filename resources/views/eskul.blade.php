@extends('template.app')
@section('title', $eskul->title)
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
    <div class="container mt-5 mb-5" data-aos="fade-up">
        <a href="/kesiswaan/ekstrakurikuler" class="col-12" style="font-size: 17px;"><i class="fas fa-arrow-left"></i>
            Kembali</a>
        <nav>
            <div class="nav nav-tabs flex-column flex-sm-row mt-4" id="nav-tab" role="tablist">
                @foreach ($tab as $key => $item)
                    <a class="flex-sm-fill text-sm-center nav-link {{ $loop->iteration == 1 ? 'active' : '' }}"
                        aria-current="page" data-bs-toggle="tab"
                        data-bs-target="#{{ $item->slug }}"><b>{{ $item->name }}</b></a>
                @endforeach
            </div>
        </nav>
        <div class="tab-content mt-5 mb-5" id="nav-tabContent">
            @foreach ($tab as $key => $item)
                <div class="tab-pane fade show {{ $loop->iteration == 1 ? 'active' : '' }}" id="{{ $item->slug }}"
                    role="tabpanel" aria-labelledby="{{ $item->slug }}-tab">
                    <h2 class="fw-bold">
                        {{ $item->name }}
                    </h2>
                    @foreach ($content as $body)
                        @if ($body->title == $item->id)
                            <div class="mt-3">
                                {!! $body->body !!}
                            </div>
                        @endif
                    @endforeach
                    @if ($item->slug == 'gallery')
                        <div class="row mt-5">
                            @foreach ($image as $key => $kls)
                                <div class="col-4 mt-4">
                                    <img src="{{ asset('storage/' . $kls->photo) }}" class="d-block img-fluid mx-auto ani"
                                        alt="..." width="100%">
                                </div>
                            @endforeach
                        </div>
                    @endif
                </div>
            @endforeach
        </div>
    </div>
@endsection
