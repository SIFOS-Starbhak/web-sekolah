@extends('template.app')
@section('title', 'Hubin')
@section('main')
    <div class="container-md mt-5 mb-5">
        <h1><b>Author by {{ $user->name }}</b></h1>
        @foreach ($posts as $item)
            <h3><b><a href="/{{ $item->slug }}">{{ $item->title }}</a></b></h3>
            <hr>
            <div class="text-center">
                <img src="{{ asset('storage/' . $item->image) }}" alt="" width="70%">
            </div>
            <br>
            <p>
                Posted in <a href="/category/{{ $item->category->slug }}">{{ $item->category->name }}</a>
                | {{ $item->created_at->diffForHumans() }}
            </p>
            {{-- <p>Posted on <a href="">August , 2016</a> | by <a href="">smktaruanbhakti</a></p> --}}
            <br>
            <div>
                {!! $item->excerpt !!} <a href="/{{ $item->slug }}">Read More ...</a>
            </div>
            <br>
            <br>
        @endforeach
    </div>
@endsection
