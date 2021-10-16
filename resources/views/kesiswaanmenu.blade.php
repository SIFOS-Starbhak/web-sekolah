@extends('template.app')
@section('title', 'Hubin')
@section('main')
    <div class="container mt-5" data-aos="fade-up">
        {!! $category->body !!}
    </div>
    
    <br>
@endsection
