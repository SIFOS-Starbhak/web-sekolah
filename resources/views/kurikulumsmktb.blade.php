@extends('template.app')
@section('title', 'Kurikulum')
@section('main')
<div class="container mt-5" data-aos="fade-up">
    <a href="/kurikulum" class="col-12" style="font-size: 17px;"><i class="fas fa-arrow-left"></i>
                Kembali</a>
    @foreach ($struktur as $item)
                    {!! $item->body !!}
                @endforeach
</div>
@endsection