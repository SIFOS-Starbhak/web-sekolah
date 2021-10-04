@extends('layouts.app')
@section('title', 'Tambah Artikel')
@section('judul', 'Tambah Artikel')
@section('main')
    <div>
        <div class="row">
            <div class="container">
                <div class="col-12">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card shadow mb-4">
                                <div class="card-header">
                                    <div class="col my-auto mb-3">
                                        <a href="{{ route('dashboard.manager') }}" class="btn btn-info">
                                            <i class="fa fa-arrow-left fa-lg"></i> Kembali</a>
                                    </div>

                                </div>
                                <div class="card-body">
                                    <form action="{{ route('article.store') }}" method="POST"
                                        enctype="multipart/form-data" id="form">
                                        @csrf
                                        <div class="form-row">

                                            <div class="form-group col-md-6">
                                                <label for="categories">Kategori</label>
                                                <select name="category" id="categories" class="form-control">
                                                    <option value="" selected>--Pilih Kategori--</option>
                                                    @foreach ($categories as $item)
                                                        <option value="{{ $item->id }}">{{ $item->name }}</option>
                                                    @endforeach
                                                </select>
                                                @error('category')
                                                    <div class="text-danger">{{ $message }}</div>
                                                @enderror
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="title">Judul</label>
                                                <input type="text" class="form-control" id="title" name="title"
                                                    placeholder="Masukkan judul untuk artikel" autocomplete="off">
                                                @error('title')
                                                    <div class="text-danger">{{ $message }}</div>
                                                @enderror
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <label for="seo">Judul SEO</label>
                                                <input type="text" class="form-control" id="seo" name="seo_title"
                                                    autocomplete="off" placeholder="Masukkan judul SEO">
                                                @error('seo_title')
                                                    <div class="text-danger">{{ $message }}</div>
                                                @enderror
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="seo">Gambar Thumbnail</label>
                                                <div class="custom-file">
                                                    <input type="file" class="custom-file-input" id="customFile"
                                                        name="image" onchange="loadFile(event)" accept="image/*">
                                                    <label class="custom-file-label" for="customFile">
                                                        Masukkan gambar
                                                    </label>
                                                </div>
                                                @error('image')
                                                    <div class="text-danger">{{ $message }}</div>
                                                @enderror
                                            </div>
                                        </div>
                                        <div class="row my-2">
                                            <div class="container d-flex justify-content-center">
                                                <img id="output" style="width: 450px; height:210px;" />
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="task-textarea">Isi Artikel</label>
                                            <textarea type="text" name="description" class="ck-editor_editable"
                                                id="task-textarea" placeholder="Tulis Deskripsi" cols="100"
                                                rows="10"></textarea>
                                            @error('description')
                                                <div class="text-danger">{{ $message }}</div>
                                            @enderror
                                        </div>

                                        <div class="row">
                                            <div class="col d-flex justify-content-end">
                                                <button type="submit" class="btn btn-primary">
                                                    <i class="fa fa-upload fa-lg"></i> Upload
                                                </button>
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
    @push('js')
        {{-- <script src="https://cdn.ckeditor.com/ckeditor5/30.0.0/classic/ckeditor.js"></script> --}}
        <script>
            // ClassicEditor
            //     .create( document.querySelector( '#task-textarea' )
            //     image: {
            //         toolbar: [ 'toggleImageCaption', 'imageTextAlternative' ]
            //     }
            //      )
            //     .catch( error => {
            //         console.error( error );
            //     } );


            var loadFile = function(event) {
                var reader = new FileReader();
                reader.onload = function() {
                    var output = document.getElementById('output');
                    output.src = reader.result;
                };
                reader.readAsDataURL(event.target.files[0]);
            };
        </script>

    @endpush
