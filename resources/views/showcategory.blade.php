@extends('template.app')
@section('title', 'Hubin')
@section('main')
    <div class="container-md mt-5 mb-5">
        <h1><b>Category : {{ $category->name }}</b></h1>
        @foreach ($posts as $item)
            <h3><b><a href="/{{ $item->slug }}">{{ $item->title }}</a></b></h3>
            <hr>
            <div class="text-center">
                @if (file_exists(public_path('article-img/'.$item->image)))
                <img src="{{ asset('article-img/' . $item->image) }}" width="70%" />
                @else 
                <img src="{{ asset('storage/' . $item->image) }}" width="70%" />
                @endif
            </div>
            <br>
            <p>by
                <a href="/author/{{ $item->user->id }}">{{ $item->user->name }}</a> |
                {{ $item->created_at->diffForHumans() }}
            </p>
            {{-- <p>Posted on <a href="">August , 2016</a> | by <a href="">smktaruanbhakti</a></p> --}}
            <br>
            <div>
                {!! $item->excerpt !!} <a href="/showartikel/{{ $item->slug }}">Read More ...</a>
            </div>
            <br>
        @endforeach
    </div>
@endsection
