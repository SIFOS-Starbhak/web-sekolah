@extends('template.app')
@section('title', 'Hubin')
@section('main')
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
@endsection
