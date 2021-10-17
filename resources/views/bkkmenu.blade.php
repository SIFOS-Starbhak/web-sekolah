@extends('template.app')
@section('title', 'BKK')
@section('main')
    <div class="container mt-5" data-aos="fade-up">
        <a href="/bkk" class="col-12 mt-5" style="font-size: 17px;"><i class="fas fa-arrow-left"></i> Kembali</a>

        {!! $category->body !!}
    </div>
    
    <br>
@endsection
