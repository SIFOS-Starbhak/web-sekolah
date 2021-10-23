@extends('layouts.app')
@section('title', 'Dashboard')
@section('judul', 'Welcome')

@section('main')
    @if (JWTAuth::user()->role->name == 'siswa')
        <div class="row">
            <div class="col">
                <div class="card profile-widget">
                    <div class="profile-widget-header">
                        @if (File::exists(public_path(Auth::user()->avatar)))
                        <img alt="image" src="{{ asset(Auth::user()->avatar) }}"
                            class="rounded-circle profile-widget-picture">
                    @else
                        <img alt="image" src="{{ asset('img/avatar/avatar-1.png') }}"
                            class="rounded-circle profile-widget-picture">
    @endif
    <div class="profile-widget-items">
        <div class="profile-widget-item">
            <div class="profile-widget-item-label">NISN</div>
            <div class="profile-widget-item-value">{{ JWTAuth::user()->nomor_induk }}</div>
        </div>
        <div class="profile-widget-item">
            <div class="profile-widget-item-label">Email</div>
            <div class="profile-widget-item-value">{{ JWTAuth::user()->email }}</div>
        </div>
    </div>
    </div>
    <div class="profile-widget-description">
        <div class="profile-widget-name">
            <span class="h3 font-weight-bold">
                {{ JWTAuth::user()->name }}
                <div class="slash"></div>
                <div class="text-muted d-inline font-weight-normal">
                    <div class="badge badge-lg badge-primary">
                        {{ JWTAuth::user()->kelas->nama_kelas }}
                    </div>
                </div>
            </span>
        </div>
    </div>
    </div>
    </div>
    </div>
    <div class="mb-3">
        <h1 class="section-title">WEB App Instansi SMK Taruna Bhakti
        </h1>
    </div>
    <div class="row">
        <div class="col-md-4 d-flex mb-3">
            <a href="" class="text-decoration-none" id="microWebPortal">
                <div class="card h-100">
                    <div class="s text-white py-5 px-4" style="background-color: rgb(37, 255, 37)">
                        <i class="fas fa-chalkboard-teacher big-icon"></i>
                        <h3>Portal SMK Taruna Bhakti</h3>
                    </div>
                    <div class="card-body flex-fill">
                        <p class="card-text text-dark">Portal yang dapat digunakan untuk
                            pembelajaran,
                            pengerjaan dan pengiriman Tugas.</p>
                    </div>
                </div>
            </a>
        </div>
        <div class="col-md-4 d-flex mb-3">
            <a href="" class="text-decoration-none" id="sitakols">
                <div class="card h-100">
                    <div class="bg-warning text-white py-5 px-4">
                        <i class="fas fa-briefcase big-icon"></i>
                        <h3>Sitakols SMK Taruna Bhakti</h3>
                    </div>
                    <div class="card-body flex-fill">
                        <p class="card-text text-dark">Sitakols adalah aplikasi yang digunakan
                            untuk keperluan surat menyurat dan magang.</p>
                    </div>
                </div>
            </a>
        </div>
        {{-- <div class="col-md-4 d-flex mb-3">
                    <a href="" class="text-decoration-none" id="refleksi">
                        <div class="card h-100">
                            <div class="bg-info text-white py-5 px-4">
                                <i class="fas fa-clipboard big-icon"></i>
                                <h3>Refleksi Mengajar
                                    SMK Taruna Bhakti</h3>
                            </div>
                            <div class="card-body flex-fill">
                                <p class="card-text text-dark">Refleksi mengajar yang berfungsi untuk
                                    merekap pembelajaran jarak jauh (PJJ)</p>
                            </div>
                        </div>
                    </a>
                </div> --}}
    </div>
    {{-- <div class="col-12 col-sm-6 col-lg-3">
            <div class="card">
                <div class="card-body text-center">
                    <div class="mb-2">Info Message</div>
                    <button class="btn btn-primary" id="toastr-1">Launch</button>
                </div>
            </div>
        </div> --}}

@elseif (JWTAuth::user()->role->name == 'guru')
    <div class="row">
        <div class="col">
            <div class="card profile-widget">
                <div class="profile-widget-header">
                    @if (File::exists(public_path(Auth::user()->avatar)))
                    <img alt="image" src="{{ asset(Auth::user()->avatar) }}"
                        class="rounded-circle profile-widget-picture">
                @else
                    <img alt="image" src="{{ asset('img/avatar/avatar-1.png') }}"
                        class="rounded-circle profile-widget-picture">
                    @endif
                    <div class="profile-widget-items">
                        <div class="profile-widget-item">
                            <div class="profile-widget-item-label">NIK</div>
                            <div class="profile-widget-item-value">
                                {{ JWTAuth::user()->nomor_induk }}</div>
                        </div>
                        <div class="profile-widget-item">
                            <div class="profile-widget-item-label">Email</div>
                            <div class="profile-widget-item-value">
                                {{ JWTAuth::user()->email }}</div>
                        </div>
                        <div class="profile-widget-item">
                            <div class="profile-widget-item-label">Mata Pelajaran</div>
                            <div class="profile-widget-item-value">
                                {{ empty(JWTAuth::user()->mapel->mata_pelajaran) ? 'Tidak ada Mapel' : JWTAuth::user()->mapel->mata_pelajaran }}
                            </div>
                        </div>
                    </div>
                </div>
                <div class="profile-widget-description">
                    <div class="profile-widget-name">
                        <span class="h3 font-weight-bold">
                            {{ JWTAuth::user()->name }}
                            <div class="slash"></div>

                            <div class="text-muted d-inline font-weight-normal">
                                <div class="badge badge-primary">
                                    {{ JWTAuth::user()->jabatan_guru }}
                                </div>
                            </div>
                        </span>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <div class="mb-3">
        <h1 class="section-title">WEB App Instansi SMK Taruna Bhakti
        </h1>
    </div>
    <div class="row">
        <div class="col-md-4 d-flex mb-3">
            <a href="" class="text-decoration-none" id="microWebPortal">
                <div class="card h-100">
                    <div class=" text-white py-5 px-4" style="background-color: rgb(24, 208, 0)">
                        <i class="fas fa-chalkboard-teacher big-icon"></i>
                        <h3>Portal SMK Taruna Bhakti</h3>
                    </div>
                    <div class="card-body flex-fill">
                        <p class="card-text text-dark">Portal yang dapat digunakan untuk
                            pembelajaran,
                            pengerjaan dan pengiriman Tugas.</p>
                    </div>
                </div>
            </a>
        </div>
        <div class="col-md-4 d-flex mb-3">
            <a href="" class="text-decoration-none" id="sitakols">
                <div class="card h-100">
                    <div class="bg-warning text-white py-5 px-4">
                        <i class="fas fa-briefcase big-icon"></i>
                        <h3>Sitakols SMK Taruna Bhakti</h3>
                    </div>
                    <div class="card-body flex-fill">
                        <p class="card-text text-dark">Sitakols adalah aplikasi yang digunakan
                            untuk keperluan surat menyurat dan magang.</p>
                    </div>
                </div>
            </a>
        </div>
        <div class="col-md-4 d-flex mb-3">
            <a href="" class="text-decoration-none" id="refleksi">
                <div class="card h-100">
                    <div class="bg-info text-white py-5 px-4">
                        <i class="fas fa-clipboard big-icon"></i>
                        <h3>Refleksi Mengajar
                            SMK Taruna Bhakti</h3>
                    </div>
                    <div class="card-body flex-fill">
                        <p class="card-text text-dark">Refleksi mengajar yang berfungsi untuk
                            merekap pembelajaran jarak jauh (PJJ)</p>
                    </div>
                </div>
            </a>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <div class="mb-3">
                <h1 class="section-title">Article SMK Taruna Bhakti
                </h1>
            </div>
            <table id="tableArtikel" class="table dataTable">
                <thead>
                    <tr role="row">
                        <th scope="col">Judul</th>
                        <th scope="col">Kategori</th>
                        <th scope="col">Waktu dan Tanggal dibuat</th>
                        <th scope="col">Status</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($article as $item)
                        <tr>
                            {{-- <td>
                                    <img style="width: 200px; height:200px;"
                                        class=""
                                        src="
                                        {{ asset('article-img/' . $item->image) }}" alt="">
                                </td> --}}
                            <td>{{ $item->title }}
                                <div class="table-links d-flex align-items-center">
                                    <a href="{{ route('showartikel', $item->slug) }}">View</a>
                                    {{-- <a href="{{ route('article.edit', $item->id) }}">Edit</a>
                                        <div class="bullet"></div>
                                        <form id="deleteForm"
                                            action="{{ route('article.delete', $item->id) }}"
                                            method="POST">
                                            @method('delete')
                                            @csrf
                                            <button type="submit" class="btn px-0 deleteConfirm">
                                                <a class="text-danger">Delete</a>
                                            </button>
                                        </form> --}}

                                </div>
                            </td>
                            <td>
                                {{ $item->category->name }}
                            </td>
                            <td>
                                {{ Carbon\Carbon::parse($item->created_at)->format('H:i') }}
                                <br>
                                {{ Carbon\Carbon::parse($item->created_at)->isoFormat('dddd, D MMMM Y') }}
                            </td>
                            <td>
                                {{-- <div class="dropdown d-inline">
                                        @if ($item->status == 'DRAFT')
                                            <button class="btn btn-warning dropdown-toggle" type="button"
                                                id="dropdownMenuButton2" data-toggle="dropdown"
                                                aria-haspopup="true" aria-expanded="false">
                                                {{ $item->status }}
                                            </button>
                                        @else
                                            <button class="btn btn-primary dropdown-toggle" type="button"
                                                id="dropdownMenuButton2" data-toggle="dropdown"
                                                aria-haspopup="true" aria-expanded="false">
                                                {{ $item->status }}
                                            </button>
                                        @endif
                                        <div class="dropdown-menu" x-placement="bottom-start"
                                            style="position: absolute; transform: translate3d(0px, 28px, 0px); top: 0px; left: 0px; will-change: transform;">
                                            <form action="{{ route('article.draft', $item->id) }}"
                                                method="POST">
                                                @method('PUT')
                                                @csrf
                                                @if ($item->status == 'PUBLISHED')
                                                    <button type="submit" class="dropdown-item has-icon">
                                                        <a
                                                            class="text-dark d-flex align-items-center text-decoration-none">
                                                            <i class="fa fa-edit text-warning"></i>
                                                            Draft</a>
                                                    </button>
                                                @else
                                                    <button type="submit" class="dropdown-item has-icon">
                                                        <a
                                                            class="text-dark d-flex align-items-center text-decoration-none">
                                                            <i class="fa fa-upload text-primary"></i>
                                                            Publish</a>
                                                    </button>
                                                @endif
                                            </form>
                                        </div>
                                    </div> --}}
                                @if ($item->status == 'PUBLISHED')
                                    <span class="badge badge-primary">{{ $item->status }}</span>

                                @else
                                    <span class="badge badge-warning">{{ $item->status }}</span>

                                @endif
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>

    <div class="row">
        <div class="mb-3">
            <h1 class="section-title">Data Siswa SMK Taruna Bhakti
            </h1>
        </div>
        <div class="col-12 col-sm-12 col-lg-12 ">
            <div class="card">
                <div class="card-body">
                    <ul class="nav nav-tabs justify-content-center" id="myTab6" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active text-center" id="X-tab6" data-toggle="tab" href="#X6" role="tab"
                                aria-controls="home" aria-selected="true">
                                <span>
                                    {{-- <i class="fas fa-home"></i> --}}
                                </span> X</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-center" id="XI-tab6" data-toggle="tab" href="#XI6" role="tab"
                                aria-controls="profile" aria-selected="false">
                                <span>
                                    {{-- <i class="fas fa-id-card"></i> --}}
                                </span> XI</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-center" id="XII-tab6" data-toggle="tab" href="#XII6" role="tab"
                                aria-controls="contact" aria-selected="false">
                                <span>
                                    {{-- <i class="fas fa-mail-bulk"></i> --}}
                                </span> XII</a>
                        </li>
                    </ul>
                    <div class="tab-content tab-bordered" id="myTabContent6">
                        <div class="tab-pane fade show active" id="X6" role="tabpanel" aria-labelledby="X-tab6">

                            <div class="col-12 col-sm-12 col-lg-12 ">
                                <div class="card">
                                    <div class="card-header">
                                        <h4>Data Siswa <code>Kelas 10</code></h4>
                                    </div>
                                    <div class="card-body">
                                        <ul class="nav nav-tabs justify-content-center" id="myTab6" role="tablist">
                                            <li class="nav-item">
                                                <a class="nav-link active text-center" id="X-RPL-tab6" data-toggle="tab"
                                                    href="#X-RPL6" role="tab" aria-controls="home" aria-selected="true">
                                                    <span>
                                                        {{-- <i class="fas fa-home"></i> --}}
                                                    </span>
                                                    RPL
                                                </a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link text-center" id="X-MM-tab6" data-toggle="tab"
                                                    href="#X-MM6" role="tab" aria-controls="profile" aria-selected="false">
                                                    <span>
                                                        {{-- <i class="fas fa-id-card"></i> --}}
                                                    </span>MM</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link text-center" id="X-BC-tab6" data-toggle="tab"
                                                    href="#X-BC6" role="tab" aria-controls="contact" aria-selected="false">
                                                    <span>
                                                        {{-- <i class="fas fa-mail-bulk"></i> --}}
                                                    </span>BC</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link text-center" id="X-TKJ-tab6" data-toggle="tab"
                                                    href="#X-TKJ6" role="tab" aria-controls="contact" aria-selected="false">
                                                    <span>
                                                        {{-- <i class="fas fa-mail-bulk"></i> --}}
                                                    </span>TKJ</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link text-center" id="X-TEI-tab6" data-toggle="tab"
                                                    href="#X-TEI6" role="tab" aria-controls="contact" aria-selected="false">
                                                    <span>
                                                        {{-- <i class="fas fa-mail-bulk"></i> --}}
                                                    </span>TEI</a>
                                            </li>
                                        </ul>
                                        <div class="tab-content tab-bordered" id="myTabContent6">
                                            <div class="tab-pane fade show active" id="X-RPL6" role="tabpanel"
                                                aria-labelledby="X-RPL-tab6">
                                                <table class="table table-striped" id="X_RPL">
                                                    <thead>
                                                        <tr>

                                                            <th>No</th>
                                                            <th>Photo</th>
                                                            <th>Name</th>
                                                            <th>Email</th>

                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        @forelse ($X_RPL as $item)
                                                            <tr>
                                                                <td>
                                                                    <div class="sort-handler">
                                                                        {{ $loop->iteration }}
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <img alt="image"
                                                                        src="{{ asset('img/' . $item->avatar) }}"
                                                                        class="rounded-circle" width="35"
                                                                        data-toggle="tooltip" title="Wildan Ahdian">
                                                                </td>
                                                                <td>{{ $item->name }}</td>
                                                                <td class="align-middle">
                                                                    {{ $item->email }}
                                                                </td>
                                                            </tr>
                                                        @empty
                                                            <div class="center">
                                                                <h1>Data Siswa Tidak ada</h1>
                                                            </div>
                                                        @endforelse


                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="tab-pane fade" id="X-MM6" role="tabpanel"
                                                aria-labelledby="X-MM-tab6">

                                                <table class="table table-striped" id="X_MM">
                                                    <thead>
                                                        <tr>

                                                            <th>No</th>
                                                            <th>Photo</th>
                                                            <th>Name</th>
                                                            <th>Email</th>

                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        @forelse ($X_MM as $item)
                                                            <tr>
                                                                <td>
                                                                    <div class="sort-handler">
                                                                        {{ $loop->iteration }}
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <img alt="image"
                                                                        src="{{ asset('img/' . $item->avatar) }}"
                                                                        class="rounded-circle" width="35"
                                                                        data-toggle="tooltip" title="Wildan Ahdian">
                                                                </td>
                                                                <td>{{ $item->name }}</td>
                                                                <td class="align-middle">
                                                                    {{ $item->email }}
                                                                </td>
                                                            </tr>
                                                        @empty
                                                            <div class="center">
                                                                <h1>Data Siswa Tidak ada</h1>
                                                            </div>

                                                        @endforelse


                                                        </tr>
                                                    </tbody>
                                                </table>

                                            </div>
                                            <div class="tab-pane fade" id="X-BC6" role="tabpanel"
                                                aria-labelledby="X-BC-tab6">
                                                <table class="table table-striped" id="X_BC">
                                                    <thead>
                                                        <tr>

                                                            <th>No</th>
                                                            <th>Photo</th>
                                                            <th>Name</th>
                                                            <th>Email</th>

                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        @forelse ($X_BC as $item)
                                                            <tr>
                                                                <td>
                                                                    <div class="sort-handler">
                                                                        {{ $loop->iteration }}
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <img alt="image"
                                                                        src="{{ asset('img/' . $item->avatar) }}"
                                                                        class="rounded-circle" width="35"
                                                                        data-toggle="tooltip" title="Wildan Ahdian">
                                                                </td>
                                                                <td>{{ $item->name }}</td>
                                                                <td class="align-middle">
                                                                    {{ $item->email }}
                                                                </td>
                                                            </tr>
                                                        @empty
                                                            <div class="center">
                                                                <h1>Data Siswa Tidak ada</h1>
                                                            </div>
                                                        @endforelse


                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="tab-pane fade" id="X-TKJ6" role="tabpanel"
                                                aria-labelledby="X-TKJ-tab6">
                                                <table class="table table-striped" id="X_TKJ">
                                                    <thead>
                                                        <tr>

                                                            <th>No</th>
                                                            <th>Photo</th>
                                                            <th>Name</th>
                                                            <th>Email</th>

                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        @forelse ($X_TKJ as $item)
                                                            <tr>
                                                                <td>
                                                                    <div class="sort-handler">
                                                                        {{ $loop->iteration }}
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <img alt="image"
                                                                        src="{{ asset('img/' . $item->avatar) }}"
                                                                        class="rounded-circle" width="35"
                                                                        data-toggle="tooltip" title="Wildan Ahdian">
                                                                </td>
                                                                <td>{{ $item->name }}</td>
                                                                <td class="align-middle">
                                                                    {{ $item->email }}
                                                                </td>
                                                            </tr>

                                                        @empty
                                                            <div class="center">
                                                                <h1>Data Siswa Tidak ada</h1>
                                                            </div>

                                                        @endforelse


                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="tab-pane fade" id="X-TEI6" role="tabpanel"
                                                aria-labelledby="X-TEI-tab6">
                                                <table class="table table-striped" id="X_TEI">
                                                    <thead>
                                                        <tr>

                                                            <th>No</th>
                                                            <th>Photo</th>
                                                            <th>Name</th>
                                                            <th>Email</th>

                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        @forelse ($X_TEI as $item)
                                                            <tr>
                                                                <td>
                                                                    <div class="sort-handler">
                                                                        {{ $loop->iteration }}
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <img alt="image"
                                                                        src="{{ asset('img/' . $item->avatar) }}"
                                                                        class="rounded-circle" width="35"
                                                                        data-toggle="tooltip" title="Wildan Ahdian">
                                                                </td>
                                                                <td>{{ $item->name }}</td>
                                                                <td class="align-middle">
                                                                    {{ $item->email }}
                                                                </td>
                                                            </tr>

                                                        @empty
                                                            <div class="center">
                                                                <h1>Data Siswa Tidak ada</h1>
                                                            </div>

                                                        @endforelse


                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            Kelas 10
                        </div>
                        <div class="tab-pane fade" id="XI6" role="tabpanel" aria-labelledby="XI-tab6">
                            <div class="col-12 col-sm-12 col-lg-12 ">
                                <div class="card">
                                    <div class="card-header">
                                        <h4>Data Siswa <code>Kelas 11</code></h4>
                                    </div>
                                    <div class="card-body">
                                        <ul class="nav nav-tabs justify-content-center" id="myTab6" role="tablist">
                                            <li class="nav-item">
                                                <a class="nav-link active text-center" id="XI-RPL-tab6" data-toggle="tab"
                                                    href="#XI-RPL6" role="tab" aria-controls="home" aria-selected="true">
                                                    <span>
                                                        {{-- <i class="fas fa-home"></i> --}}
                                                    </span>RPL</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link text-center" id="XI-MM-tab6" data-toggle="tab"
                                                    href="#XI-MM6" role="tab" aria-controls="profile" aria-selected="false">
                                                    <span>
                                                        {{-- <i class="fas fa-id-card"></i> --}}
                                                    </span>MM</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link text-center" id="XI-BC-tab6" data-toggle="tab"
                                                    href="#XI-BC6" role="tab" aria-controls="contact" aria-selected="false">
                                                    <span>
                                                        {{-- <i class="fas fa-mail-bulk"></i> --}}
                                                    </span>BC</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link text-center" id="XI-TKJ-tab6" data-toggle="tab"
                                                    href="#XI-TKJ6" role="tab" aria-controls="contact"
                                                    aria-selected="false">
                                                    <span>
                                                        {{-- <i class="fas fa-mail-bulk"></i> --}}
                                                    </span>TKJ</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link text-center" id="XI-TEI-tab6" data-toggle="tab"
                                                    href="#XI-TEI6" role="tab" aria-controls="contact"
                                                    aria-selected="false">
                                                    <span>
                                                        {{-- <i class="fas fa-mail-bulk"></i> --}}
                                                    </span>TEI</a>
                                            </li>
                                        </ul>
                                        <div class="tab-content tab-bordered" id="myTabContent6">
                                            <div class="tab-pane fade show active" id="XI-RPL6" role="tabpanel"
                                                aria-labelledby="XI-RPL-tab6">

                                                <table class="table table-striped" id="XI_RPL">
                                                    <thead>
                                                        <tr>

                                                            <th>No</th>
                                                            <th>Photo</th>
                                                            <th>Name</th>
                                                            <th>Email</th>

                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        @forelse ($XI_RPL as $item)
                                                            <tr>
                                                                <td>
                                                                    <div class="sort-handler">
                                                                        {{ $loop->iteration }}
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <img alt="image"
                                                                        src="{{ asset('img/' . $item->avatar) }}"
                                                                        class="rounded-circle" width="35"
                                                                        data-toggle="tooltip" title="Wildan Ahdian">
                                                                </td>
                                                                <td>{{ $item->name }}</td>
                                                                <td class="align-middle">
                                                                    {{ $item->email }}
                                                                </td>
                                                            </tr>

                                                        @empty
                                                            <div class="center">
                                                                <h1>Data Siswa Tidak ada</h1>
                                                            </div>

                                                        @endforelse


                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="tab-pane fade" id="XI-MM6" role="tabpanel"
                                                aria-labelledby="XI-MM-tab6">

                                                <table class="table table-striped" id="XI_MM">
                                                    <thead>
                                                        <tr>

                                                            <th>No</th>
                                                            <th>Photo</th>
                                                            <th>Name</th>
                                                            <th>Email</th>

                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        @forelse ($XI_MM as $item)
                                                            <tr>
                                                                <td>
                                                                    <div class="sort-handler">
                                                                        {{ $loop->iteration }}
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <img alt="image"
                                                                        src="{{ asset('img/' . $item->avatar) }}"
                                                                        class="rounded-circle" width="35"
                                                                        data-toggle="tooltip" title="Wildan Ahdian">
                                                                </td>
                                                                <td>{{ $item->name }}</td>
                                                                <td class="align-middle">
                                                                    {{ $item->email }}
                                                                </td>
                                                            </tr>

                                                        @empty
                                                            <div class="center">
                                                                <h1>Data Siswa Tidak ada</h1>
                                                            </div>

                                                        @endforelse


                                                        </tr>
                                                    </tbody>
                                                </table>

                                            </div>
                                            <div class="tab-pane fade" id="XI-BC6" role="tabpanel"
                                                aria-labelledby="XI-BC-tab6">
                                                <table class="table table-striped" id="XI_BC">
                                                    <thead>
                                                        <tr>

                                                            <th>No</th>
                                                            <th>Photo</th>
                                                            <th>Name</th>
                                                            <th>Email</th>

                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        @forelse ($XI_BC as $item)
                                                            <tr>
                                                                <td>
                                                                    <div class="sort-handler">
                                                                        {{ $loop->iteration }}
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <img alt="image"
                                                                        src="{{ asset('img/' . $item->avatar) }}"
                                                                        class="rounded-circle" width="35"
                                                                        data-toggle="tooltip" title="Wildan Ahdian">
                                                                </td>
                                                                <td>{{ $item->name }}</td>
                                                                <td class="align-middle">
                                                                    {{ $item->email }}
                                                                </td>
                                                            </tr>

                                                        @empty
                                                            <div class="center">
                                                                <h1>Data Siswa Tidak ada</h1>
                                                            </div>

                                                        @endforelse


                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="tab-pane fade" id="XI-TKJ6" role="tabpanel"
                                                aria-labelledby="XI-TKJ-tab6">
                                                <table class="table table-striped" id="XI_TKJ">
                                                    <thead>
                                                        <tr>

                                                            <th>No</th>
                                                            <th>Photo</th>
                                                            <th>Name</th>
                                                            <th>Email</th>

                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        @forelse ($XI_TKJ as $item)
                                                            <tr>
                                                                <td>
                                                                    <div class="sort-handler">
                                                                        {{ $loop->iteration }}
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <img alt="image"
                                                                        src="{{ asset('img/' . $item->avatar) }}"
                                                                        class="rounded-circle" width="35"
                                                                        data-toggle="tooltip" title="Wildan Ahdian">
                                                                </td>
                                                                <td>{{ $item->name }}</td>
                                                                <td class="align-middle">
                                                                    {{ $item->email }}
                                                                </td>
                                                            </tr>

                                                        @empty
                                                            <div class="center">
                                                                <h1>Data Siswa Tidak ada</h1>
                                                            </div>

                                                        @endforelse


                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="tab-pane fade" id="XI-TEI6" role="tabpanel"
                                                aria-labelledby="XI-TEI-tab6">
                                                <table class="table table-striped" id="XI_TEI">
                                                    <thead>
                                                        <tr>

                                                            <th>No</th>
                                                            <th>Photo</th>
                                                            <th>Name</th>
                                                            <th>Email</th>

                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        @forelse ($XI_TEI as $item)
                                                            <tr>
                                                                <td>
                                                                    <div class="sort-handler">
                                                                        {{ $loop->iteration }}
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <img alt="image"
                                                                        src="{{ asset('img/' . $item->avatar) }}"
                                                                        class="rounded-circle" width="35"
                                                                        data-toggle="tooltip" title="Wildan Ahdian">
                                                                </td>
                                                                <td>{{ $item->name }}</td>
                                                                <td class="align-middle">
                                                                    {{ $item->email }}
                                                                </td>
                                                            </tr>

                                                        @empty
                                                            <div class="center">
                                                                <h1>Data Siswa Tidak ada</h1>
                                                            </div>

                                                        @endforelse


                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            Kelas 11

                        </div>
                        <div class="tab-pane fade" id="XII6" role="tabpanel" aria-labelledby="XII-tab6">
                            <div class="col-12 col-sm-12 col-lg-12 ">
                                <div class="card">
                                    <div class="card-header">
                                        <h4>Data Siswa <code>Kelas 12</code></h4>
                                    </div>
                                    <div class="card-body">
                                        <ul class="nav nav-tabs justify-content-center" id="myTab6" role="tablist">
                                            <li class="nav-item">
                                                <a class="nav-link active text-center" id="XII-RPL-tab6" data-toggle="tab"
                                                    href="#XII-RPL6" role="tab" aria-controls="home" aria-selected="true">
                                                    <span>
                                                        {{-- <i class="fas fa-home"></i> --}}
                                                    </span>RPL
                                                </a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link text-center" id="XII-MM-tab6" data-toggle="tab"
                                                    href="#XII-MM6" role="tab" aria-controls="profile"
                                                    aria-selected="false">
                                                    <span>
                                                        {{-- <i class="fas fa-id-card"></i> --}}
                                                    </span>MM
                                                </a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link text-center" id="XII-BC-tab6" data-toggle="tab"
                                                    href="#XII-BC6" role="tab" aria-controls="contact"
                                                    aria-selected="false">
                                                    <span>
                                                        {{-- <i class="fas fa-mail-bulk"></i> --}}
                                                    </span>BC
                                                </a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link text-center" id="XII-TKJ-tab6" data-toggle="tab"
                                                    href="#XII-TKJ6" role="tab" aria-controls="contact"
                                                    aria-selected="false">
                                                    <span>
                                                        {{-- <i class="fas fa-mail-bulk"></i> --}}
                                                    </span>TKJ
                                                </a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link text-center" id="XII-TEI-tab6" data-toggle="tab"
                                                    href="#XII-TEI6" role="tab" aria-controls="contact"
                                                    aria-selected="false">
                                                    <span>
                                                        {{-- <i class="fas fa-mail-bulk"></i> --}}
                                                    </span>TEI
                                                </a>
                                            </li>
                                        </ul>
                                        <div class="tab-content tab-bordered" id="myTabContent6">
                                            <div class="tab-pane fade show active" id="XII-RPL6" role="tabpanel"
                                                aria-labelledby="XII-RPL-tab6">
                                                <table class="table table-striped" id="XII_RPL">
                                                    <thead>
                                                        <tr>

                                                            <th>No</th>
                                                            <th>Photo</th>
                                                            <th>Name</th>
                                                            <th>Email</th>

                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        @forelse ($XII_RPL as $item)
                                                            <tr>
                                                                <td>
                                                                    <div class="sort-handler">
                                                                        {{ $loop->iteration }}
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <img alt="image"
                                                                        src="{{ asset('img/' . $item->avatar) }}"
                                                                        class="rounded-circle" width="35"
                                                                        data-toggle="tooltip" title="Wildan Ahdian">
                                                                </td>
                                                                <td>{{ $item->name }}</td>
                                                                <td class="align-middle">
                                                                    {{ $item->email }}
                                                                </td>
                                                            </tr>

                                                        @empty
                                                            <div class="center">
                                                                <h1>Data Siswa Tidak ada</h1>
                                                            </div>

                                                        @endforelse


                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="tab-pane fade" id="XII-MM6" role="tabpanel"
                                                aria-labelledby="XII-MM-tab6">

                                                <table class="table table-striped" id="XII_MM">
                                                    <thead>
                                                        <tr>

                                                            <th>No</th>
                                                            <th>Photo</th>
                                                            <th>Name</th>
                                                            <th>Email</th>

                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        @forelse ($XII_MM as $item)
                                                            <tr>
                                                                <td>
                                                                    <div class="sort-handler">
                                                                        {{ $loop->iteration }}
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <img alt="image"
                                                                        src="{{ asset('img/' . $item->avatar) }}"
                                                                        class="rounded-circle" width="35"
                                                                        data-toggle="tooltip" title="Wildan Ahdian">
                                                                </td>
                                                                <td>{{ $item->name }}</td>
                                                                <td class="align-middle">
                                                                    {{ $item->email }}
                                                                </td>
                                                            </tr>

                                                        @empty
                                                            <div class="center">
                                                                <h1>Data Siswa Tidak ada</h1>
                                                            </div>

                                                        @endforelse


                                                        </tr>
                                                    </tbody>
                                                </table>

                                            </div>
                                            <div class="tab-pane fade" id="XII-BC6" role="tabpanel"
                                                aria-labelledby="XII-BC-tab6">
                                                <table class="table table-striped" id="XII_BC">
                                                    <thead>
                                                        <tr>

                                                            <th>No</th>
                                                            <th>Photo</th>
                                                            <th>Name</th>
                                                            <th>Email</th>

                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        @forelse ($XII_BC as $item)
                                                            <tr>
                                                                <td>
                                                                    <div class="sort-handler">
                                                                        {{ $loop->iteration }}
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <img alt="image"
                                                                        src="{{ asset('img/' . $item->avatar) }}"
                                                                        class="rounded-circle" width="35"
                                                                        data-toggle="tooltip" title="Wildan Ahdian">
                                                                </td>
                                                                <td>{{ $item->name }}</td>
                                                                <td class="align-middle">
                                                                    {{ $item->email }}
                                                                </td>
                                                            </tr>

                                                        @empty
                                                            <div class="center">
                                                                <h1>Data Siswa Tidak ada</h1>
                                                            </div>

                                                        @endforelse


                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="tab-pane fade" id="XII-TKJ6" role="tabpanel"
                                                aria-labelledby="XII-TKJ-tab6">
                                                <table class="table table-striped" id="XII_TKJ">
                                                    <thead>
                                                        <tr>

                                                            <th>No</th>
                                                            <th>Photo</th>
                                                            <th>Name</th>
                                                            <th>Email</th>

                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        @forelse ($XII_TKJ as $item)
                                                            <tr>
                                                                <td>
                                                                    <div class="sort-handler">
                                                                        {{ $loop->iteration }}
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <img alt="image"
                                                                        src="{{ asset('img/' . $item->avatar) }}"
                                                                        class="rounded-circle" width="35"
                                                                        data-toggle="tooltip" title="Wildan Ahdian">
                                                                </td>
                                                                <td>{{ $item->name }}</td>
                                                                <td class="align-middle">
                                                                    {{ $item->email }}
                                                                </td>
                                                            </tr>

                                                        @empty
                                                            <div class="center">
                                                                <h1>Data Siswa Tidak ada</h1>
                                                            </div>

                                                        @endforelse


                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="tab-pane fade" id="XII-TEI6" role="tabpanel"
                                                aria-labelledby="XII-TEI-tab6">
                                                <table class="table table-striped" id="XII_TEI">
                                                    <thead>
                                                        <tr>

                                                            <th>No</th>
                                                            <th>Photo</th>
                                                            <th>Name</th>
                                                            <th>Email</th>

                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        @forelse ($XII_TEI as $item)
                                                            <tr>
                                                                <td>
                                                                    <div class="sort-handler">
                                                                        {{ $loop->iteration }}
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <img alt="image"
                                                                        src="{{ asset('img/' . $item->avatar) }}"
                                                                        class="rounded-circle" width="35"
                                                                        data-toggle="tooltip" title="Wildan Ahdian">
                                                                </td>
                                                                <td>{{ $item->name }}</td>
                                                                <td class="align-middle">
                                                                    {{ $item->email }}
                                                                </td>
                                                            </tr>

                                                        @empty
                                                            <div class="center">
                                                                <h1>Data Siswa Tidak ada</h1>
                                                            </div>

                                                        @endforelse


                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            Kelas 12
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    {{-- @elseif (Route::is('dashboard.manager')) --}}

@elseif(JWTAuth::user()->role->name == 'manager')
    <div class="row">
        <div class="col">
            <div class="card card-info profile-widget">
                <div class="profile-widget-header">
                    @if (File::exists(public_path(Auth::user()->avatar)))
                    <img alt="image" src="{{ asset(Auth::user()->avatar) }}"
                        class="rounded-circle profile-widget-picture">
                @else
                    <img alt="image" src="{{ asset('img/avatar/avatar-1.png') }}"
                        class="rounded-circle profile-widget-picture">
                    @endif
                    <div class="profile-widget-items">
                        <div class="profile-widget-item">
                            <div class="profile-widget-item-label">NIK</div>
                            <div class="profile-widget-item-value">
                                {{ JWTAuth::user()->nomor_induk }}</div>
                        </div>
                        <div class="profile-widget-item">
                            <div class="profile-widget-item-label">Email</div>
                            <div class="profile-widget-item-value">
                                {{ JWTAuth::user()->email }}</div>
                        </div>
                    </div>
                </div>
                <div class="profile-widget-description">
                    <div class="profile-widget-name">
                        <span class="h3 font-weight-bold">
                            {{ JWTAuth::user()->name }}
                            <div class="slash"></div>
                            <div class="text-muted d-inline font-weight-normal">
                                <div class="badge badge-primary">
                                    {{ JWTAuth::user()->jabatan_guru }}
                                </div>
                            </div>
                        </span>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <div class="mb-3">
                    <h1 class="section-title">WEB App Instansi SMK Taruna Bhakti
                    </h1>
                </div>
                <div class="container">
                    <div class="row">
                        <div class="col-md-4 d-flex mb-3">
                            <a href="" class="text-decoration-none" id="microWebPortal">
                                <div class="card h-100">
                                    <div class=" text-white py-5 px-4" style="background-color: rgb(43, 214, 43)">
                                        <i class="fas fa-chalkboard-teacher big-icon"></i>
                                        <h3>Portal SMK Taruna Bhakti</h3>
                                    </div>
                                    <div class="card-body flex-fill">
                                        <p class="card-text text-dark">Portal yang dapat digunakan untuk
                                            pembelajaran,
                                            pengerjaan dan pengiriman Tugas.</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-md-4 d-flex mb-3">
                            <a href="" class="text-decoration-none" id="sitakols">
                                <div class="card h-100">
                                    <div class="bg-warning text-white py-5 px-4">
                                        <i class="fas fa-briefcase big-icon"></i>
                                        <h3>Sitakols SMK Taruna Bhakti</h3>
                                    </div>
                                    <div class="card-body flex-fill">
                                        <p class="card-text text-dark">Sitakols adalah aplikasi yang digunakan
                                            untuk keperluan surat menyurat dan magang.</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-md-4 d-flex mb-3">
                            <a href="" class="text-decoration-none" id="refleksi">
                                <div class="card h-100">
                                    <div class="bg-info text-white py-5 px-4">
                                        <i class="fas fa-clipboard big-icon"></i>
                                        <h3>Refleksi Mengajar
                                            SMK Taruna Bhakti</h3>
                                    </div>
                                    <div class="card-body flex-fill">
                                        <p class="card-text text-dark">Refleksi mengajar yang berfungsi untuk
                                            merekap pembelajaran jarak jauh (PJJ)</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <h2 class="section-title">
                Artikel Anda
            </h2>
            <a class="btn btn-primary" href="{{ route('article.tambah') }}">
                <i class="fa fa-plus fa-lg"></i> Tambah Artikel
            </a>
            <div class="card mt-3">
                <div class="card-body">
                    <div class="table-responsive">
                        @if (count($article) == 0)
                            <div class="text-center">
                                <h1 class="h3 text-danger p-3 my-0">
                                    <i class="fa fa-exclamation-circle fa-lg"></i> Anda belum membuat Artikel
                                </h1>
                            </div>
                        @else
                            <table id="tableArtikel" class="table dataTable">
                                <thead>
                                    <tr role="row">
                                        <th scope="col">Judul</th>
                                        <th scope="col">Kategori</th>
                                        <th scope="col">Waktu dan Tanggal dibuat</th>
                                        <th scope="col">Status</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($article as $item)
                                        <tr>
                                            {{-- <td>
                                                    <img style="width: 200px; height:200px;"
                                                        class=""
                                                        src="
                                                        {{ asset('article-img/' . $item->image) }}" alt="">
                                                </td> --}}
                                            <td>{{ $item->title }}
                                                <div class="table-links d-flex align-items-center">
                                                    <a href="{{ route('showartikel', $item->slug) }}">View</a>
                                                    <div class="bullet"></div>
                                                    <a href="{{ route('article.edit', $item->id) }}">Edit</a>
                                                    <div class="bullet"></div>
                                                    <form id="deleteForm"
                                                        action="{{ route('article.delete', $item->id) }}" method="POST">
                                                        @method('delete')
                                                        @csrf
                                                        <button type="submit" class="btn px-0 deleteConfirm">
                                                            <a class="text-danger">Delete</a>
                                                        </button>
                                                    </form>

                                                </div>
                                            </td>
                                            <td>
                                                {{ $item->category->name }}
                                            </td>
                                            <td>
                                                {{ Carbon\Carbon::parse($item->created_at)->format('H:i') }}
                                                <br>
                                                {{ Carbon\Carbon::parse($item->created_at)->isoFormat('dddd, D MMMM Y') }}
                                            </td>
                                            <td>
                                                <div class="dropdown d-inline">
                                                    @if ($item->status == 'DRAFT')
                                                        <button class="btn btn-warning dropdown-toggle" type="button"
                                                            id="dropdownMenuButton2" data-toggle="dropdown"
                                                            aria-haspopup="true" aria-expanded="false">
                                                            {{ $item->status }}
                                                        </button>
                                                    @else
                                                        <button class="btn btn-primary dropdown-toggle" type="button"
                                                            id="dropdownMenuButton2" data-toggle="dropdown"
                                                            aria-haspopup="true" aria-expanded="false">
                                                            {{ $item->status }}
                                                        </button>
                                                    @endif
                                                    <div class="dropdown-menu" x-placement="bottom-start"
                                                        style="position: absolute; transform: translate3d(0px, 28px, 0px); top: 0px; left: 0px; will-change: transform;">
                                                        <form action="{{ route('article.draft', $item->id) }}"
                                                            method="POST">
                                                            @method('PUT')
                                                            @csrf
                                                            @if ($item->status == 'PUBLISHED')
                                                                <button type="submit" class="dropdown-item has-icon">
                                                                    <a
                                                                        class="text-dark d-flex align-items-center text-decoration-none">
                                                                        <i class="fa fa-edit text-warning"></i>
                                                                        Draft</a>
                                                                </button>
                                                            @else
                                                                <button type="submit" class="dropdown-item has-icon">
                                                                    <a
                                                                        class="text-dark d-flex align-items-center text-decoration-none">
                                                                        <i class="fa fa-upload text-primary"></i>
                                                                        Publish</a>
                                                                </button>
                                                            @endif
                                                        </form>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>
@elseif (JWTAuth::user()->role->name == 'perusahaan')
    <div class="row">
        <div class="col">
            <div class="card card-info profile-widget">
                <div class="profile-widget-header">
                    <img alt="image" src="{{ asset(Auth::user()->avatar) }}"
                        class="rounded-circle profile-widget-picture">
                    <div class="profile-widget-items">
                        <div class="profile-widget-item">
                            <div class="profile-widget-item-label">ID</div>
                            <div class="profile-widget-item-value">
                                {{ JWTAuth::user()->nomor_induk }}</div>
                        </div>
                        <div class="profile-widget-item">
                            <div class="profile-widget-item-label">Email</div>
                            <div class="profile-widget-item-value">
                                {{ JWTAuth::user()->email }}</div>
                        </div>
                    </div>
                </div>
                <div class="profile-widget-description">
                    <div class="profile-widget-name">{{ JWTAuth::user()->name }}
                        <div class="text-muted d-inline font-weight-normal">
                            <div class="slash"></div>
                            <div class="badge badge-primary">
                                {{ JWTAuth::user()->jabatan_guru }}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="mb-3">
            <h1 class="section-title">Data Siswa <code>Kelas XII</code>
            </h1>
        </div>
        <div class="col-12 col-sm-12 col-lg-12 ">
            <div class="card">
                <div class="card-header">
                    <form class="card-header-form">
                        <input type="text" name="search" class="form-control" placeholder="Cari">
                    </form>
                </div>
                <div class="card-body">
                    <ul class="nav nav-tabs justify-content-center" id="myTab6" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active text-center" id="XII-RPL-tab6" data-toggle="tab" href="#XII-RPL6"
                                role="tab" aria-controls="home" aria-selected="true">
                                <span>
                                    {{-- <i class="fas fa-home"></i> --}}
                                </span>RPL
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-center" id="XII-MM-tab6" data-toggle="tab" href="#XII-MM6" role="tab"
                                aria-controls="profile" aria-selected="false">
                                <span>
                                    {{-- <i class="fas fa-id-card"></i> --}}
                                </span>MM
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-center" id="XII-BC-tab6" data-toggle="tab" href="#XII-BC6" role="tab"
                                aria-controls="contact" aria-selected="false">
                                <span>
                                    {{-- <i class="fas fa-mail-bulk"></i> --}}
                                </span>BC
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-center" id="XII-TKJ-tab6" data-toggle="tab" href="#XII-TKJ6" role="tab"
                                aria-controls="contact" aria-selected="false">
                                <span>
                                    {{-- <i class="fas fa-mail-bulk"></i> --}}
                                </span>TKJ
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-center" id="XII-TEI-tab6" data-toggle="tab" href="#XII-TEI6" role="tab"
                                aria-controls="contact" aria-selected="false">
                                <span>
                                    {{-- <i class="fas fa-mail-bulk"></i> --}}
                                </span>TEI
                            </a>
                        </li>
                    </ul>
                    <div class="tab-content tab-bordered" id="myTabContent6">
                        <div class="tab-pane fade show active" id="XII-RPL6" role="tabpanel"
                            aria-labelledby="XII-RPL-tab6">
                            <div class="row">
                                {{-- @forelse ($XI_RPL as $item)
                                            <tr>
                                                <td>
                                                    <div class="sort-handler">
                                                        {{ $loop->iteration }}
                                                    </div>
                                                </td>
                                                <td>
                                                    <img alt="image" src="{{ asset('img/' . $item->avatar) }}"
                                                        class="rounded-circle" width="35" data-toggle="tooltip"
                                                        title="Wildan Ahdian">
                                                </td>
                                                <td>{{ $item->name }}</td>
                                                <td class="align-middle">
                                                    {{ $item->email }}
                                                </td>
                                            </tr>
                                        @empty
                                            <div class="center">
                                                <h1>Data Siswa Tidak ada</h1>
                                            </div>
                                        @endforelse --}}
                                <div class="col-md-4">
                                    <div class="card">
                                        <div class="card-header">
                                            <h4>{{ JWTAuth::user()->name }}
                                                <br>
                                                <span style="font-size: 14px; font-weight: lighter">Web
                                                    Developer</span>
                                            </h4>
                                            <div class="card-header-action">
                                                <div class="dropdown d-inline">
                                                    <button class="btn btn-primary dropdown-toggle" type="button"
                                                        id="dropdownMenuButton2" data-toggle="dropdown" aria-haspopup="true"
                                                        aria-expanded="false">
                                                        Opsi
                                                    </button>
                                                    <div class="dropdown-menu" x-placement="bottom-start"
                                                        style="position: absolute; transform: translate3d(0px, 28px, 0px); top: 0px; left: 0px; will-change: transform;">
                                                        <a class="dropdown-item has-icon" href="#"><i
                                                                class="far fa-heart"></i> Action</a>
                                                        <a class="dropdown-item has-icon" href="#"><i
                                                                class="far fa-file"></i> Another action</a>
                                                        <a class="dropdown-item has-icon" href="#"><i
                                                                class="far fa-clock"></i> Something else here</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card-body">
                                            <div class="mb-2">
                                                <strong>XII RPL 1</strong>
                                            </div>
                                            <blockquote class="blockquote">
                                                <p class="mb-0">Saya senang ngoding.</p>
                                            </blockquote>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="XII-MM6" role="tabpanel" aria-labelledby="XII-MM-tab6">

                        </div>
                        <div class="tab-pane fade" id="XII-BC6" role="tabpanel" aria-labelledby="XII-BC-tab6">

                        </div>
                        <div class="tab-pane fade" id="XII-TKJ6" role="tabpanel" aria-labelledby="XII-TKJ-tab6">

                        </div>
                        <div class="tab-pane fade" id="XII-TEI6" role="tabpanel" aria-labelledby="XII-TEI-tab6">

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    @endif
@endsection

@push('css')
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.24/css/dataTables.bootstrap4.min.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.1.7/dist/sweetalert2.all.min.js"></script>
    <style>
        .cardh {
            transition: 0.4s ease-out;
        }

        .cardh:hover {
            transform: translateY(-20px);
            transition: 0.4s ease-out;
        }

        .cardh:hover~.cardh {
            position: relative;
            left: 50px;
            transition: 0.4s ease-out;
        }

    </style>

@endpush

@push('js')
    <script src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.24/js/dataTables.bootstrap4.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.1.7/dist/sweetalert2.all.min.js"></script>
    <script>
        $("#tableArtikel").dataTable({

        });
        $('.deleteConfirm').on('click', function(e) {
            e.preventDefault();
            let id = $(this).data('id');
            Swal.fire({
                title: 'Apakah anda yakin ingin menghapus?',
                text: "Artikel yang Anda hapus tidak dapat dipulihkan.",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#fb160a ',
                cancelButtonColor: '##cdd3d8',
                confirmButtonText: 'Hapus',
                cancelButtonText: 'Batal',
            }).then((result) => {
                if (result.isConfirmed) {
                    $('#deleteForm').submit();
                }
            })
        });
    </script>
@endpush

@push('script')
    <script>
        ClassicEditor
            .create(document.querySelector('#task-textarea'))
            .catch(error => {
                console.error(error);
            });

        // ClassicEditor
        // .create( document.querySelector( '#task-' ) )
        // .catch( error => {
        //     console.error( error );
        // } );
    </script>

    <script>
        $(document).ready(function() {
            $('.select2').select2({
                closeOnSelect: false
            });
            $('#X_RPL').DataTable();
            $('#X_MM').DataTable();
            $('#X_BC').DataTable();
            $('#X_TKJ').DataTable();
            $('#X_TEI').DataTable();

            $('#XI_RPL').DataTable();
            $('#XI_MM').DataTable();
            $('#XI_BC').DataTable();
            $('#XI_TKJ').DataTable();
            $('#XI_TEI').DataTable();

            $('#XII_RPL').DataTable();
            $('#XII_MM').DataTable();
            $('#XII_BC').DataTable();
            $('#XII_TKJ').DataTable();
            $('#XII_TEI').DataTable();
        });
    </script>
@endpush
