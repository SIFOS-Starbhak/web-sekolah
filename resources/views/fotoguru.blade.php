@extends('template.app')
@section('title', 'Foto Guru')
@section('main')
<div class="container mt-5 mb-5">
        <a href="/kurikulum" class="col-12 mb-2" style="font-size: 17px;"><i class="fas fa-arrow-left"></i> Kembali</a>
        <section class="our-webcoderskull padding-lg">
            <div class="container">
                <div class="row heading heading-icon">
                    <h2 class="text-primary kategori-guru fw-bold">{{ $kategori->nama_kategori }}</h2>
                </div>
                <ul class="row">
                    @foreach ($foto as $ft)
                        <li class="col-12 col-md-6 col-lg-3">
                            <div class="cnt-block equal-hight text-center" style="height: 349px;">
                                <img src="{{ asset('storage/' . $ft->foto) }}" class="img-responsive" alt=""
                                    style="width:200px;height:200px; object-fit: cover;">
                                <h3 style="margin-top:10%;">{{ $ft->nama_guru }}</h3>
                            </div>
                        </li>
                    @endforeach
                </ul>
            </div>
        </section>

    </div>
@endsection
