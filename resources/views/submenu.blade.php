@extends('template.app')
@section('title', $submenu->title)
@section('main')
    <div class="container mt-5 mb-5" data-aos="fade-up">
        <a href="/{{ $nav }}" class="col-12" style="font-size: 17px;"><i class="fas fa-arrow-left"></i>
            Kembali</a>
        @foreach ($contents as $item)
            {!! $item->content !!}
        @endforeach
    </div>
@endsection
