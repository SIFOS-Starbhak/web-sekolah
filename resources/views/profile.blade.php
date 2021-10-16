@extends('template.app')
@section('title', 'Hubin')
@section('main')
    <div class="container pt-5">
        <nav class="nav nav-tabs flex-column flex-sm-row mt-1">
            @foreach ($pages as $key => $page)
                {{-- @if ($page == $page->first()) --}}
                <a class="flex-sm-fill text-sm-center fw-bold nav-link {{ $key == 0 ? 'active' : '' }}" data-bs-toggle="tab"
                    data-bs-target="#{{ $page->slug }}">{{ $page->title }}</a>
                {{-- @else --}}
                {{-- <a class="flex-sm-fill text-sm-center nav-link" data-bs-toggle="tab" data-bs-target="#{{$page->slug}}">{{$page->title}}</a> --}}
                {{-- @endif --}}
            @endforeach
        </nav>
        <div class="tab-content mb-5" id="myTabContent">
            @foreach ($pages as $key => $page)
                <div class="tab-pane fade show {{ $key == 0 ? 'active' : '' }} " id="{{ $page->slug }}"
                    role="tabpanel" aria-labelledby="{{ $page->slug }}-tab">
                    <p class="mt-3">{!! $page->body !!}</p>
                </div>
            @endforeach
        </div>
    </div>
@endsection
