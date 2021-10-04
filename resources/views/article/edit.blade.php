@extends('layouts.app')
@section('title', 'Edit Artikel')
@section('judul', 'Edit Artikel')
@section('main')
    <div class="row">
        <div class="container">
            <div class="col-12">
                <div class="row">
                    <div class="col">
                        <div class="card shadow mb-4">
                            <div class="card-header">
                                <div class="col my-auto mb-3">
                                    <a href="{{ route('dashboard.manager') }}" class="btn btn-info">
                                        <i class="fa fa-arrow-left fa-lg"></i> Kembali</a>
                                </div>
                            </div>
                            <div class="card-body">
                                <form action="{{ route('article.update', $article->id) }}" method="POST"
                                    enctype="multipart/form-data">
                                    @method('PATCH')
                                    @csrf
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="categories">Kategori</label>
                                            <select name="category" id="categories" class="form-control">
                                                @foreach ($categories as $item)
                                                    @if ($item->id === $article->category_id)
                                                        <option value="{{ $article->id }}" selected>
                                                            {{ $item->name }}
                                                        </option>
                                                    @else
                                                        <option value="{{ $item->id }}">{{ $item->name }}</option>
                                                    @endif
                                                @endforeach
                                            </select>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="title">Judul</label>
                                            <input type="text" class="form-control" id="title" name="title"
                                                value="{{ $article->title }}">
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="seo">Judul SEO</label>
                                            <input type="text" class="form-control" id="seo" name="seo_title"
                                                value="{{ $article->seo_title }}">
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="seo">Gambar Thumbnail</label>
                                            <div class="custom-file">
                                                <input type="file" class="custom-file-input" name="image"
                                                    onchange="loadFile(event)" accept="image/*">
                                                <label class="custom-file-label">Masukkan gambar</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row my-2">
                                        <div class="container d-flex justify-content-center">
                                            <img id="output" style="width: 250px; height:200px;"
                                                src="{{ asset('article-img/' . $article->image) }}" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="task-textarea">Deskripsi</label>
                                        <textarea name="description" class="form-control ck-editor__editable"
                                            id="task-textarea" cols="100" rows="10">{{ $article->body }}    </textarea>
                                    </div>
                                    <div class="row">
                                        <div class="col d-flex justify-content-end">
                                            <button type="submit" class="btn btn-primary">
                                                <i class="fa fa-edit fa-lg"></i> Update</button>
                                        </div>
                                    </div>
                                </form>
                            </div> <!-- /. card-body -->
                        </div> <!-- /. card -->
                    </div> <!-- /. col -->
                </div> <!-- /. end-section -->
            </div>
            {{-- </div> --}}
        </div>
        {{-- </div> --}}


    </div>
@endsection
@push('css')
    <style>
        .ck-editor__editable {
            min-height: 100px;
        }

    </style>
@endpush


@section('script')
    <script>
        // ClassicEditor
        //     .create( document.querySelector( '#task-textarea' ) )
        //     .catch( error => {
        //         console.error( error );
        //     } );
    </script>


@endsection
