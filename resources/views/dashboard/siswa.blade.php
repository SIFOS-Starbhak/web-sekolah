@extends('layouts.app')
@section('title', 'Dashboard')
@section('main')
    <div>
        {{-- <div class="container-fluid"> --}}
        <div class="row">
            <div class="col-12">
                <!-- <h2>Section title</h2> -->
                <div class="row">
                    <div class="col mb-4 mt-5 px-0">
                        <div class="card shadow">
                            <div class="card-body">
                                <div class="row align-items-center">
                                    <div class="col">
                                        {{-- //@dump(JWTAuth::getToken()) --}}
                                        {{-- <span
                                                class="font-weight-bold h4">{{ Auth::guard('siswa')->user()->name }}</span>
                                            <p class="small text-muted mb-0">{{ Auth::guard('siswa')->user()->email }}</p> --}}
                                        <span {{-- class="badge badge-pill badge-success">{{ Auth::guard('siswa')->user()->kelas_id }}</span> --}} </div>
                                            <div class="col-auto">
                                                <span class="fe fe-32 fe-user text-muted mb-0"></span>
                                            </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <h2 class="h5 page-title mb-4">WEB Sistem SMK Taruna Bhakti</h2>
                    <div class="row">
                        <div class="col-md-4">
                            <a href="">
                                <div class="card l-bg-blue-dark text-decoration-none">
                                    <div class="card-statistic-3 p-4">
                                        <div class="card-icon card-icon-large"><i class="fas fa-chalkboard-teacher"></i>
                                        </div>
                                        <div class="mb-4">
                                            <h5 class="card-title mb-0">Portal SMK Taruna Bhakti</h5>
                                        </div>
                                        <div class="row align-items-center mb-2 d-flex">
                                            <div class="col-8">
                                                <p class="d-flex align-items-center mb-0 text-dark">
                                                    Portal pembelajaran
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-md-4">
                            <a href="">
                                <div class="card l-bg-cherry">
                                    <div class="card-statistic-3 p-4">
                                        <div class="card-icon card-icon-large"><i class="fas fa-briefcase"></i></div>
                                        <div class="mb-4">
                                            <h5 class="card-title mb-0">Sitakols SMK Taruna Bhakti</h5>
                                        </div>
                                        <div class="row align-items-center mb-2 d-flex">
                                            <div class="col-8">
                                                <p class="d-flex align-items-center mb-0 text-dark">
                                                    Sistem tata kelola surat
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-md-4">
                            <a href="">
                                <div class="card l-bg-green-dark">
                                    <div class="card-statistic-3 p-4">
                                        <div class="card-icon card-icon-large"><i class="fas fa-clipboard-list"></i></div>
                                        <div class="mb-4">
                                            <h5 class="card-title mb-0">Absensi SMK Taruna Bhakti</h5>
                                        </div>
                                        <div class="row align-items-center mb-2 d-flex">
                                            <div class="col-8">
                                                <p class="d-flex align-items-center mb-0 text-dark">
                                                    Presensi
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            {{-- </div> --}}


        </div>
        {{ dd($_COOKIE); }}
    @endsection
