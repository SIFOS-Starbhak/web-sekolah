<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />

    <title>Register Alumni - SMK Taruna Bhakti</title>
    <meta content="" name="description" />
    <meta content="" name="keywords" />

    <!-- Favicons -->

    <link href="{{ asset('favicon.ico') }}" rel="icon" />

    <link href="{{ asset('template/assets/img/apple-touch-icon.png') }}" rel="apple-touch-icon" />

    <!-- Google Fonts -->
    <link
        href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
        rel="stylesheet" />

    <!-- Vendor CSS Files -->
    <link href="{{ asset('template/assets/vendor/animate.css/animate.min.css') }}" rel="stylesheet" />
    <link href="{{ asset('template/assets/vendor/aos/aos.css') }}" rel="stylesheet" />
    <link href="{{ asset('template/assets/vendor/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet" />
    <link href="{{ asset('template/assets/vendor/bootstrap-icons/bootstrap-icons.css') }}" rel="stylesheet" />
    <link href="{{ asset('template/assets/vendor/boxicons/css/boxicons.min.css') }}" rel="stylesheet" />
    <link href="{{ asset('template/assets/vendor/remixicon/remixicon.css') }}" rel="stylesheet" />
    <link href="{{ asset('template/assets/vendor/swiper/swiper-bundle.min.css') }}" rel="stylesheet" />

    <!-- Template Main CSS File -->
    <link href="{{ asset('template/assets/css/style.css') }}" rel="stylesheet" />

    <!-- Font Awesome -->
    <!-- <link href="fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css" /> -->
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
        integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
    <!-- =======================================================
* Template Name: Mentor - v4.5.0
* Template URL: https://bootstrapmade.com/mentor-free-education-bootstrap-theme/
* Author: BootstrapMade.com
* License: https://bootstrapmade.com/license/
======================================================== -->
</head>

<body>
    {{-- @include('template.navbar')
@include('template.background') --}}
    <div class="container mt-5">
        <div>
            <a href="/hubin" class="col-12" style="font-size: 17px;"><i class="fas fa-arrow-left"></i>
                Kembali</a>
        </div>
        <div class="card mt-5" style="border: hidden;">
            <div class="card-header text-center shadow" style="background-color: #2689c9; color: white;">
                <h3 class="card-title mt-2">Formulir Pendataan Alumni</h3>
                <p class="card-text mb-2">Pendataan Alumni SMK Taruna Bhakti</p>
            </div>
            <div class="card-body">

                <div class="card">
                    <div class="card-body shadow">
                        <form action="{{ route('store') }}" method="POST" enctype="multipart/form-data">
                            @csrf

                            <div class="mb-3">
                                <label for="exampleInputPassword1" class="form-label fw-bold">Nama Lengkap</label>
                                <input type="text" class="form-control" id="name" name="name">

                                @error('name')
                                    <div class="alert alert-danger mt-2">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>

                            <div class="mb-3">
                                <div class="col">
                                    <label for="exampleInputPassword1" class="form-label fw-bold">Tahun Lulus</label>
                                    <input type="text" class="form-control" id="tahun_lulus" name="tahun_lulus">
                                </div>

                                @error('tahun_lulus')
                                    <div class="alert alert-danger mt-2">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>

                            <div class="mb-3">
                                <div class="col">
                                    <label for="exampleInputPassword1" class="form-label fw-bold">Nama
                                        Perusahaan / Nama Perguruan Tinggi</label>
                                    <input type="text" class="form-control" id="nama_perusahaan"
                                        name="nama_perusahaan">
                                </div>

                                @error('nama_perusahaan')
                                    <div class="alert alert-danger mt-2">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>

                            <div class="mb-3">
                                <div class="col">
                                    <label for="exampleInputPassword1" class="form-label fw-bold">Posisi / Program Studi / Bidang Usaha</label>
                                    <input type="text" class="form-control" id="posisi" name="posisi">
                                </div>

                                @error('posisi')
                                    <div class="alert alert-danger mt-2">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>

                            <div class="mb-3">
                                <div class="col">
                                    <label for="exampleInputPassword1" class="form-label fw-bold">Tahun Kerja</label>
                                    <input type="text" class="form-control" id="tahun_kerja" name="tahun_kerja">
                                </div>

                                @error('tahun_kerja')
                                    <div class="alert alert-danger mt-2">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>

                            <div class="mb-3">
                                <div class="col">
                                    <label for="exampleInputPassword1" class="form-label fw-bold">Penghasilan</label>
                                    <input type="text" class="form-control" id="penghasilan" name="penghasilan">
                                </div>
                                @error('penghasilan')
                                    <div class="alert alert-danger mt-2">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>

                            <div class="mb-3">
                                <label for="" class="form-label fw-bold">Category Alumni</label>
                                <select class="form-select" aria-label="Default select example"
                                    id="categories_alumnis" name="categories_alumnis">
                                    <option selected></option>
                                    <option value="Bekerja">Bekerja</option>
                                    <option value="Kuliah">Kuliah</option>
                                    <option value="Wirausaha">Wirausaha</option>
                                </select>

                                @error('categories_alumnis')
                                    <div class="alert alert-danger mt-2">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>

                            <div class="mb-3">
                                <label for="" class="form-label fw-bold">Jurusan</label>
                                <select class="form-select" aria-label="Default select example" id="jurusan"
                                    name="jurusan">
                                    @foreach ($jurusans as $kelas)
                                        <option value="{{ $kelas->jurusan }}">{{ $kelas->jurusan }}</option>
                                    @endforeach
                                </select>

                                @error('jurusan')
                                    <div class="alert alert-danger mt-2">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>

                    </div>
                </div>
                <br>
                <div class="text-center mb-5">
                    <button type="submit" class="col-12 btn btn-primary btn-lg mt-1 shadow">Kirim</button>
                </div>
                </form>


            </div>
        </div>
    </div>


    {{-- @include('template.footer') --}}
    <!-- Vendor JS Files -->
    <script src="{{ asset('template/assets/vendor/aos/aos.js') }}"></script>
    <script src="{{ asset('template/assets/vendor/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
    <script src="{{ asset('template/assets/vendor/php-email-form/validate.js') }}"></script>
    <script src="{{ asset('template/assets/vendor/purecounter/purecounter.js') }}"></script>
    <script src="{{ asset('template/assets/vendor/swiper/swiper-bundle.min.js') }}"></script>

    <!-- Template Main JS File -->
    <script src="{{ asset('template/assets/js/main.js') }}"></script>
</body>

</html>
