@extends('template.app')
@section('title', 'Hubin')
@section('main')
    <div class="container-md mt-5 mb-5">
        <h3><b>{{ $articleShow->title }}</b></h3>
        <hr>
        <td>
            <br>
        </td>
        <p>
            by
            <a href="/author/{{ $articleShow->user->id }}">{{ $articleShow->user->name }}</a> |
            Posted in <a
                href="/category/{{ $articleShow->category->slug }}">{{ $articleShow->category->name }}</a>
            | {{ $articleShow->created_at->diffForHumans() }}
        </p>
        {{-- <p>Posted on <a href="">August , 2016</a> | by <a href="">smktaruanbhakti</a></p> --}}
        <br>
        <div class="text-center">
            <img src="{{ asset('storage/' . $articleShow->image) }}" alt="" width="70%">
        </div>
        <br>
        <div>
            {!! $articleShow->body !!}
        </div>
        <br>
    </div>
    <br>
@endsection
