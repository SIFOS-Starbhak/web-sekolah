dashboard managaer
@extends('layouts.app')
@section('title', 'Dashboard')
@section('css')
    <style>
        .ck-editor__editable {
            min-height: 100px;
        }

    </style>
@endsection

@section('main')
    <div>
        {{-- <div class="container-fluid"> --}}

        <div class="row">

            <div class="container">


                <div class="col-12 ">
                    {{-- <center> --}}
                    {{-- //ini buat welcome nya smeisal make welcome --}}
                    {{-- //WELCOME --}}
                    <div class="d-flex justify-content-center">
                        <div class="container ">
                            <div class="card mt-5 bg-welcome-dashboard ">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-4">
                                            <h2 class="card-title justify-content-start">Selamat Datang!</h2>
                                            <h3 class="card-text" style="color: white">
                                                {{ Auth::guard('manager')->user()->name }}</h3>
                                        </div>
                                        <div class="col-4">

                                        </div>
                                        <div class="col-4">
                                            <div class="row">
                                                <div class="col-3">
                                                    <ul class="list-group text-dark font-weight-bold"
                                                        style="list-style-type: none;">
                                                        <li class="" style=" text-dark">Jabatan </li>
                                                        <li class="" style=" text-dark">Nik </li>
                                                        <li class="" style=" text-dark">Email </li>
                                                    </ul>
                                                </div>
                                                <div class="col-1 mr-5">
                                                    <ul class="list-group text-dark font-weight-bold"
                                                        style="list-style-type: none;">
                                                        <li class="" style=" text-dark"> : </li>
                                                        <li class="" style=" text-dark"> : </li>
                                                        <li class="" style=" text-dark"> : </li>
                                                    </ul>
                                                </div>
                                                <div class="col-4" style="margin-left: -60px;">
                                                    <ul class="list-group text-dark font-weight-bold"
                                                        style="list-style-type: none;">
                                                        <li class="" style=" text-dark">
                                                            <span
                                                                class="badge badge badge-success font-weight-bold text-white"><small>{{ Auth::guard('manager')->user()->jabatan }}</small></span>
                                                        </li>
                                                        <li class="" style=" text-dark">
                                                            <span
                                                                class="badge badge  font-weight-bold text-white"><small>{{ Auth::guard('manager')->user()->nik }}</small></span>
                                                        </li>
                                                        <li class="" style=" text-dark">
                                                            <span
                                                                class="badge badge  font-weight-bold text-white"><small>{{ Auth::guard('manager')->user()->email }}</small></span>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    {{-- //WELCOME --}}

                    {{-- </center> --}}

                    {{-- // ini pake profile semisal pen make profile --}}

                    {{-- Profile --}}
                    {{-- <div class="row mt-5 align-items-center ">
                    <div class="col-md-3 text-center mx-5">
                        <div class="avatar avatar-xl">
                            <img src="{{ asset('img/default.png') }}" alt="..." class="avatar-img rounded-circle">
                        </div>
                    </div>
                    <div class="col">
                        <div class="row align-items-center">
                            <div class="col-md-7">
                                <h4 class="mb-1">{{ Auth::guard('manager')->user()->name }}</h4>
                                <p class="small mb-3"><span class="badge badge-pill badge-success">Guru SMK Taruna
                                        Bhakti</span></p>
                            </div>
                        </div>
                        <div class="row mb-4">
                            <div class="col-md-7">
                                <p class="text-muted"> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris
                                    blandit nisl ullamcorper, rutrum metus in, congue lectus. In hac habitasse platea
                                    dictumst. Cras urna quam, malesuada vitae risus at, pretium blandit sapien. </p>
                            </div>
                            <div class="col">
                                <p class="small mb-0 text-muted"></p>
                                <p class="small mb-0 text-muted">{{ Auth::guard('manager')->user()->email }}</p>
                                <p class="small mb-0 text-muted">(537) 315-1481</p>
                            </div>
                        </div>
                    </div>
                </div> --}}
                    {{-- Profile --}}

                </div>
                <div class="container">
                    <div class="col-12 mr-5 ">

                        <h2 class="h5 page-title mt-5 mb-5 ml-2">WEB App Instansi SMK Taruna Bhakti</h2>
                        <div class="container">
                            <div class="row">
                                <div class="col-xl-3 col-lg-6 d-flex">
                                    <div class="card" style="width: 18rem;">
                                        <div class="card l-bg-blue-dark">
                                            <div class="card-statistic-3 p-4">
                                                <div class="card-icon card-icon-large"><i
                                                        class="fas fa-chalkboard-teacher"></i>
                                                </div>
                                                <div class="mb-4">
                                                    <h5 class="card-title mb-0">Portal SMK Taruna Bhakti</h5>
                                                </div>
                                                <div class="row align-items-center mb-2 d-flex">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card-body">
                                            <div class="col-12 " style="margin-top: -30px;">
                                                <p class="d-flex align-items-center mb-0 text-dark">
                                                    Portal pembelajaran
                                                </p>
                                            </div>
                                        </div>
                                        <div class="card-footer" style="border: none; ">
                                            <a href="#" class="btn btn-outline-primary">Go To Here &nbsp;<i
                                                    class="fas fa-arrow-right"></i></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-lg-6 d-flex">
                                    <div class="card" style="width: 18rem;">
                                        <div class="card l-bg-cherry">
                                            <div class="card-statistic-3 p-4">
                                                <div class="card-icon card-icon-large"><i class="fas fa-briefcase"></i>
                                                </div>
                                                <div class="mb-4">
                                                    <h5 class="card-title mb-0">Sitakols SMK Taruna Bhakti</h5>
                                                </div>
                                                <div class="row align-items-center mb-2 d-flex">

                                                </div>
                                            </div>
                                        </div>
                                        <div class="card-body ">
                                            <div class="col-12 " style="margin-top: -30px;">
                                                <p class="d-flex align-items-center mb-0 text-dark ">
                                                    Sistem Tatakelola Surat Menyurat Sekolah / Prakerin
                                                </p>
                                            </div>
                                        </div>
                                        <div class="card-footer" style="border: none; ">
                                            <a href="#" class="btn btn-outline-primary">Go To Here &nbsp;<i
                                                    class="fas fa-arrow-right"></i></a>
                                        </div>

                                    </div>
                                </div>
                                <div class="col-xl-3 col-lg-6 d-flex">
                                    <div class="card" style="width: 18rem;">
                                        <div class="card l-bg-green">
                                            <div class="card-statistic-3 p-4">
                                                <div class="card-icon card-icon-large"><i class="fas fa-clipboard-list"></i>
                                                </div>
                                                <div class="mb-4">
                                                    <h5 class="card-title mb-0">Presensi Absensi SMK Taruna Bhakti</h5>
                                                </div>
                                                <div class="row align-items-center mb-2 d-flex">

                                                </div>
                                            </div>
                                        </div>
                                        <div class="card-body ">
                                            <div class="col-12 " style="margin-top: -30px;">
                                                <p class="d-flex align-items-center mb-0 text-dark">
                                                    Presensi Absensi SMK Taruna Bhakti
                                                </p>

                                            </div>
                                        </div>
                                        <div class="card-footer" style="border: none; ">
                                            <a href="#" class="btn btn-outline-primary">Go To Here &nbsp;<i
                                                    class="fas fa-arrow-right"></i></a>
                                        </div>
                                    </div>
                                </div>
                                {{-- <div class="col-xl-3 col-lg-6 d-flex">
                                <div class="card" style="width: 18rem;" >
                                    <div class="card l-bg-blue">
                                        <div class="card-statistic-3 p-4">
                                            <div class="card-icon card-icon-large"><i class="fas fa-building"></i>
                                            </div>
                                            <div class="mb-4">
                                                <h5 class="card-title mb-0">Company Profile SMK Taruna Bhakti</h5>
                                            </div>
                                            <div class="row align-items-center mb-2 d-flex">

                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-body ">
                                        <div class="col-12 " style="margin-top: -30px;">
                                            <p class="d-flex align-items-center mb-0 text-dark">
                                                Company Profile tentang SMK Taruna Bhakti
                                            </p>
                                      </div>
                                    </div>
                                    <div class="card-footer" style="border: none; ">
                                        <a href="#" class="btn btn-outline-primary" >Go To Here  &nbsp;<i class="fas fa-arrow-right"></i></a>

                                    </div>
                                </div>
                            </div> --}}

                        </div>
                    </div>
                    <h2 class="h5 mt-4 mb-3 ">Artikel Anda</h2>
                    
                        {{-- <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample"> --}}
                            <a class="btn btn-primary" href="{{route('article.tambah')}}" >
                          Tambah Artikel <i class="far fa-plus-square fa-lg"></i>
                        </a>
                        @if (session('pesan'))
                        <div id="alertt">
                            <div class="alert alert-success d-flex align-items-center "
                                style="background-color: rgb(50, 255, 32);" role="alert">
                                <i class="icon-checkmark4" style="color: white;"></i> &nbsp;
                                <div class="text-dark" style="color: black;">
                                    <b>
                                        {{ session('pesan') }}
  
                                    </b>
                                </div>
                            </div>
                        </div>
                    @endif
                    @if (session('fail'))
                    <div id="alertt">
                        <div class="alert alert-danger d-flex align-items-center "
                            style="background-color: rgb(50, 255, 32);" role="alert">
                            <i class="icon-checkmark4" style="color: white;"></i> &nbsp;
                            <div class="text-dark" style="color: black;">
                                <b>
                                    {{ session('fail') }}

                                </b>
                            </div>
                        </div>
                    </div>
                @endif
                  
                    <div class="row">
                        <!-- Log -->
                        <div class="col-md-12 mb-4">
                            <div class="card shadow">
                                <div class="card-header">
                                    <strong class="card-title">Artikel yang dibuat</strong>
                                    <a class="float-right small text-muted" href="#!">View all</a>
                                </div>
                                <div class="card-body">
                                    <div class="list-group list-group-flush my-n3">
                                        {{-- {{dd($article)}} --}}
                                        @if (count($article) == 0 )
                                        <div class="row d-flex justify-content-center" >
                                            <center>
                                                <div class="container"   >
                                                    <h1 style="color: rgb(155, 154, 154)">Belum membuat Article</h1>
                                                </div>
                                            @else
                                                @foreach ($article as $item)

                                                    <div class="list-group-item" style="background: rgb(255, 255, 255);">
                                                        <div class="row align-items-center">
                                                            <div class="col-auto">
                                                                <img src="{{ asset('article-img/' . $item->image) }}"
                                                                    style="width: 200px; height:200px;" alt="">
                                                                {{-- <span class="circle circle-sm bg-warning"><i  class="fe fe-shield-off fe-16 text-white"></i></span> --}}
                                                            </div>
                                                            <div class="col">
                                                                <small><strong>
                                                                        {{ Carbon\Carbon::parse($item->created_at)->format('H:i') }}
                                                                        {{ Carbon\Carbon::parse($item->created_at)->isoFormat('dddd, D MMMM Y') }}</strong></small>
                                                                <div class="mb-2 text-muted small">
                                                                    {{-- <textarea disabled  cols="100" rows="20"> --}}
                                                                {!! 
                                                                    $result = substr($item->body, 0, 100); //first 5 chars "Hello"
                                                        // $pos=strpos($item->body,' ', 200);
                                                        // substr($item->body,0,$pos); 
                                                                    
                                                                    !!}
                                                                    {{-- </textarea> --}}
                                                                </div>
                                                                <span
                                                                    class="badge badge-pill badge-success">{{ $item->status }}</span>
                                                            </div>
                                                            <div class="col-auto pr-0 ">
                                                                <div class="dropdown">
                                                                    <button
                                                                        class="btn btn-sm dropdown-toggle more-dropdown"
                                                                        type="button" id="dropdownMenuButton"
                                                                        data-toggle="dropdown" aria-haspopup="true"
                                                                        aria-expanded="false">
                                                                        <span class="sr-only"></span>
                                                                    </button>
                                                                    <div class="dropdown-menu dropdown-menu-right"
                                                                        aria-labelledby="dropdownMenuButton">
                                                                        {{-- <a class="dropdown-item" href="#"><i class="far fa-eye fa-lg mr-2" style="color: rgb(205, 203, 206)"></i>Show</a> --}}
                                                                        {{-- <a class="dropdown-item" href="#"><i class="far fa-edit fa-lg mr-2" style="color: rgb(255, 225, 58)"></i>Edit</a> --}}
                                                                        {{-- <a class="dropdown-item" href="#"><i class="fas fa-trash-alt fa-lg mr-2" style="color: rgb(202, 65, 65)"></i>Delete </a> --}}
                                                                        <a class="dropdown-item" href="#"><small>Show</small></a>
                                                                        <a class="dropdown-item" href="{{route('article.edit',$item->id)}}"><small>Edit</small></a>
                                                                        <form action="{{route('article.delete',$item->id)}}" method="POST">
                                                                            @method('delete')
                                                                            @csrf
                                                                            <button
                                                                                class="dropdown-item"><small>Delete</small>
                                                                            </button>

                                                                        </form>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div> <!-- / .row -->
                                                    </div><!-- / .list-group-item -->

                                                @endforeach
                                            @endif





                                        </div> <!-- / .list-group -->
                                    </div> <!-- / .card-body -->
                                </div> <!-- / .card -->
                            </div> <!-- / .col -->
                        </div> <!-- end section -->
                    </div>

                </div>
            </div>
        </div>
        {{-- </div> --}}


    </div>
@endsection
{{-- @push('script') --}}


@section('script')
<script>
    ClassicEditor
        .create( document.querySelector( '#task-textarea' ) )
        .catch( error => {
            console.error( error );
        } );

        ClassicEditor
        .create( document.querySelector( '#task-' ) )
        .catch( error => {
            console.error( error );
        } );
 
</script>

    
@endsection
