@extends('layouts.app')
@section('title', 'Dashboard')
@section('main')
    <div>
        <div class="row">
            <div class="col-12 ">
                {{-- <center> --}}
                {{-- //ini buat welcome nya smeisal make welcome --}}
                {{-- //WELCOME --}}
                <div class="d-flex justify-content-center">
                    <div class="container mx-5 mr-5">
                        <div class="card mt-5 bg-welcome-dashboard ">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-4">
                                        <h2 class="card-title justify-content-start">Selamat Datang!</h2>
                                        <h3 class="card-text" style="color: white">
                                            {{ Auth::guard('guru')->user()->name }}</h3>
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
                                                            class="badge badge badge-success font-weight-bold text-white"><small>{{ Auth::guard('guru')->user()->jabatan }}</small></span>
                                                    </li>
                                                    <li class="" style=" text-dark">
                                                        <span
                                                            class="badge badge  font-weight-bold text-white"><small>{{ Auth::guard('guru')->user()->nik }}</small></span>
                                                    </li>
                                                    <li class="" style=" text-dark">
                                                        <span
                                                            class="badge badge  font-weight-bold text-white"><small>{{ Auth::guard('guru')->user()->email }}</small></span>
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
                                <h4 class="mb-1">{{ Auth::guard('guru')->user()->name }}</h4>
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
                                <p class="small mb-0 text-muted">{{ Auth::guard('guru')->user()->email }}</p>
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
                            <div class="col-xl-3 col-lg-6">
                                <div class="card">
                                    <div class="card l-bg-blue-dark">
                                        <div class="card-statistic-3 p-4">
                                            <a data-toggle="collapse" href="#collapse-1" aria-expanded="true"
                                                aria-controls="collapse-1" id="heading-1" class="d-block">
                                                <div class="card-icon card-icon-large"><i
                                                        class="fas fa-chalkboard-teacher"></i>
                                                </div>
                                                <div class="mb-4">
                                                    <h5 class="card-title mb-0">Portal SMK Taruna Bhakti</h5>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                    <div id="collapse-1" class="collapse hide" aria-labelledby="heading-1">
                                        <div class="card-body">
                                            <div class="col-12">
                                                <p class="align-items-center mb-3 text-dark">
                                                    Portal pembelajaran Lorem, ipsum dolor sit amet consectetur adipisicing
                                                    elit. Molestiae debitis distinctio, odit veniam culpa accusamus fugit
                                                    repellat non illo, quis rerum optio dolorum laboriosam vero aspernatur
                                                    facilis perspiciatis, sunt natus!
                                                </p>
                                                <a href="#" class="btn btn-outline-primary">Go To Here &nbsp;<i
                                                        class="fas fa-arrow-right"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-lg-6">
                                <div class="card">
                                    <div class="card l-bg-cherry">
                                        <div class="card-statistic-3 p-4">
                                            <a data-toggle="collapse" href="#collapse-2" aria-expanded="true"
                                                aria-controls="collapse-2" id="heading-2" class="d-block">
                                                <div class="card-icon card-icon-large"><i class="fas fa-briefcase"></i>
                                                </div>
                                                <div class="mb-4">
                                                    <h5 class="card-title mb-0">Sitakols SMK Taruna Bhakti</h5>
                                                </div>
                                                <div class="row align-items-center mb-2 d-flex">
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                    <div id="collapse-2" class="collapse hide" aria-labelledby="heading-2">
                                        <div class="card-body">
                                            <div class="col-12 " style="margin-top: -30px;">
                                                <p class="d-flex align-items-center mb-0 text-dark ">
                                                    Sistem Tatakelola Surat Menyurat Sekolah / Prakerin
                                                </p>
                                                <a href="#" class="btn btn-outline-primary">Go To Here &nbsp;<i
                                                        class="fas fa-arrow-right"></i></a>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <div class="col-xl-3 col-lg-6">
                                <div class="card">
                                    <div class="card l-bg-green">
                                        <div class="card-statistic-3 p-4">
                                            <div class="card-icon card-icon-large"><i class="fas fa-clipboard-list"></i>
                                            </div>
                                            <div class="mb-4">
                                                <h5 class="card-title mb-0">Refleksi Mengajar  SMK Taruna Bhakti</h5>
                                            </div>
                                            <div class="row align-items-center mb-2 d-flex">

                                            </div>
                                        </div>
                                    </div>
                                    <div id="collapse-3" class="collapse hide" aria-labelledby="heading-3">
                                        <div class="card-body ">
                                            <div class="col-12 " style="margin-top: -30px;">
                                                <p class="d-flex align-items-center mb-0 text-dark">
                                                    Presensi Absensi SMK Taruna Bhakti
                                                </p>
                                                <a href="#" class="btn btn-outline-primary">Go To Here &nbsp;<i
                                                        class="fas fa-arrow-right"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            {{-- <div class="col-xl-3 col-lg-6 d-flex">
                                <div class="card" style="width: 18rem;" >
                                    <div class="card l-bg-blue">
                                        <div class="card-statistic-3 p-4">
                                            <a data-toggle="collapse" href="#collapse-4" aria-expanded="true"
                                                aria-controls="collapse-4" id="heading-4" class="d-block">
                                                <div class="card-icon card-icon-large"><i class="fas fa-building"></i>
                                                </div>
                                                <div class="mb-4">
                                                    <h5 class="card-title mb-0">Company Profile SMK Taruna Bhakti</h5>
                                                </div>
                                                <div class="row align-items-center mb-2 d-flex">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div id="collapse-4" class="collapse hide" aria-labelledby="heading-4">
                                    <div class="card-body ">
                                        <div class="col-12 " style="margin-top: -30px;">
                                            <p class="d-flex align-items-center mb-0 text-dark">
                                                Company Profile tentang SMK Taruna Bhakti
                                            </p>
                                            <a href="#" class="btn btn-outline-primary">Go To Here &nbsp;<i
                                                    class="fas fa-arrow-right"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div> --}}

                        </div>

                    </div>
                </div>
                <h2 class="h5 mt-4 mb-3 ">Artikel Anda</h2>
                <p>

                    {{-- <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
                          Tambah Artikel
                        </button> --}}
                </p>
                {{-- <div class="collapse" id="collapseExample">
                        <div class="card card-body">
                            <div class="row">
                                <div class="col-md-12">
                                  <div class="card shadow mb-4">
                                    <div class="card-header">
                                      <strong class="card-title">Form row</strong>
                                    </div>
                                    <div class="card-body">
                                      <form action="" method="POST">
                                        <div class="form-row">
                                          <div class="form-group col-md-6">
                                            <label for="categories">Categories</label>
                                            <select name="" id="categories" class="form-control">
                                                        <option value="1">1</option>
                                                        <option value="2">2</option>
                                            </select>
                                          </div>
                                          <div class="form-group col-md-6">
                                            <label for="judul">Judul</label>
                                            <input type="text" class="form-control" id="judul">
                                          </div>
                                        </div>
                                        <div class="form-group">
                                          <label for="inputAddress">Address</label>
                                          <input type="text" class="form-control" id="inputAddress5" placeholder="1234 Main St">
                                        </div>
                                        <div class="form-group">
                                          <label for="inputAddress2">Address 2</label>
                                          <input type="text" class="form-control" id="inputAddress6" placeholder="Apartment, studio, or floor">
                                        </div>
                                        <div class="form-row">
                                          <div class="form-group col-md-6">
                                            <label for="inputCity">City</label>
                                            <input type="text" class="form-control" id="inputCity5">
                                          </div>
                                          <div class="form-group col-md-4">
                                            <label for="inputState">State</label>
                                            <select id="inputState5" class="form-control">
                                              <option selected>Choose...</option>
                                              <option>...</option>
                                            </select>
                                          </div>
                                          <div class="form-group col-md-2">
                                            <label for="inputZip">Zip</label>
                                            <input type="text" class="form-control" id="inputZip5">
                                          </div>
                                        </div>
                                        <div class="form-group">
                                          <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="gridCheck5">
                                            <label class="form-check-label" for="gridCheck5"> Check me out </label>
                                          </div>
                                        </div>
                                        <button type="submit" class="btn btn-primary">Sign in</button>
                                      </form>
                                    </div> <!-- /. card-body -->
                                  </div> <!-- /. card -->
                                </div> <!-- /. col -->
                              </div> <!-- /. end-section -->
                        </div>
                      </div> --}}
                <div class="row">
                    <!-- Log -->
                    <div class="col-md-12 mb-4">
                        <div class="card shadow">
                            <div class="card-header">
                                <strong class="card-title">Artikel Terbaru</strong>
                                <a class="float-right small text-muted" href="#!">View all</a>
                            </div>
                            <div class="card-body">
                                <div class="list-group list-group-flush my-n3">
                                    <div class="list-group-item">
                                        <div class="row align-items-center">
                                            <div class="col-auto">
                                                <span class="circle circle-sm bg-warning"><i
                                                        class="fe fe-shield-off fe-16 text-white"></i></span>
                                            </div>
                                            <div class="col">
                                                <small><strong>11:00 April 16, 2020</strong></small>
                                                <div class="mb-2 text-muted small">Lorem ipsum dolor sit amet,
                                                    <strong>consectetur adipiscing</strong> elit. Integer dignissim
                                                    nulla eu quam cursus placerat. Vivamus non odio ullamcorper,
                                                    lacinia
                                                    ante nec, blandit leo.
                                                </div>
                                                <span class="badge badge-pill badge-warning">Security</span>
                                            </div>
                                            <div class="col-auto pr-0">
                                                <div class="dropdown">
                                                    <button class="btn btn-sm dropdown-toggle more-dropdown" type="button"
                                                        id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true"
                                                        aria-expanded="false">
                                                        <span class="sr-only"></span>
                                                    </button>
                                                    <div class="dropdown-menu dropdown-menu-right"
                                                        aria-labelledby="dropdownMenuButton">
                                                        <a class="dropdown-item" href="#"><small>Move</small></a>
                                                        <a class="dropdown-item" href="#"><small>Share</small></a>
                                                        <a class="dropdown-item" href="#"><small>Delete</small></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div> <!-- / .row -->
                                    </div><!-- / .list-group-item -->
                                    <div class="list-group-item">
                                        <div class="row align-items-center">
                                            <div class="col-auto">
                                                <span class="circle circle-sm bg-success"><i
                                                        class="fe fe-database fe-16 text-white"></i></span>
                                            </div>
                                            <div class="col">
                                                <small><strong>17:00 April 15, 2020</strong></small>
                                                <div class="mb-2 text-muted small">Proin porta vel erat suscipit
                                                    luctus. Cras rhoncus felis sed magna commodo, in <a
                                                        href="#!">pretium</a> mauris faucibus. Cras rhoncus felis
                                                    sed
                                                    magna commodo, in pretium mauris faucibus.</div>
                                                <span class="badge badge-pill badge-success">System Update</span>
                                            </div>
                                            <div class="col-auto pr-0">
                                                <div class="dropdown">
                                                    <button class="btn btn-sm dropdown-toggle more-dropdown" type="button"
                                                        id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true"
                                                        aria-expanded="false">
                                                        <span class="sr-only"></span>
                                                    </button>
                                                    <div class="dropdown-menu dropdown-menu-right"
                                                        aria-labelledby="dropdownMenuButton">
                                                        <a class="dropdown-item" href="#"><small>Move</small></a>
                                                        <a class="dropdown-item" href="#"><small>Share</small></a>
                                                        <a class="dropdown-item" href="#"><small>Delete</small></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div> <!-- / .row -->
                                    </div><!-- / .list-group-item -->
                                    <div class="list-group-item">
                                        <div class="row align-items-center">
                                            <div class="col-auto">
                                                <span class="circle circle-sm bg-secondary"><i
                                                        class="fe fe-user-plus fe-16 text-white"></i></span>
                                            </div>
                                            <div class="col">
                                                <small><strong>17:00 April 10, 2020</strong></small>
                                                <div class="mb-2 text-muted small"> Morbi id arcu convallis,
                                                    eleifend
                                                    justo tristique, tincidunt nisl. Morbi euismod fermentum quam,
                                                    at
                                                    fringilla elit posuere a. <strong>Aliquam</strong> accumsan mi
                                                    venenatis risus fermentum, at sagittis velit fermentum.</div>
                                                <span class="badge badge-pill badge-secondary">Users</span>
                                            </div>
                                            <div class="col-auto pr-0">
                                                <div class="dropdown">
                                                    <button class="btn btn-sm dropdown-toggle more-dropdown" type="button"
                                                        id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true"
                                                        aria-expanded="false">
                                                        <span class="sr-only"></span>
                                                    </button>
                                                    <div class="dropdown-menu dropdown-menu-right"
                                                        aria-labelledby="dropdownMenuButton">
                                                        <a class="dropdown-item" href="#"><small>Move</small></a>
                                                        <a class="dropdown-item" href="#"><small>Share</small></a>
                                                        <a class="dropdown-item" href="#"><small>Delete</small></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div> <!-- / .row -->
                                    </div><!-- / .list-group-item -->
                                </div> <!-- / .list-group -->
                            </div> <!-- / .card-body -->
                        </div> <!-- / .card -->
                    </div> <!-- / .col -->
                </div> <!-- end section -->
            </div>

        </div>
    </div>
    {{-- </div> --}}


    </div>
@endsection
