@extends('layouts.app')
@section('title', 'Dashboard')
@section('main')
    <div>
        <div class="container">
            <div class="row">
                <div class="col">
                    <h1 class="section-title">Selamat Datang</h1>
                    <div class="card">
                        <div class="card-body">
                            <div class="row d-flex flex-nowrap">
                            </div>
                            <div class="row mt-5 align-items-center">
                                <div class="col-md-3 text-center mb-5">
                                    <div class="avatar avatar-xl">
                                        <img src={{ asset('assets\avatars\face-2.jpg') }} alt="..."
                                            class="avatar-img rounded-circle" style="width: 160px">
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="row align-items-center">
                                        <div class="col-md-7">
                                            <h4 class="mb-1">{{ Auth::guard('siswa')->user()->name }}</h4>
                                            <p class="small mb-0"><span
                                                    class="badge badge-dark">{{ Auth::guard('siswa')->user()->kelas->nama_kelas }}</span>
                                            </p>
                                            <p class="small mb-0"><span
                                                    class="badge badge-dark">{{ Auth::guard('siswa')->user()->nipd }}</span>
                                            </p>
                                            <p class="small mb-0"><span
                                                    class="badge badge-dark">{{ Auth::guard('siswa')->user()->email }}</span>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                <div class="row">
                    <div class="col-12 mr-5 ">
                        <h2 class="h5 page-title mt-5 mb-5 ml-2">WEB App Instansi SMK Taruna Bhakti
                        </h2>
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
                                                        <h5 class="card-title mb-0">Portal SMK
                                                            Taruna Bhakti</h5>
                                                    </div>
                                                </a>
                                            </div>
                                        </div>
                                        <div id="collapse-1" class="collapse hide" aria-labelledby="heading-1">
                                            <div class="card-body">
                                                <div class="col-12">
                                                    <p class="align-items-center mb-3 text-dark">
                                                        Portal pembelajaran Lorem, ipsum dolor sit
                                                        amet consectetur
                                                        adipisicing
                                                        elit. Molestiae debitis distinctio, odit
                                                        veniam culpa accusamus
                                                        fugit
                                                        repellat non illo, quis rerum optio dolorum
                                                        laboriosam vero
                                                        aspernatur
                                                        facilis perspiciatis, sunt natus!
                                                    </p>
                                                    <a href="#" class="btn btn-outline-primary">Go
                                                        To Here &nbsp;<i class="fas fa-arrow-right"></i></a>
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
                                                        <h5 class="card-title mb-0">Sitakols SMK
                                                            Taruna Bhakti</h5>
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
                                                        Sistem Tatakelola Surat Menyurat Sekolah /
                                                        Prakerin
                                                    </p>
                                                    <a href="#" class="btn btn-outline-primary">Go
                                                        To Here &nbsp;<i class="fas fa-arrow-right"></i></a>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                                <div class="col-xl-3 col-lg-6">
                                    <div class="card">
                                        <div class="card l-bg-green">
                                            <div class="card-statistic-3 p-4">
                                                <a data-toggle="collapse" href="#collapse-3" aria-expanded="true"
                                                    aria-controls="collapse-3" id="heading-3" class="d-block">
                                                    <div class="card-icon card-icon-large"><i
                                                            class="fas fa-clipboard-list"></i>
                                                    </div>
                                                    <div class="mb-4">
                                                        <h5 class="card-title mb-0">Presensi Absensi
                                                            SMK Taruna Bhakti</h5>
                                                    </div>
                                                    <div class="row align-items-center mb-2 d-flex">
                                                    </div>
                                                </a>
                                            </div>
                                        </div>
                                        <div id="collapse-3" class="collapse hide" aria-labelledby="heading-3">
                                            <div class="card-body ">
                                                <div class="col-12 " style="margin-top: -30px;">
                                                    <p class="d-flex align-items-center mb-0 text-dark">
                                                        Presensi Absensi SMK Taruna Bhakti
                                                    </p>
                                                    <a href="#" class="btn btn-outline-primary">Go
                                                        To Here &nbsp;<i class="fas fa-arrow-right"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-lg-6">
                                    <div class="card">
                                        <div class="card l-bg-blue">
                                            <div class="card-statistic-3 p-4">
                                                <a data-toggle="collapse" href="#collapse-4" aria-expanded="true"
                                                    aria-controls="collapse-4" id="heading-4" class="d-block">
                                                    <div class="card-icon card-icon-large"><i class="fas fa-building"></i>
                                                    </div>
                                                    <div class="mb-4">
                                                        <h5 class="card-title mb-0">Company Profile
                                                            SMK Taruna Bhakti</h5>
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
                                                <a href="#" class="btn btn-outline-primary">Go To
                                                    Here &nbsp;<i class="fas fa-arrow-right"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            {{-- </div> --}}


        </div>
    @endsection
