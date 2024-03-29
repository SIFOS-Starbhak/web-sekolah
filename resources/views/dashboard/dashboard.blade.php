<meta name="csrf-token" content="{{ csrf_token() }}">
@extends('layouts.app')
@section('title', 'Dashboard')

@section('main')
    {{-- @if (JWTAuth::user()->role->name == 'siswa') --}}
    @if (Route::is('dashboard.siswa'))
        <div class="row">
            <div class="col">
                <div class="card profile-widget">
                    <div class="profile-widget-header">
                        @if (File::exists(public_path(Auth::user()->avatar)))
                        <img class="rounded-circle profile-widget-picture" alt="image"
                            src="{{ asset(Auth::user()->avatar) }}">
                    @else
                        <img class="rounded-circle profile-widget-picture" alt="image"
                            src="{{ asset('img/avatar/avatar-1.png') }}">
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
                        {{ empty(JWTAuth::user()->kelas->nama_kelas) ? 'Belum ada kelas' : JWTAuth::user()->kelas->nama_kelas }}
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

    {{-- @elseif (JWTAuth::user()->role->name == 'guru') --}}
@elseif (Route::is('dashboard.guru'))
    <div class="row">
        <div class="col">
            <div class="card profile-widget">
                <div class="profile-widget-header">
                    @if (File::exists(public_path(Auth::user()->avatar)))
                    <img class="rounded-circle profile-widget-picture" style="height: 150px;" alt="image"
                        src="{{ asset(Auth::user()->avatar) }}">
                @else
                    <img class="rounded-circle profile-widget-picture" alt="image"
                        src="{{ asset('img/avatar/avatar-1.png') }}">
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
                                    @if (JWTAuth::user()->spesifc_role == 'admin')
                                        Admin
                                    @elseif(JWTAuth::user()->spesifc_role == 'litbang')
                                        litbang
                                    @elseif(JWTAuth::user()->spesifc_role == 'tu')
                                        TU
                                    @elseif(JWTAuth::user()->spesifc_role == 'kaprog')
                                        Kepala Program
                                    @elseif(JWTAuth::user()->spesifc_role == 'kepsek')
                                        Kepala Sekolah
                                    @elseif(JWTAuth::user()->spesifc_role == 'waka')
                                        Wakil Kepala Sekolah
                                    @elseif(JWTAuth::user()->spesifc_role == 'bkk')
                                        BKK
                                    @elseif(JWTAuth::user()->spesifc_role == 'kurikulum')
                                        Kurikulum
                                    @elseif(JWTAuth::user()->spesifc_role == 'kesiswaan')
                                        Kesiswaan
                                    @elseif(JWTAuth::user()->spesifc_role == 'sarpras')
                                        Sarana Prasarana
                                    @elseif(JWTAuth::user()->spesifc_role == 'Kejuruan')
                                        Kejuruan
                                    @elseif(JWTAuth::user()->spesifc_role == 'hubin')
                                        Hubin
                                    @elseif(JWTAuth::user()->spesifc_role == 'panitia')
                                        Panitia
                                    @else
                                        None
                                    @endif

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

        <div class="col-md-4 d-flex mb-3">
            <a href="#" class="text-decoration-none">
                <div class="card h-100">
                    <div class="bg-info text-white py-5 px-4" style="background-color: rgb(0, 229, 255)">
                        <i class="fas fa-clipboard big-icon"></i>
                        <h3>Administrasi Guru</h3>
                    </div>
                    <div class="card-body flex-fill">
                        <p class="card-text text-dark">administrasi Guru</p>
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
            <div class="card">
                <div class="card-body">
                    <table id="tableArtikel" class="table dataTable no-footer">
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

                                                <table class="table table-striped tble" id="X_MM">
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

@elseif (Route::is('dashboard.manager'))
    {{-- @elseif(JWTAuth::user()->role->name == 'manager') --}}
    <div class="row">
        <div class="col">
            <div class="card card-info profile-widget">
                <div class="profile-widget-header">
                    @if (File::exists(public_path(Auth::user()->avatar)))
                    <img class="rounded-circle profile-widget-picture" style="height: 150px;" alt="image"
                        src="{{ asset(Auth::user()->avatar) }}">
                @else
                    <img class="rounded-circle profile-widget-picture" alt="image"
                        src="{{ asset('img/avatar/avatar-1.png') }}">
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
                                    @if (JWTAuth::user()->spesifc_role == 'admin')
                                        Admin
                                    @elseif(JWTAuth::user()->spesifc_role == 'litbang')
                                        litbang
                                    @elseif(JWTAuth::user()->spesifc_role == 'tu')
                                        TU
                                    @elseif(JWTAuth::user()->spesifc_role == 'kaprog')
                                        Kepala Program
                                    @elseif(JWTAuth::user()->spesifc_role == 'kepsek')
                                        Kepala Sekolah
                                    @elseif(JWTAuth::user()->spesifc_role == 'waka')
                                        Wakil Kepala Sekolah
                                    @elseif(JWTAuth::user()->spesifc_role == 'bkk')
                                        BKK
                                    @elseif(JWTAuth::user()->spesifc_role == 'kurikulum')
                                        Kurikulum
                                    @elseif(JWTAuth::user()->spesifc_role == 'kesiswaan')
                                        Kesiswaan
                                    @elseif(JWTAuth::user()->spesifc_role == 'sarpras')
                                        Sarana Prasarana
                                    @elseif(JWTAuth::user()->spesifc_role == 'Kejuruan')
                                        Kejuruan
                                    @elseif(JWTAuth::user()->spesifc_role == 'hubin')
                                        Hubin
                                    @elseif(JWTAuth::user()->spesifc_role == 'panitia')
                                        Panitia
                                    @else
                                        None
                                    @endif
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
                                                    <form id="deleteForm{{ $item->id }}"
                                                        action="{{ route('article.delete', $item->id) }}" method="POST">
                                                        @method('delete')
                                                        @csrf
                                                        <button type="submit" class="btn px-0 deleteConfirm"
                                                            data-id={{ $item->id }}>
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
@elseif (Route::is('dashboard.perusahaan'))

    {{-- @elseif (JWTAuth::user()->role->name == 'perusahaan') --}}
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
                            {{-- <div class="slash"></div>
                            <div class="badge badge-primary">
                                {{ JWTAuth::user()->jabatan_guru }}
                            </div> --}}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    {{-- {{dd($XII_RPL)}} --}}

    <div class="row">
        <div class="mb-3">
            <h1 class="section-title">Data Siswa <code>Kelas XII</code>
            </h1>
        </div>
        <div class="col-12 col-sm-12 col-lg-12 ">
            <div class="card">
                {{-- <div class="card-header">
                    <form class="card-header-form">
                        <input type="text" style="font-size: 15px; font-weight: 600;" name="search" class="form-control" placeholder="Cari">
                    </form>
                </div> --}}
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
                                @forelse ($XII_RPL as $item)
                                    <div class="col-md-4">
                                        <div class="card">
                                            <div class="card-header">
                                                <div class="row">
                                                    <div class="col-9">
                                                        @if (File::exists(public_path($item->avatar)))
                                                            <img alt="image" src="{{ asset($item->avatar) }}"
                                                                style="width: 150px; height: 150px; border-radius: 50%;">
                                                            <br>
                                                        @else
                                                            <img alt="image"
                                                                src="{{ asset('img/avatar/avatar-1.png') }}"
                                                                style="width: 150px; height: 150px; border-radius: 50%;">
                                                            <br>
                                                        @endif

                                                        <h4 class="mt-3">{{ $item->name }}
                                                            <br>
                                                            <span style="font-size: 14px; font-weight: lighter"></span>
                                                        </h4>

                                                    </div>
                                                    <div class="col-3">
                                                        <div class="card-header-action">
                                                            <div class="dropdown d-inline">
                                                                <button class="btn btn-secondary dropdown-toggle"
                                                                    type="button" id="dropdownMenuButton2"
                                                                    data-toggle="dropdown" aria-haspopup="true"
                                                                    aria-expanded="false">
                                                                    Option
                                                                </button>
                                                                <div class="dropdown-menu" x-placement="bottom-start"
                                                                    style="position: absolute; transform: translate3d(0px, 28px, 0px); top: 0px; left: 0px; will-change: transform;">
                                                                    <a class="dropdown-item has-icon"
                                                                        href="{{ route('detail.profile', $item->id) }}"><i
                                                                            class="fas fa-search"></i> Detail Profile</a>

                                                                    @if ($item->detailUser == null || $item->detailUser->cv == null)
                                                                        <a class="dropdown-item has-icon " disabled> Belum
                                                                            punya CV</a>
                                                                    @else
                                                                        <a class="dropdown-item has-icon"
                                                                            href="{{ route('stream.cv', $item->id) }}"><i
                                                                                class="fas fa-file"></i> View CV</a>


                                                                    @endif
                                                                    {{-- <a class="dropdown-item has-icon" href="#"><i
                                                                                class="far fa-clock"></i> Something else here</a> --}}
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                <div id="accordion">
                                                    <div class="card">
                                                        <div class="card-header" id="headingOne">
                                                            <h5 class="mb-0">
                                                                <button style="text-decoration: none;"
                                                                    class="btn btn-primary" data-toggle="collapse"
                                                                    data-target="#collapseOne{{ $loop->iteration }}"
                                                                    aria-expanded="true"
                                                                    aria-controls="collapseOne{{ $loop->iteration }}">
                                                                    Skill
                                                                </button>
                                                            </h5>
                                                        </div>

                                                        <div id="collapseOne{{ $loop->iteration }}"
                                                            class="collapse" aria-labelledby="headingOne"
                                                            data-parent="#accordion">
                                                            <div class="card-body">
                                                                @if ($item->detailUser == null || $item->detailUser->skill == null)
                                                                    Belum ada skill

                                                                @else
                                                                    @php
                                                                        $detailProfileSkill = explode(',', $item->detailUser->skill);
                                                                        foreach ($detailProfileSkill as $key => $value) {
                                                                            $yourSkill[] = App\Models\Skill::where('id', $value)->first();
                                                                        }
                                                                    @endphp
                                                                    @foreach ($yourSkill as $item)
                                                                        <a style="cursor: pointer;"
                                                                            class="badge badge-primary ">{{ $item->nama_skill }}</a>

                                                                    @endforeach

                                                                @endif
                                                            </div>
                                                        </div>
                                                    </div>


                                                </div>
                                                {{-- <div class="mb-2">
                                                    <strong>{{$item->kelas->nama_kelas}}</strong>
                                                </div>
                                                <blockquote class="blockquote">
                                                        @if ($item->detailUser == null || $item->detailUser->bio == null)
                                                            <i>Tidak memiliki Bio</i>
                                                        @else
                                                    <p class="mb-0">{{Str::words($item->detailUser->bio,8)}}</p>
                                                         

                                                        @endif
                                                </blockquote> --}}

                                            </div>
                                        </div>
                                    </div>
                                @empty
                                    <h5>
                                        "Tidak ada data siswa"
                                    </h5>
                                @endforelse


                            </div>
                            <div class="d-flex justify-content-center">
                                {!! $XII_RPL->links() !!}
                            </div>
                        </div>
                        <div class="tab-pane fade" id="XII-MM6" role="tabpanel" aria-labelledby="XII-MM-tab6">
                            <div class="row">
                                @forelse ($XII_MM as $item)
                                    <div class="col-md-4">
                                        <div class="card">
                                            <div class="card-header">
                                                <div class="row">
                                                    <div class="col-9">
                                                        @if (File::exists(public_path($item->avatar)))
                                                            <img alt="image" src="{{ asset($item->avatar) }}"
                                                                style="width: 150px; height: 150px; border-radius: 50%;">
                                                            <br>
                                                        @else
                                                            <img alt="image"
                                                                src="{{ asset('img/avatar/avatar-1.png') }}"
                                                                style="width: 150px; height: 150px; border-radius: 50%;">
                                                            <br>
                                                        @endif

                                                        <h4 class="mt-3">{{ $item->name }}
                                                            <br>
                                                            <span style="font-size: 14px; font-weight: lighter"></span>
                                                        </h4>

                                                    </div>
                                                    <div class="col-3">
                                                        <div class="card-header-action">
                                                            <div class="dropdown d-inline">
                                                                <button class="btn btn-secondary dropdown-toggle"
                                                                    type="button" id="dropdownMenuButton2"
                                                                    data-toggle="dropdown" aria-haspopup="true"
                                                                    aria-expanded="false">
                                                                    Option
                                                                </button>
                                                                <div class="dropdown-menu" x-placement="bottom-start"
                                                                    style="position: absolute; transform: translate3d(0px, 28px, 0px); top: 0px; left: 0px; will-change: transform;">
                                                                    <a class="dropdown-item has-icon"
                                                                        href="{{ route('detail.profile', $item->id) }}"><i
                                                                            class="fas fa-search"></i> Detail Profile</a>

                                                                    @if ($item->detailUser == null || $item->detailUser->cv == null)
                                                                        <a class="dropdown-item has-icon " disabled> Belum
                                                                            punya CV</a>
                                                                    @else
                                                                        <a class="dropdown-item has-icon"
                                                                            href="{{ route('stream.cv', $item->id) }}"><i
                                                                                class="fas fa-file"></i> View CV</a>


                                                                    @endif
                                                                    {{-- <a class="dropdown-item has-icon" href="#"><i
                                                                            class="far fa-clock"></i> Something else here</a> --}}
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                <div id="accordion">
                                                    <div class="card">
                                                        <div class="card-header" id="headingOne">
                                                            <h5 class="mb-0">
                                                                <button style="text-decoration: none;"
                                                                    class="btn btn-primary" data-toggle="collapse"
                                                                    data-target="#collapseOne{{ $loop->iteration }}"
                                                                    aria-expanded="true"
                                                                    aria-controls="collapseOne{{ $loop->iteration }}">
                                                                    Skill
                                                                </button>
                                                            </h5>
                                                        </div>

                                                        <div id="collapseOne{{ $loop->iteration }}"
                                                            class="collapse" aria-labelledby="headingOne"
                                                            data-parent="#accordion">
                                                            <div class="card-body">
                                                                @if ($item->detailUser == null || $item->detailUser->skill == null)
                                                                    Belum ada skill

                                                                @else
                                                                    @php
                                                                        $detailProfileSkill = explode(',', $item->detailUser->skill);
                                                                        foreach ($detailProfileSkill as $key => $value) {
                                                                            $yourSkill[] = App\Models\Skill::where('id', $value)->first();
                                                                        }
                                                                    @endphp
                                                                    @foreach ($yourSkill as $item)
                                                                        <a style="cursor: pointer;"
                                                                            class="badge badge-primary ">{{ $item->nama_skill }}</a>

                                                                    @endforeach

                                                                @endif
                                                            </div>
                                                        </div>
                                                    </div>


                                                </div>
                                                {{-- <div class="mb-2">
                                                <strong>{{$item->kelas->nama_kelas}}</strong>
                                            </div>
                                            <blockquote class="blockquote">
                                                    @if ($item->detailUser == null || $item->detailUser->bio == null)
                                                        <i>Tidak memiliki Bio</i>
                                                    @else
                                                <p class="mb-0">{{Str::words($item->detailUser->bio,8)}}</p>
                                                     

                                                    @endif
                                            </blockquote> --}}

                                            </div>
                                        </div>
                                    </div>
                                @empty
                                    <h5>
                                        "Tidak ada data siswa"
                                    </h5>
                                @endforelse


                            </div>
                            <div class="d-flex justify-content-center">
                                {!! $XII_MM->links() !!}
                            </div>
                        </div>
                        <div class="tab-pane fade" id="XII-BC6" role="tabpanel" aria-labelledby="XII-BC-tab6">
                            <div class="row">
                                @forelse ($XII_BC as $item)
                                    <div class="col-md-4">
                                        <div class="card">
                                            <div class="card-header">
                                                <div class="row">
                                                    <div class="col-9">
                                                        @if (File::exists(public_path($item->avatar)))
                                                            <img alt="image" src="{{ asset($item->avatar) }}"
                                                                style="width: 150px; height: 150px; border-radius: 50%;">
                                                            <br>
                                                        @else
                                                            <img alt="image"
                                                                src="{{ asset('img/avatar/avatar-1.png') }}"
                                                                style="width: 150px; height: 150px; border-radius: 50%;">
                                                            <br>
                                                        @endif

                                                        <h4 class="mt-3">{{ $item->name }}
                                                            <br>
                                                            <span style="font-size: 14px; font-weight: lighter"></span>
                                                        </h4>

                                                    </div>
                                                    <div class="col-3">
                                                        <div class="card-header-action">
                                                            <div class="dropdown d-inline">
                                                                <button class="btn btn-secondary dropdown-toggle"
                                                                    type="button" id="dropdownMenuButton2"
                                                                    data-toggle="dropdown" aria-haspopup="true"
                                                                    aria-expanded="false">
                                                                    Option
                                                                </button>
                                                                <div class="dropdown-menu" x-placement="bottom-start"
                                                                    style="position: absolute; transform: translate3d(0px, 28px, 0px); top: 0px; left: 0px; will-change: transform;">
                                                                    <a class="dropdown-item has-icon"
                                                                        href="{{ route('detail.profile', $item->id) }}"><i
                                                                            class="fas fa-search"></i> Detail Profile</a>

                                                                    @if ($item->detailUser == null || $item->detailUser->cv == null)
                                                                        <a class="dropdown-item has-icon " disabled> Belum
                                                                            punya CV</a>
                                                                    @else
                                                                        <a class="dropdown-item has-icon"
                                                                            href="{{ route('stream.cv', $item->id) }}"><i
                                                                                class="fas fa-file"></i> View CV</a>


                                                                    @endif
                                                                    {{-- <a class="dropdown-item has-icon" href="#"><i
                                                                            class="far fa-clock"></i> Something else here</a> --}}
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                <div id="accordion">
                                                    <div class="card">
                                                        <div class="card-header" id="headingOne">
                                                            <h5 class="mb-0">
                                                                <button style="text-decoration: none;"
                                                                    class="btn btn-primary" data-toggle="collapse"
                                                                    data-target="#collapseOne{{ $loop->iteration }}"
                                                                    aria-expanded="true"
                                                                    aria-controls="collapseOne{{ $loop->iteration }}">
                                                                    Skill
                                                                </button>
                                                            </h5>
                                                        </div>

                                                        <div id="collapseOne{{ $loop->iteration }}"
                                                            class="collapse" aria-labelledby="headingOne"
                                                            data-parent="#accordion">
                                                            <div class="card-body">
                                                                @if ($item->detailUser == null || $item->detailUser->skill == null)
                                                                    Belum ada skill

                                                                @else
                                                                    @php
                                                                        $detailProfileSkill = explode(',', $item->detailUser->skill);
                                                                        foreach ($detailProfileSkill as $key => $value) {
                                                                            $yourSkill[] = App\Models\Skill::where('id', $value)->first();
                                                                        }
                                                                    @endphp
                                                                    @foreach ($yourSkill as $item)
                                                                        <a style="cursor: pointer;"
                                                                            class="badge badge-primary ">{{ $item->nama_skill }}</a>

                                                                    @endforeach

                                                                @endif
                                                            </div>
                                                        </div>
                                                    </div>


                                                </div>
                                                {{-- <div class="mb-2">
                                                <strong>{{$item->kelas->nama_kelas}}</strong>
                                            </div>
                                            <blockquote class="blockquote">
                                                    @if ($item->detailUser == null || $item->detailUser->bio == null)
                                                        <i>Tidak memiliki Bio</i>
                                                    @else
                                                <p class="mb-0">{{Str::words($item->detailUser->bio,8)}}</p>
                                                     

                                                    @endif
                                            </blockquote> --}}

                                            </div>
                                        </div>
                                    </div>
                                @empty
                                    <h5>
                                        "Tidak ada data siswa"
                                    </h5>
                                @endforelse


                            </div>
                            <div class="d-flex justify-content-center">
                                {!! $XII_BC->links() !!}
                            </div>
                        </div>
                        <div class="tab-pane fade" id="XII-TKJ6" role="tabpanel" aria-labelledby="XII-TKJ-tab6">
                            <div class="row">
                                @forelse ($XII_TKJ as $item)
                                    <div class="col-md-4">
                                        <div class="card">
                                            <div class="card-header">
                                                <div class="row">
                                                    <div class="col-9">
                                                        @if (File::exists(public_path($item->avatar)))
                                                            <img alt="image" src="{{ asset($item->avatar) }}"
                                                                style="width: 150px; height: 150px; border-radius: 50%;">
                                                            <br>
                                                        @else
                                                            <img alt="image"
                                                                src="{{ asset('img/avatar/avatar-1.png') }}"
                                                                style="width: 150px; height: 150px; border-radius: 50%;">
                                                            <br>
                                                        @endif

                                                        <h4 class="mt-3">{{ $item->name }}
                                                            <br>
                                                            <span style="font-size: 14px; font-weight: lighter"></span>
                                                        </h4>

                                                    </div>
                                                    <div class="col-3">
                                                        <div class="card-header-action">
                                                            <div class="dropdown d-inline">
                                                                <button class="btn btn-secondary dropdown-toggle"
                                                                    type="button" id="dropdownMenuButton2"
                                                                    data-toggle="dropdown" aria-haspopup="true"
                                                                    aria-expanded="false">
                                                                    Option
                                                                </button>
                                                                <div class="dropdown-menu" x-placement="bottom-start"
                                                                    style="position: absolute; transform: translate3d(0px, 28px, 0px); top: 0px; left: 0px; will-change: transform;">
                                                                    <a class="dropdown-item has-icon"
                                                                        href="{{ route('detail.profile', $item->id) }}"><i
                                                                            class="fas fa-search"></i> Detail Profile</a>

                                                                    @if ($item->detailUser == null || $item->detailUser->cv == null)
                                                                        <a class="dropdown-item has-icon " disabled> Belum
                                                                            punya CV</a>
                                                                    @else
                                                                        <a class="dropdown-item has-icon"
                                                                            href="{{ route('stream.cv', $item->id) }}"><i
                                                                                class="fas fa-file"></i> View CV</a>


                                                                    @endif
                                                                    {{-- <a class="dropdown-item has-icon" href="#"><i
                                                                            class="far fa-clock"></i> Something else here</a> --}}
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                <div id="accordion">
                                                    <div class="card">
                                                        <div class="card-header" id="headingOne">
                                                            <h5 class="mb-0">
                                                                <button style="text-decoration: none;"
                                                                    class="btn btn-primary" data-toggle="collapse"
                                                                    data-target="#collapseOne{{ $loop->iteration }}"
                                                                    aria-expanded="true"
                                                                    aria-controls="collapseOne{{ $loop->iteration }}">
                                                                    Skill
                                                                </button>
                                                            </h5>
                                                        </div>

                                                        <div id="collapseOne{{ $loop->iteration }}"
                                                            class="collapse" aria-labelledby="headingOne"
                                                            data-parent="#accordion">
                                                            <div class="card-body">
                                                                @if ($item->detailUser == null || $item->detailUser->skill == null)
                                                                    Belum ada skill

                                                                @else
                                                                    @php
                                                                        $detailProfileSkill = explode(',', $item->detailUser->skill);
                                                                        foreach ($detailProfileSkill as $key => $value) {
                                                                            $yourSkill[] = App\Models\Skill::where('id', $value)->first();
                                                                        }
                                                                    @endphp
                                                                    @foreach ($yourSkill as $item)
                                                                        <a style="cursor: pointer;"
                                                                            class="badge badge-primary ">{{ $item->nama_skill }}</a>

                                                                    @endforeach

                                                                @endif
                                                            </div>
                                                        </div>
                                                    </div>


                                                </div>
                                                {{-- <div class="mb-2">
                                                <strong>{{$item->kelas->nama_kelas}}</strong>
                                            </div>
                                            <blockquote class="blockquote">
                                                    @if ($item->detailUser == null || $item->detailUser->bio == null)
                                                        <i>Tidak memiliki Bio</i>
                                                    @else
                                                <p class="mb-0">{{Str::words($item->detailUser->bio,8)}}</p>
                                                     

                                                    @endif
                                            </blockquote> --}}

                                            </div>
                                        </div>
                                    </div>
                                @empty
                                    <h5>
                                        "Tidak ada data siswa"
                                    </h5>
                                @endforelse


                            </div>
                            <div class="d-flex justify-content-center">
                                {!! $XII_TKJ->links() !!}
                            </div>
                        </div>
                        <div class="tab-pane fade" id="XII-TEI6" role="tabpanel" aria-labelledby="XII-TEI-tab6">
                            <div class="row">
                                @forelse ($XII_TEI as $item)
                                    <div class="col-md-4">
                                        <div class="card">
                                            <div class="card-header">
                                                <h4 class="mt-3">{{ $item->name }}
                                                    <br>
                                                    <span style="font-size: 14px; font-weight: lighter"></span>
                                                </h4>
                                                <div class="card-header-action">
                                                    <div class="dropdown d-inline">
                                                        <button class="btn btn-secondary dropdown-toggle" type="button"
                                                            id="dropdownMenuButton2" data-toggle="dropdown"
                                                            aria-haspopup="true" aria-expanded="false">
                                                            Option
                                                        </button>
                                                        <div class="dropdown-menu" x-placement="bottom-start"
                                                            style="position: absolute; transform: translate3d(0px, 28px, 0px); top: 0px; left: 0px; will-change: transform;">
                                                            <a class="dropdown-item has-icon"
                                                                href="{{ route('detail.profile', $item->id) }}"><i
                                                                    class="fas fa-search"></i> Detail Profile</a>

                                                            @if ($item->detailUser == null || $item->detailUser->cv == null)
                                                                <a class="dropdown-item has-icon " disabled> Belum punya
                                                                    CV</a>
                                                            @else
                                                                <a class="dropdown-item has-icon"
                                                                    href="{{ route('stream.cv', $item->id) }}"><i
                                                                        class="fas fa-file"></i> View CV</a>


                                                            @endif
                                                            {{-- <a class="dropdown-item has-icon" href="#"><i
                                                                    class="far fa-clock"></i> Something else here</a> --}}
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                <div id="accordion">
                                                    <div class="card">
                                                        <div class="card-header" id="headingOne">
                                                            <h5 class="mb-0">
                                                                <button style="text-decoration: none;"
                                                                    class="btn btn-primary" data-toggle="collapse"
                                                                    data-target="#collapseOne{{ $loop->iteration }}"
                                                                    aria-expanded="true"
                                                                    aria-controls="collapseOne{{ $loop->iteration }}">
                                                                    Skill
                                                                </button>
                                                            </h5>
                                                        </div>

                                                        <div id="collapseOne{{ $loop->iteration }}"
                                                            class="collapse" aria-labelledby="headingOne"
                                                            data-parent="#accordion">
                                                            <div class="card-body">
                                                                @if ($item->detailUser == null || $item->detailUser->skill == null)
                                                                    Belum ada skill

                                                                @else
                                                                    @php
                                                                        $detailProfileSkill = explode(',', $item->detailUser->skill);
                                                                        foreach ($detailProfileSkill as $key => $value) {
                                                                            $yourSkill[] = App\Models\Skill::where('id', $value)->first();
                                                                        }
                                                                    @endphp
                                                                    @foreach ($yourSkill as $item)
                                                                        <a style="cursor: pointer;"
                                                                            class="badge badge-primary ">{{ $item->nama_skill }}</a>

                                                                    @endforeach

                                                                @endif
                                                            </div>
                                                        </div>
                                                    </div>


                                                </div>
                                                {{-- <div class="mb-2">
                                                    <strong>{{$item->kelas->nama_kelas}}</strong>
                                                </div>
                                                <blockquote class="blockquote">
                                                        @if ($item->detailUser == null || $item->detailUser->bio == null)
                                                            <i>Tidak memiliki Bio</i>
                                                        @else
                                                    <p class="mb-0">{{Str::words($item->detailUser->bio,8)}}</p>
                                                         

                                                        @endif
                                                </blockquote> --}}

                                            </div>
                                        </div>
                                    </div>
                                @empty
                                    <h5>
                                        "Tidak ada data siswa"
                                    </h5>
                                @endforelse


                            </div>
                            <div class="d-flex justify-content-center">
                                {!! $XII_TEI->links() !!}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>




@elseif (Route::is('dashboard.adm'))

    {{-- @elseif(JWTAuth::user()->role->name == 'manager') --}}
    <div class="row">
        <div class="col">
            <div class="card card-info profile-widget">
                <div class="profile-widget-header">
                    @if (File::exists(public_path(Auth::user()->avatar)))
                    <img class="rounded-circle profile-widget-picture" style="height: 150px;" alt="image"
                        src="{{ asset(Auth::user()->avatar) }}">
                @else
                    <img class="rounded-circle profile-widget-picture" alt="image"
                        src="{{ asset('img/avatar/avatar-1.png') }}">
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
                                    {{ JWTAuth::user()->role->display_name }}
                                </div>
                            </div>
                        </span>
                    </div>
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
                    <div class="col-md-4 d-none mb-3" style="display: none">
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
                    <div class="col-md-4 d-none mb-3 ">
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

@elseif (Route::is('dashboard.panitia'))

    {{-- @elseif(JWTAuth::user()->role->name == 'manager') --}}
    <div class="row">
        <div class="col">
            <div class="card card-info profile-widget">
                <div class="profile-widget-header">
                    @if (File::exists(public_path(Auth::user()->avatar)))
                    <img class="rounded-circle profile-widget-picture" style="height: 150px;" alt="image"
                        src="{{ asset(Auth::user()->avatar) }}">
                @else
                    <img class="rounded-circle profile-widget-picture" alt="image"
                        src="{{ asset('img/avatar/avatar-1.png') }}">
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
                                    {{ JWTAuth::user()->spesifc_role }}
                                </div>
                            </div>
                        </span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    {{-- @if ($message = Session::get('message'))
    <div class="alert alert-success alert-block">
      <button type="button" class="close" data-dismiss="alert">×</button>    
        <strong>{{ $message }}</strong>
    </div>
  @endif --}}
    {{-- @if ($errors->any())
  <div class="alert alert-danger">
      <ul>
          @foreach ($errors->all() as $error)
              <li>{{ $error }}</li>
          @endforeach
      </ul>
  </div>
 @endif --}}

    <div class="row">
        <div  class="col" id="accordion">
            <div class="card">
                <div class="card-header " id="headingDataCalonSiswa" style="width: 1142px;">
                    <h5 class="mb-0">
                        <button class="btn btn-md  btn-primary rounded" data-toggle="collapse" data-target="#collapseOne"
                            aria-expanded="true" aria-controls="collapseOne">
                            Tambah Data Calon Siswa
                        </button>
                        <button class="btn btn-md  btn-primary rounded" data-toggle="modal"
                            data-target="#exampleModalCenter">
                            Tambah Data Referal Code
                        </button>
                    </h5>
                </div>

                <div id="collapseOne" class="collapse  w-100  collapsing" aria-labelledby="headingDataCalonSiswa"
                    data-parent="#accordion">
                    <form action="{{ route('panitia.store.casis') }}" id="form-tambah" method="POST">
                        @csrf
                        <div class="card-body">
                            {{-- Baris Pertama --}}
                            <div class="row">
                                {{-- Sebelah Kiri --}}
                                <div class="col-md-6">
                                    <div class="card card-primary">

                                        <div class="card-body">
                                            <div class="form-group" `>
                                                <label style="font-size: 16px; font-weight: 800;" for="no_daftar">Nomor
                                                    Daftar</label>
                                                <input disabled type="text" style="font-size: 15px; font-weight: 600;"
                                                    class="form-control" id="no_daftar" name="no_daftar"
                                                    value="{{ $no_daftar }}" disabled
                                                    value="{{ old('no_daftar') }}">
                                            </div>

                                            <div class="form-group ">
                                                <label style="font-size: 16px; font-weight: 800;" for="jurusan_1">Jurusan
                                                    1</label>
                                                <select style="font-size: 15px; font-weight: 600;" name="jurusan_1"
                                                    id="jurusan_1"
                                                    class="@error('jurusan_1') is-invalid @enderror form-control col-md-12">
                                                    <option style="font-size: 15px; font-weight: 600;" value="" disabled
                                                        selected>--Pilihan--</option>
                                                    @foreach ($jurusan as $item)
                                                        @if ($item->jurusan == 'PPLG')
                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="{{ $item->id }}"
                                                                {{ old('jurusan_1') == $item->id ? 'selected' : '' }}>
                                                                Pengembang Perangkat Lunak dan Game</option>
                                                        @elseif($item->jurusan == 'ANIMASI')
                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="{{ $item->id }}"
                                                                {{ old('jurusan_1') == $item->id ? 'selected' : '' }}>
                                                                Animasi</option>
                                                        @elseif($item->jurusan == 'TJKT')
                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="{{ $item->id }}"
                                                                {{ old('jurusan_1') == $item->id ? 'selected' : '' }}>
                                                                Teknik Jaringan Komputer & Telekomunikasi</option>
                                                        @elseif($item->jurusan == 'BCF')
                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="{{ $item->id }}"
                                                                {{ old('jurusan_1') == $item->id ? 'selected' : '' }}>
                                                                Broadcasting dan perFileman</option>
                                                        @elseif($item->jurusan == 'TE')
                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="{{ $item->id }}"
                                                                {{ old('jurusan_1') == $item->id ? 'selected' : '' }}>
                                                                Teknik Elektro</option>
                                                        @endif

                                                    @endforeach

                                                </select>
                                                @error('jurusan_1')
                                                    <span class="text text-danger">{{ $message }}</span>
                                                @enderror
                                            </div>
                                            <div class="form-group ">
                                                <label style="font-size: 16px; font-weight: 800;" for="jurusan_2">Jurusan
                                                    2</label>
                                                <select style="font-size: 15px; font-weight: 600;" name="jurusan_2"
                                                    id="jurusan_2"
                                                    class="@error('jurusan_2') is-invalid @enderror form-control col-md-12">
                                                    <option style="font-size: 15px; font-weight: 600;" value="" disabled
                                                        selected>--Pilihan--</option>

                                                    @foreach ($jurusan as $item)
                                                        @if ($item->jurusan == 'PPLG')
                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="{{ $item->id }}"
                                                                {{ old('jurusan_2') == $item->id ? 'selected' : '' }}>
                                                                Pengembang Perangkat Lunak dan Game</option>
                                                        @elseif($item->jurusan == 'ANIMASI')
                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="{{ $item->id }}"
                                                                {{ old('jurusan_2') == $item->id ? 'selected' : '' }}>
                                                                Animasi</option>
                                                        @elseif($item->jurusan == 'TJKT')
                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="{{ $item->id }}"
                                                                {{ old('jurusan_2') == $item->id ? 'selected' : '' }}>
                                                                Teknik Jaringan Komputer & Telekomunikasi</option>
                                                        @elseif($item->jurusan == 'BCF')
                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="{{ $item->id }}"
                                                                {{ old('jurusan_2') == $item->id ? 'selected' : '' }}>
                                                                Broadcasting dan perFileman</option>
                                                        @elseif($item->jurusan == 'TE')
                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="{{ $item->id }}"
                                                                {{ old('jurusan_2') == $item->id ? 'selected' : '' }}>
                                                                Teknik Elektro</option>
                                                        @endif

                                                    @endforeach
                                                </select>
                                                @error('jurusan_2')
                                                    <span class="text text-danger">{{ $message }}</span>
                                                @enderror
                                            </div>
                                            <div class="form-group ">
                                                <label style="font-size: 16px; font-weight: 800;" for="jurusan_3">Jurusan
                                                    3</label>
                                                <select style="font-size: 15px; font-weight: 600;" name="jurusan_3"
                                                    id="jurusan_3"
                                                    class="@error('jurusan_3') is-invalid @enderror form-control col-md-12">
                                                    <option style="font-size: 15px; font-weight: 600;" value="" disabled
                                                        selected>--Pilihan--</option>
                                                    @foreach ($jurusan as $item)
                                                        @if ($item->jurusan == 'PPLG')
                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="{{ $item->id }}"
                                                                {{ old('jurusan_3') == $item->id ? 'selected' : '' }}>
                                                                Pengembang Perangkat Lunak dan Game</option>
                                                        @elseif($item->jurusan == 'ANIMASI')
                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="{{ $item->id }}"
                                                                {{ old('jurusan_3') == $item->id ? 'selected' : '' }}>
                                                                Animasi</option>
                                                        @elseif($item->jurusan == 'TJKT')
                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="{{ $item->id }}"
                                                                {{ old('jurusan_3') == $item->id ? 'selected' : '' }}>
                                                                Teknik Jaringan Komputer & Telekomunikasi</option>
                                                        @elseif($item->jurusan == 'BCF')
                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="{{ $item->id }}"
                                                                {{ old('jurusan_3') == $item->id ? 'selected' : '' }}>
                                                                Broadcasting dan perFileman</option>
                                                        @elseif($item->jurusan == 'TE')
                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="{{ $item->id }}"
                                                                {{ old('jurusan_3') == $item->id ? 'selected' : '' }}>
                                                                Teknik Elektro</option>
                                                        @endif


                                                    @endforeach
                                                </select>
                                                @error('jurusan_3')
                                                    <span class="text text-danger">{{ $message }}</span>
                                                @enderror
                                            </div>

                                        </div>
                                    </div>
                                </div>

                                {{-- Sebelah Kanan --}}
                                <div class="col-md-6">
                                    <div class="card card-primary">

                                        <div class="card-body">
                                            <div class="form-group">
                                                <label style="font-size: 16px; font-weight: 800;" for="nama_lengkap">Nama
                                                    Lengkap</label>
                                                <input type="text" style="font-size: 15px; font-weight: 600;"
                                                    class="@error('nama_lengkap') is-invalid @enderror form-control"
                                                    id="nama_lengkap" name="nama_lengkap"
                                                    value="{{ old('nama_lengkap') }}">
                                                @error('nama_lengkap')
                                                    <span class="text text-danger">{{ $message }}</span>
                                                @enderror
                                            </div>
                                            <div class="form-group">
                                                <label style="font-size: 16px; font-weight: 800;" for="jenis_kelamin">Jenis
                                                    Kelamin</label>
                                                <select style="font-size: 15px; font-weight: 600;" name="jenis_kelamin"
                                                    id="jenis_kelamin"
                                                    class="@error('jenis_kelamin') is-invalid @enderror form-control col-md-6">
                                                    <option style="font-size: 15px; font-weight: 600;" value="" disabled
                                                        selected>--Pilihan--</option>
                                                    <option style="font-size: 15px; font-weight: 600;" value="Laki-laki"
                                                        {{ old('jenis_kelamin') == 'Laki-laki' ? 'selected' : '' }}>
                                                        Laki-laki</option>
                                                    <option style="font-size: 15px; font-weight: 600;" value="Perempuan"
                                                        {{ old('jenis_kelamin') == 'Perempuan' ? 'selected' : '' }}>
                                                        Perempuan</option>
                                                </select>
                                                @error('jenis_kelamin')
                                                    <span class="text text-danger">{{ $message }}</span>
                                                @enderror
                                            </div>
                                            <div class="form-group">
                                                <label style="font-size: 16px; font-weight: 800;" for="nisn">NISN</label>
                                                <input type="number" name="nisn" id="nisn"
                                                    class="@error('nisn') is-invalid @enderror form-control"
                                                    value="{{ old('nisn') }}">
                                                @error('nisn')
                                                    <span class="text text-danger">{{ $message }}</span>
                                                @enderror
                                            </div>
                                            <div class="form-group">
                                                <label style="font-size: 16px; font-weight: 800;" for="nik">NIK</label>
                                                <input type="number" name="nik" id="nik"
                                                    class="@error('nik') is-invalid @enderror form-control"
                                                    value="{{ old('nik') }}">
                                                @error('nik')
                                                    <span class="text text-danger">{{ $message }}</span>
                                                @enderror

                                            </div>
                                            <div class="form-group">
                                                <label style="font-size: 16px; font-weight: 800;" for="no_kartu_keluarga">No
                                                    Kartu
                                                    Keluarga</label>
                                                <input type="number" name="no_kartu_keluarga" id="no_kartu_keluarga"
                                                    class="@error('no_kartu_keluarga') is-invalid @enderror form-control"
                                                    value="{{ old('no_kartu_keluarga') }}">
                                                @error('no_kartu_keluarga')
                                                    <span class="text text-danger">{{ $message }}</span>
                                                @enderror
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>

                            {{-- Baris Kedua --}}
                            <div class="row">
                                {{-- Sebelah Kiri --}}
                                <div class="col-md-6">
                                    <div class="card card-success">

                                        <div class="card-body">
                                            <div class="form-group">
                                                <label style="font-size: 16px; font-weight: 800;"
                                                    for="no_registerasi_akta_kelahiran">Nomor Registerasi Akta
                                                    Kelahiran</label>
                                                <input type="text" style="font-size: 15px; font-weight: 600;"
                                                    class="@error('no_registerasi_akta_kelahiran') is-invalid @enderror form-control"
                                                    id="no_registerasi_akta_kelahiran" name="no_registerasi_akta_kelahiran"
                                                    value="{{ old('no_registerasi_akta_kelahiran') }}">
                                                @error('no_registerasi_akta_kelahiran')
                                                    <span class="text text-danger">{{ $message }}</span>
                                                @enderror
                                            </div>
                                            <div class="form-group">
                                                <label style="font-size: 16px; font-weight: 800;" for="tempat_lahir">Tempat
                                                    Lahir</label>
                                                <input type="text" style="font-size: 15px; font-weight: 600;"
                                                    class="@error('tempat_lahir') is-invalid @enderror form-control"
                                                    id="tempat_lahir" name="tempat_lahir"
                                                    value="{{ old('tempat_lahir') }}">
                                                @error('tempat_lahir')
                                                    <span class="text text-danger">{{ $message }}</span>
                                                @enderror
                                            </div>
                                            <div class="form-group">
                                                <label style="font-size: 16px; font-weight: 800;"
                                                    for="tanggal_lahir">Tanggal Lahir</label>
                                                <input type="date" style="font-size: 15px; font-weight: 600;"
                                                    class="@error('tanggal_lahir') is-invalid @enderror form-control"
                                                    id="tanggal_lahir" name="tanggal_lahir"
                                                    value="{{ old('tanggal_lahir') }}">
                                                @error('tanggal_lahir')
                                                    <span class="text text-danger">{{ $message }}</span>
                                                @enderror
                                            </div>
                                            <div class="form-group ">
                                                <label style="font-size: 16px; font-weight: 800;" for="agama">Agama</label>
                                                <select style="font-size: 15px; font-weight: 600;" name="agama" id="agama"
                                                    class="@error('agama') is-invalid @enderror form-control col-md-12">
                                                    <option style="font-size: 15px; font-weight: 600;" value="" disabled
                                                        selected>--Pilihan--</option>

                                                    <option style="font-size: 15px; font-weight: 600;" value="Islam"
                                                        {{ old('agama') == 'Islam' ? 'selected' : '' }}>Islam</option>
                                                    <option style="font-size: 15px; font-weight: 600;"
                                                        value="Kristen Protestan"
                                                        {{ old('agama') == 'Kristen Protestan' ? 'selected' : '' }}>
                                                        Kristen
                                                        Protestan</option>
                                                    <option style="font-size: 15px; font-weight: 600;" value="Katolik"
                                                        {{ old('agama') == 'Katolik' ? 'selected' : '' }}>Katolik
                                                    </option>
                                                    <option style="font-size: 15px; font-weight: 600;" value="Hindu"
                                                        {{ old('agama') == 'Hindu' ? 'selected' : '' }}>Hindu</option>
                                                    <option style="font-size: 15px; font-weight: 600;" value="Buddha"
                                                        {{ old('agama') == 'Buddha' ? 'selected' : '' }}>Buddha</option>
                                                    <option style="font-size: 15px; font-weight: 600;" value="Kong Hu Cu"
                                                        {{ old('agama') == 'Kong Hu Cu' ? 'selected' : '' }}>Kong Hu Cu
                                                    </option>
                                                </select>
                                                @error('agama')
                                                    <span class="text text-danger">{{ $message }}</span>
                                                @enderror

                                            </div>
                                            <div class="form-group">
                                                <label style="font-size: 16px; font-weight: 800;"
                                                    for="alamat">Alamat</label>
                                                <textarea class="@error('alamat') is-invalid @enderror form-control"
                                                    name="alamat" id="alamat" cols="30"
                                                    rows="10"> {{ old('alamat') }}</textarea>
                                                @error('alamat')
                                                    <span class="text text-danger">{{ $message }}</span>
                                                @enderror
                                                {{-- <input type="text" style="font-size: 15px; font-weight: 600;" name="alamat" id="alamat"  value="{{ old('nik') }}"> --}}
                                            </div>

                                        </div>
                                    </div>
                                </div>

                                {{-- Sebelah Kanan --}}
                                <div class="col-md-6">
                                    <div class="card card-success">

                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label style="font-size: 16px; font-weight: 800;"
                                                            for="rt">RT</label>
                                                        <input type="text" style="font-size: 15px; font-weight: 600;"
                                                            class="@error('rt') is-invalid @enderror form-control" id="rt"
                                                            name="rt" value="{{ old('rt') }}">
                                                        @error('rt')
                                                            <span class="text text-danger">{{ $message }}</span>
                                                        @enderror
                                                    </div>
                                                </div>

                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label style="font-size: 16px; font-weight: 800;"
                                                            for="rw">RW</label>
                                                        <input type="text" style="font-size: 15px; font-weight: 600;"
                                                            class="@error('rw') is-invalid @enderror form-control" id="rw"
                                                            name="rw" value="{{ old('rw') }}">
                                                        @error('rw')
                                                            <span class="text text-danger">{{ $message }}</span>
                                                        @enderror
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label style="font-size: 16px; font-weight: 800;"
                                                            for="kode_pos">Kode
                                                            Pos</label>
                                                        <input type="text" style="font-size: 15px; font-weight: 600;"
                                                            class="@error('kode_pos') is-invalid @enderror form-control"
                                                            id="kode_pos" name="kode_pos" value="{{ old('kode_pos') }}">
                                                        @error('kode_pos')
                                                            <span class="text text-danger">{{ $message }}</span>
                                                        @enderror
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label style="font-size: 16px; font-weight: 800;" for="dusun">Dusun</label>
                                                <input type="text" style="font-size: 15px; font-weight: 600;"
                                                    class="@error('dusun') is-invalid @enderror form-control" id="dusun"
                                                    name="dusun" value="{{ old('dusun') }}">
                                                @error('dusun')
                                                    <span class="text text-danger">{{ $message }}</span>
                                                @enderror
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label style="font-size: 16px; font-weight: 800;"
                                                            for="desa_kelurahan">Desa/Keluarahan</label>
                                                        <input type="text" style="font-size: 15px; font-weight: 600;"
                                                            class="@error('desa_kelurahan') is-invalid @enderror form-control"
                                                            id="desa_kelurahan" name="desa_kelurahan"
                                                            value="{{ old('desa_kelurahan') }}">
                                                        @error('desa_kelurahan')
                                                            <span class="text text-danger">{{ $message }}</span>
                                                        @enderror
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label style="font-size: 16px; font-weight: 800;"
                                                            for="kecamatan">Kecamatan</label>
                                                        <input type="text" style="font-size: 15px; font-weight: 600;"
                                                            class="@error('kecamatan') is-invalid @enderror form-control"
                                                            id="kecamatan" name="kecamatan"
                                                            value="{{ old('kecamatan') }}">
                                                        @error('kecamatan')
                                                            <span class="text text-danger">{{ $message }}</span>
                                                        @enderror
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label style="font-size: 16px; font-weight: 800;"
                                                    for="kabupaten">Kabupaten</label>
                                                <input type="text" style="font-size: 15px; font-weight: 600;"
                                                    class="@error('kabupaten') is-invalid @enderror form-control"
                                                    id="kabupaten" name="kabupaten" value="{{ old('kabupaten') }}">
                                                @error('kabupaten')
                                                    <span class="text text-danger">{{ $message }}</span>
                                                @enderror
                                            </div>


                                        </div>
                                    </div>
                                </div>
                            </div>


                            {{-- Baris KEtiga --}}
                            <div class="row">
                                {{-- Sebelah Kiri --}}
                                <div class="col-md-12">
                                    <div class="card card-warning">

                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group ">
                                                        <label style="font-size: 16px; font-weight: 800;"
                                                            for="tempat_tinggal">Tempat Tinggal</label>
                                                        <select style="font-size: 15px; font-weight: 600;"
                                                            name="tempat_tinggal" id="tempat_tinggal"
                                                            class="@error('tempat_tinggal') is-invalid @enderror form-control col-md-12">
                                                            <option style="font-size: 15px; font-weight: 600;" value=""
                                                                disabled selected>--Pilihan--</option>
                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="Bersama Orang Tua"
                                                                {{ old('tempat_tinggal') == 'Bersama Orang Tua' ? 'selected' : '' }}>
                                                                Bersama Orang Tua</option>
                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="Bersama Wali"
                                                                {{ old('tempat_tinggal') == 'Bersama Wali' ? 'selected' : '' }}>
                                                                Bersama Wali</option>
                                                            <option style="font-size: 15px; font-weight: 600;" value="Kost"
                                                                {{ old('tempat_tinggal') == 'Kost' ? 'selected' : '' }}>
                                                                Kost</option>
                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="Pesantren"
                                                                {{ old('tempat_tinggal') == 'Pesantren' ? 'selected' : '' }}>
                                                                Pesantren</option>

                                                        </select>
                                                        @error('tempat_tinggal')
                                                            <span class="text text-danger">{{ $message }}</span>
                                                        @enderror

                                                    </div>

                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group ">
                                                        <label style="font-size: 16px; font-weight: 800;"
                                                            for="transportasi">Moda Transportasi</label>
                                                        <select style="font-size: 15px; font-weight: 600;"
                                                            name="transportasi" id="transportasi"
                                                            class="@error('transportasi') is-invalid @enderror  form-control col-md-12">
                                                            <option style="font-size: 15px; font-weight: 600;" value=""
                                                                disabled selected>--Pilihan--</option>
                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="Angkutan Umum"
                                                                {{ old('transportasi') == 'Angkutan Umum' ? 'selected' : '' }}>
                                                                Angkutan Umum</option>
                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="Sepeda Motor"
                                                                {{ old('transportasi') == 'Sepeda Motor' ? 'selected' : '' }}>
                                                                Sepeda Motor</option>
                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="Mobil Pribadi"
                                                                {{ old('transportasi') == 'Mobil Pribadi' ? 'selected' : '' }}>
                                                                Mobil Pribadi</option>
                                                            <option style="font-size: 15px; font-weight: 600;" value="Ojek"
                                                                {{ old('transportasi') == 'Ojek' ? 'selected' : '' }}>
                                                                Ojek
                                                            </option>
                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="Jalan Kaki"
                                                                {{ old('transportasi') == 'Jalan Kaki' ? 'selected' : '' }}>
                                                                Jalan Kaki</option>
                                                        </select>
                                                        @error('transportasi')
                                                            <span class="text text-danger">{{ $message }}</span>
                                                        @enderror

                                                    </div>
                                                </div>


                                            </div>

                                            <div class="row">
                                                <div class="col-md-3">
                                                    <div class="form-group ">
                                                        <label style="font-size: 16px; font-weight: 800;" for="kip">KIP /
                                                            Kartu
                                                            Indonesia Pintar</label>
                                                        <select style="font-size: 15px; font-weight: 600;" name="kip"
                                                            id="kip" class="form-control col-md-12">
                                                            <option style="font-size: 15px; font-weight: 600;" value=""
                                                                selected>--Pilihan--</option>

                                                            <option style="font-size: 15px; font-weight: 600;" value="Ya">Ya
                                                            </option>
                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="Tidak">
                                                                Tidak</option>

                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-5">
                                                    <div class="form-group">
                                                        <label style="font-size: 16px; font-weight: 800;" for="no_kip">No
                                                            KIP</label>
                                                        <input type="text" style="font-size: 15px; font-weight: 600;"
                                                            class="form-control" id="no_kip" name="no_kip"
                                                            value="{{ old('no_kip') }}">
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label style="font-size: 16px; font-weight: 800;"
                                                            for="nama_kip">Nama
                                                            Pada KIP</label>
                                                        <input type="text" style="font-size: 15px; font-weight: 600;"
                                                            class="form-control" id="nama_kip" name="nama_kip"
                                                            value="{{ old('nama_kip') }}">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label style="font-size: 16px; font-weight: 800;"
                                                            for="no_telpon_rumah">No. Telpon Rumah</label>
                                                        <input type="text" style="font-size: 15px; font-weight: 600;"
                                                            class="@error('no_telpon_rumah') is-invalid @enderror form-control"
                                                            id="no_telpon_rumah" name="no_telpon_rumah"
                                                            value="{{ old('no_telpon_rumah') }}">
                                                        @error('no_telpon_rumah')
                                                            <span class="text text-danger">{{ $message }}</span>
                                                        @enderror
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label style="font-size: 16px; font-weight: 800;"
                                                            for="no_telpon_hp">No. Telpon (HP)</label>
                                                        <input type="text" style="font-size: 15px; font-weight: 600;"
                                                            class="@error('no_telpon_hp') is-invalid @enderror form-control"
                                                            id="no_telpon_hp" name="no_telpon_hp"
                                                            value="{{ old('no_telpon_hp') }}">
                                                        @error('no_telpon_hp')
                                                            <span class="text text-danger">{{ $message }}</span>
                                                        @enderror
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label style="font-size: 16px; font-weight: 800;" for="email">Email</label>
                                                <input type="text" style="font-size: 15px; font-weight: 600;"
                                                    class="@error('email') is-invalid @enderror form-control" id="email"
                                                    name="email" value="{{ old('email') }}">
                                                @error('email')
                                                    <span class="text text-danger">{{ $message }}</span>
                                                @enderror
                                            </div>


                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label style="font-size: 16px; font-weight: 800;"
                                                            for="tinggi_badan">Tinggi Badan</label>
                                                        <input type="text" style="font-size: 15px; font-weight: 600;"
                                                            class="@error('tinggi_badan') is-invalid @enderror form-control"
                                                            id="tinggi_badan" name="tinggi_badan"
                                                            value="{{ old('tinggi_badan') }}">
                                                        @error('tinggi_badan')
                                                            <span class="text text-danger">{{ $message }}</span>
                                                        @enderror
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label style="font-size: 16px; font-weight: 800;"
                                                            for="berat_badan">Berat Badan</label>
                                                        <input type="text" style="font-size: 15px; font-weight: 600;"
                                                            class="@error('berat_badan') is-invalid @enderror form-control"
                                                            id="berat_badan" name="berat_badan"
                                                            value="{{ old('berat_badan') }}">
                                                        @error('berat_badan')
                                                            <span class="text text-danger">{{ $message }}</span>
                                                        @enderror
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label style="font-size: 16px; font-weight: 800;"
                                                            for="lingkar_kepala">Lingkar Kepala</label>
                                                        <input type="text" style="font-size: 15px; font-weight: 600;"
                                                            class="form-control" id="lingkar_kepala"
                                                            name="lingkar_kepala" value="{{ old('lingkar_kepala') }}">
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label style="font-size: 16px; font-weight: 800;"
                                                            for="lingkar_pinggang">Lingkar Pinggang</label>
                                                        <input type="text" style="font-size: 15px; font-weight: 600;"
                                                            class="form-control" id="lingkar_pinggang"
                                                            name="lingkar_pinggang"
                                                            value="{{ old('lingkar_pinggang') }}">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label style="font-size: 16px; font-weight: 800;"
                                                            for="jarak_rumah_kesekolah">Jarak Rumah ke Sekolah</label>
                                                        <input type="text" style="font-size: 15px; font-weight: 600;"
                                                            class="form-control" id="jarak_rumah_kesekolah"
                                                            name="jarak_rumah_kesekolah"
                                                            value="{{ old('jarak_rumah_kesekolah') }}">
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label style="font-size: 16px; font-weight: 800;"
                                                            for="waktu_tempuh">Waktu Tempuh</label>
                                                        <input type="text" style="font-size: 15px; font-weight: 600;"
                                                            class="form-control" id="waktu_tempuh" name="waktu_tempuh"
                                                            value="{{ old('waktu_tempuh') }}">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label style="font-size: 16px; font-weight: 800;" for="anak_ke">Anak
                                                            Ke</label>
                                                        <input type="text" style="font-size: 15px; font-weight: 600;"
                                                            class="form-control" id="anak_ke" name="anak_ke"
                                                            value="{{ old('anak_ke') }}">
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label style="font-size: 16px; font-weight: 800;"
                                                            for="jumlah_saudara_kandung">Jumlah Saudara Kandung</label>
                                                        <input type="text" style="font-size: 15px; font-weight: 600;"
                                                            class="form-control" id="jumlah_saudara_kandung"
                                                            name="jumlah_saudara_kandung"
                                                            value="{{ old('jumlah_saudara_kandung') }}">
                                                    </div>
                                                </div>
                                            </div>





                                        </div>
                                    </div>
                                </div>


                            </div>
                            {{-- Baris ke empat --}}
                            <div class="row">
                                {{-- Sebelah Kiri --}}
                                <div class="col-md-6">
                                    <div class="card card-secondary">

                                        <div class="card-body">
                                            <div class="form-group">
                                                <label style="font-size: 16px; font-weight: 800;" for="nama_ayah">Nama Ayah
                                                    Kandung</label>
                                                <input type="text" style="font-size: 15px; font-weight: 600;"
                                                    class="@error('nama_ayah') is-invalid @enderror form-control"
                                                    id="nama_ayah" name="nama_ayah" value="{{ old('nama_ayah') }}">
                                                @error('nama_ayah')
                                                    <span class="text text-danger">{{ $message }}</span>
                                                @enderror
                                            </div>
                                            <div class="form-group">
                                                <label style="font-size: 16px; font-weight: 800;" for="nik_ayah">NIK Ayah
                                                </label>
                                                <input type="text" style="font-size: 15px; font-weight: 600;"
                                                    class="form-control" id="nik_ayah" name="nik_ayah"
                                                    value="{{ old('nik_ayah') }}">
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label style="font-size: 16px; font-weight: 800;"
                                                            for="tahun_lahir_ayah">Tahun Lahir Ayah </label>
                                                        <input type="text" style="font-size: 15px; font-weight: 600;"
                                                            class="form-control" id="tahun_lahir_ayah"
                                                            name="tahun_lahir_ayah"
                                                            value="{{ old('tahun_lahir_ayah') }}">
                                                    </div>

                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group ">
                                                        <label style="font-size: 16px; font-weight: 800;"
                                                            for="pendidikan_ayah">Pendidikan Ayah</label>
                                                        <select style="font-size: 15px; font-weight: 600;"
                                                            name="pendidikan_ayah" id="pendidikan_ayah"
                                                            class="form-control col-md-12">
                                                            <option style="font-size: 15px; font-weight: 600;" value=""
                                                                selected>
                                                                --Pilihan--</option>

                                                            <option style="font-size: 15px; font-weight: 600;" value="SD/MI"
                                                                {{ old('pendidikan_ayah') == 'SD/MI' ? 'selected' : '' }}>
                                                                SD/MI
                                                            </option>
                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="SMP/MTS"
                                                                {{ old('pendidikan_ayah') == 'SMP/MTS' ? 'selected' : '' }}>
                                                                SMP/MTS
                                                            </option>
                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="SMA/MA"
                                                                {{ old('pendidikan_ayah') == 'SMA/MA' ? 'selected' : '' }}>
                                                                SMA/MA
                                                            </option>
                                                            <option style="font-size: 15px; font-weight: 600;" value="SMK"
                                                                {{ old('pendidikan_ayah') == 'SMK' ? 'selected' : '' }}>
                                                                SMK</option>
                                                            <option style="font-size: 15px; font-weight: 600;" value="D1"
                                                                {{ old('pendidikan_ayah') == 'D1' ? 'selected' : '' }}>
                                                                D1</option>
                                                            <option style="font-size: 15px; font-weight: 600;" value="S1"
                                                                {{ old('pendidikan_ayah') == 'S1' ? 'selected' : '' }}>
                                                                S1</option>
                                                            <option style="font-size: 15px; font-weight: 600;" value="S2"
                                                                {{ old('pendidikan_ayah') == 'S2' ? 'selected' : '' }}>
                                                                S2</option>
                                                            <option style="font-size: 15px; font-weight: 600;" value="S3"
                                                                {{ old('pendidikan_ayah') == 'S3' ? 'selected' : '' }}>
                                                                S3</option>
                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="Tidak Sekolah"
                                                                {{ old('pendidikan_ayah') == 'Tidak Sekolah' ? 'selected' : '' }}>
                                                                Tidak Sekolah</option>

                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group ">
                                                        <label style="font-size: 16px; font-weight: 800;"
                                                            for="pekerjaan_ayah">Pekerjaan Ayah</label>
                                                        <select style="font-size: 15px; font-weight: 600;"
                                                            name="pekerjaan_ayah" id="pekerjaan_ayah"
                                                            class="form-control col-md-12">
                                                            <option style="font-size: 15px; font-weight: 600;" value=""
                                                                selected>
                                                                --Pilihan--</option>

                                                            <option style="font-size: 15px; font-weight: 600;" value="Buruh"
                                                                {{ old('pekerjaan_ayah') == 'Buruh' ? 'selected' : '' }}>
                                                                Buruh
                                                            </option>
                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="Nelayan"
                                                                {{ old('pekerjaan_ayah') == 'Nelayan' ? 'selected' : '' }}>
                                                                Nelayan
                                                            </option>
                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="Petani"
                                                                {{ old('pekerjaan_ayah') == 'Petani' ? 'selected' : '' }}>
                                                                Petani
                                                            </option>
                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="Peternak"
                                                                {{ old('pekerjaan_ayah') == 'Peternak' ? 'selected' : '' }}>
                                                                Peternak
                                                            </option>
                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="Pedagang"
                                                                {{ old('pekerjaan_ayah') == 'Pedagang' ? 'selected' : '' }}>
                                                                Pedagang
                                                            </option>
                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="Pensiunan"
                                                                {{ old('pekerjaan_ayah') == 'Pensiunan' ? 'selected' : '' }}>
                                                                Pensiunan</option>
                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="Karyawan Swasta"
                                                                {{ old('pekerjaan_ayah') == 'Karyawan Swasta' ? 'selected' : '' }}>
                                                                Karyawan Swasta</option>
                                                            <option style="font-size: 15px; font-weight: 600;" value="Guru"
                                                                {{ old('pekerjaan_ayah') == 'Guru' ? 'selected' : '' }}>
                                                                Guru
                                                            </option>
                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="Perangkat Desa"
                                                                {{ old('pekerjaan_ayah') == 'Perangkat Desa' ? 'selected' : '' }}>
                                                                Perangkat Desa</option>
                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="PNS/TNI/Polri"
                                                                {{ old('pekerjaan_ayah') == 'PNS/TNI/Polri' ? 'selected' : '' }}>
                                                                PNS/TNI/Polri</option>
                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="Wiraswasta"
                                                                {{ old('pekerjaan_ayah') == 'Wiraswasta' ? 'selected' : '' }}>
                                                                Wiraswasta</option>
                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="Wirausaha"
                                                                {{ old('pekerjaan_ayah') == 'Wirausaha' ? 'selected' : '' }}>
                                                                Wirausaha</option>
                                                            <option style="font-size: 15px; font-weight: 600;" value="TKI"
                                                                {{ old('pekerjaan_ayah') == 'TKI' ? 'selected' : '' }}>
                                                                TKI</option>
                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="Sudah Meninggal"
                                                                {{ old('pekerjaan_ayah') == 'Sudah Meninggal' ? 'selected' : '' }}>
                                                                Sudah Meninggal</option>
                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="Tidak Bekerja"
                                                                {{ old('pekerjaan_ayah') == 'Tidak Bekerja' ? 'selected' : '' }}>
                                                                Tidak Bekerja</option>
                                                        </select>
                                                    </div>

                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group ">
                                                        <label style="font-size: 16px; font-weight: 800;"
                                                            for="penghasilan_ayah">Penghasilan Ayah</label>
                                                        <select style="font-size: 15px; font-weight: 600;"
                                                            name="penghasilan_ayah" id="penghasilan_ayah"
                                                            class="form-control col-md-12">
                                                            <option style="font-size: 15px; font-weight: 600;" value=""
                                                                selected>
                                                                --Pilihan--</option>

                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="Rp.0 - 500.000"
                                                                {{ old('penghasilan_ayah') == 'Rp.0 - 500.000' ? 'selected' : '' }}>
                                                                Rp.0 - 500.000</option>
                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="Rp.500.000 - 999.999"
                                                                {{ old('penghasilan_ayah') == 'Rp.500.000 - 999.999' ? 'selected' : '' }}>
                                                                Rp.500.000 - 999.999</option>
                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="Rp.1.000.000 - 1.999.999"
                                                                {{ old('penghasilan_ayah') == 'Rp.1.000.000 - 1.999.999' ? 'selected' : '' }}>
                                                                Rp.1.000.000 - 1.999.999</option>
                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="Rp.2.000.000 - 4.999.999"
                                                                {{ old('penghasilan_ayah') == 'Rp.2.000.000 - 4.999.999' ? 'selected' : '' }}>
                                                                Rp.2.000.000 - 4.999.999</option>
                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="Rp.5.000.000 - 20.000.000"
                                                                {{ old('penghasilan_ayah') == 'Rp.5.000.000 - 20.000.000' ? 'selected' : '' }}>
                                                                Rp.5.000.000 - 20.000.000</option>
                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="Lebih dari 20.000.000"
                                                                {{ old('penghasilan_ayah') == 'Lebih dari 20.000.000' ? 'selected' : '' }}>
                                                                Lebih dari 20.000.000</option>

                                                        </select>
                                                    </div>
                                                </div>
                                            </div>



                                        </div>
                                    </div>
                                </div>

                                {{-- Sebelah Kanan --}}
                                <div class="col-md-6">
                                    <div class="card card-secondary">

                                        <div class="card-body">
                                            <div class="form-group">
                                                <label style="font-size: 16px; font-weight: 800;" for="nama_ibu">Nama Ibu
                                                    Kandung</label>
                                                <input type="text" style="font-size: 15px; font-weight: 600;"
                                                    class="@error('nama_ibu') is-invalid @enderror form-control"
                                                    id="nama_ibu" name="nama_ibu" value="{{ old('nama_ibu') }}">
                                                @error('nama_ibu')
                                                    <span class="text text-danger">{{ $message }}</span>
                                                @enderror
                                            </div>
                                            <div class="form-group">
                                                <label style="font-size: 16px; font-weight: 800;" for="nik_ibu">NIK Ibu
                                                </label>
                                                <input type="text" style="font-size: 15px; font-weight: 600;"
                                                    class="form-control" id="nik_ibu" name="nik_ibu"
                                                    value="{{ old('nik_ibu') }}">
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label style="font-size: 16px; font-weight: 800;"
                                                            for="tahun_lahir_ibu">Tahun Lahir Ibu </label>
                                                        <input type="text" style="font-size: 15px; font-weight: 600;"
                                                            class="form-control" id="tahun_lahir_ibu"
                                                            name="tahun_lahir_ibu" value="{{ old('tahun_lahir_ibu') }}">
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group ">
                                                        <label style="font-size: 16px; font-weight: 800;"
                                                            for="pendidikan_ibu">Pendidikan Ibu</label>
                                                        <select style="font-size: 15px; font-weight: 600;"
                                                            name="pendidikan_ibu" id="pendidikan_ibu"
                                                            class="form-control col-md-12">
                                                            <option style="font-size: 15px; font-weight: 600;" value=""
                                                                selected>
                                                                --Pilihan--</option>

                                                            <option style="font-size: 15px; font-weight: 600;" value="SD/MI"
                                                                {{ old('pendidikan_ibu') == 'SD/MI' ? 'selected' : '' }}>
                                                                SD/MI
                                                            </option>
                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="SMP/MTS"
                                                                {{ old('pendidikan_ibu') == 'SMP/MTS' ? 'selected' : '' }}>
                                                                SMP/MTS
                                                            </option>
                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="SMA/MA"
                                                                {{ old('pendidikan_ibu') == 'SMA/MA' ? 'selected' : '' }}>
                                                                SMA/MA
                                                            </option>
                                                            <option style="font-size: 15px; font-weight: 600;" value="SMK"
                                                                {{ old('pendidikan_ibu') == 'SMK' ? 'selected' : '' }}>
                                                                SMK</option>
                                                            <option style="font-size: 15px; font-weight: 600;" value="D1"
                                                                {{ old('pendidikan_ibu') == 'D1' ? 'selected' : '' }}>D1
                                                            </option>
                                                            <option style="font-size: 15px; font-weight: 600;" value="S1"
                                                                {{ old('pendidikan_ibu') == 'S1' ? 'selected' : '' }}>
                                                                S1</option>
                                                            <option style="font-size: 15px; font-weight: 600;" value="S2"
                                                                {{ old('pendidikan_ibu') == 'S2' ? 'selected' : '' }}>
                                                                S2</option>
                                                            <option style="font-size: 15px; font-weight: 600;" value="S3"
                                                                {{ old('pendidikan_ibu') == 'S3' ? 'selected' : '' }}>
                                                                S3</option>
                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="Tidak Sekolah"
                                                                {{ old('pendidikan_ibu') == 'Tidak Sekolah' ? 'selected' : '' }}>
                                                                Tidak Sekolah</option>

                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group ">
                                                        <label style="font-size: 16px; font-weight: 800;"
                                                            for="pekerjaan_ibu">Pekerjaan Ibu</label>
                                                        <select style="font-size: 15px; font-weight: 600;"
                                                            name="pekerjaan_ibu" id="pekerjaan_ibu"
                                                            class="form-control col-md-12">
                                                            <option style="font-size: 15px; font-weight: 600;" value=""
                                                                selected>
                                                                --Pilihan--</option>

                                                            <option style="font-size: 15px; font-weight: 600;" value="Buruh"
                                                                {{ old('pekerjaan_ibu') == 'Buruh' ? 'selected' : '' }}>
                                                                Buruh
                                                            </option>
                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="Nelayan"
                                                                {{ old('pekerjaan_ibu') == 'Nelayan' ? 'selected' : '' }}>
                                                                Nelayan
                                                            </option>
                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="Petani"
                                                                {{ old('pekerjaan_ibu') == 'Petani' ? 'selected' : '' }}>
                                                                Petani
                                                            </option>
                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="Peternak"
                                                                {{ old('pekerjaan_ibu') == 'Peternak' ? 'selected' : '' }}>
                                                                Peternak
                                                            </option>
                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="Pedagang"
                                                                {{ old('pekerjaan_ibu') == 'Pedagang' ? 'selected' : '' }}>
                                                                Pedagang
                                                            </option>
                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="Pensiunan"
                                                                {{ old('pekerjaan_ibu') == 'Pensiunan' ? 'selected' : '' }}>
                                                                Pensiunan</option>
                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="Karyawan Swasta"
                                                                {{ old('pekerjaan_ibu') == 'Karyawan Swasta' ? 'selected' : '' }}>
                                                                Karyawan Swasta</option>
                                                            <option style="font-size: 15px; font-weight: 600;" value="Guru"
                                                                {{ old('pekerjaan_ibu') == 'Guru' ? 'selected' : '' }}>
                                                                Guru
                                                            </option>
                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="Perangkat Desa"
                                                                {{ old('pekerjaan_ibu') == 'Perangkat Desa' ? 'selected' : '' }}>
                                                                Perangkat Desa</option>
                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="PNS/TNI/Polri"
                                                                {{ old('pekerjaan_ibu') == 'PNS/TNI/Polri' ? 'selected' : '' }}>
                                                                PNS/TNI/Polri</option>
                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="Wiraswasta"
                                                                {{ old('pekerjaan_ibu') == 'Wiraswasta' ? 'selected' : '' }}>
                                                                Wiraswasta</option>
                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="Wirausaha"
                                                                {{ old('pekerjaan_ibu') == 'Wirausaha' ? 'selected' : '' }}>
                                                                Wirausaha</option>
                                                            <option style="font-size: 15px; font-weight: 600;" value="TKI"
                                                                {{ old('pekerjaan_ibu') == 'TKI' ? 'selected' : '' }}>
                                                                TKI</option>
                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="Sudah Meninggal"
                                                                {{ old('pekerjaan_ibu') == 'Sudah Meninggal' ? 'selected' : '' }}>
                                                                Sudah Meninggal</option>
                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="Tidak Bekerja"
                                                                {{ old('pekerjaan_ibu') == 'Tidak Bekerja' ? 'selected' : '' }}>
                                                                Tidak Bekerja</option>
                                                        </select>
                                                    </div>

                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group ">
                                                        <label style="font-size: 16px; font-weight: 800;"
                                                            for="penghasilan_ibu">Penghasilan Ibu</label>
                                                        <select style="font-size: 15px; font-weight: 600;"
                                                            name="penghasilan_ibu" id="penghasilan_ibu"
                                                            class="form-control col-md-12">
                                                            <option style="font-size: 15px; font-weight: 600;" value=""
                                                                selected>
                                                                --Pilihan--</option>

                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="Rp.0 - 500.000"
                                                                {{ old('penghasilan_ibu') == 'Rp.0 - 500.000' ? 'selected' : '' }}>
                                                                Rp.0 - 500.000</option>
                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="Rp.500.000 - 999.999"
                                                                {{ old('penghasilan_ibu') == 'Rp.500.000 - 999.999' ? 'selected' : '' }}>
                                                                Rp.500.000 - 999.999</option>
                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="Rp.1.000.000 - 1.999.999"
                                                                {{ old('penghasilan_ibu') == 'Rp.1.000.000 - 1.999.999' ? 'selected' : '' }}>
                                                                Rp.1.000.000 - 1.999.999</option>
                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="Rp.2.000.000 - 4.999.999"
                                                                {{ old('penghasilan_ibu') == 'Rp.2.000.000 - 4.999.999' ? 'selected' : '' }}>
                                                                Rp.2.000.000 - 4.999.999</option>
                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="Rp.5.000.000 - 20.000.000"
                                                                {{ old('penghasilan_ibu') == 'Rp.5.000.000 - 20.000.000' ? 'selected' : '' }}>
                                                                Rp.5.000.000 - 20.000.000</option>
                                                            <option style="font-size: 15px; font-weight: 600;"
                                                                value="Lebih dari 20.000.000"
                                                                {{ old('penghasilan_ibu') == 'Lebih dari 20.000.000' ? 'selected' : '' }}>
                                                                Lebih dari 20.000.000</option>

                                                        </select>
                                                    </div>
                                                </div>
                                            </div>



                                        </div>
                                    </div>
                                </div>
                            </div>
                            {{-- Baris ke kelima --}}


                            {{-- modal list sekolah --}}
                            {{-- <div class="modal fade " id="modalListAsalSekolah" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
                                <div class="modal-dialog modal-xl" role="document">
                                  <div class="modal-content">
                                      <div class="modal-header">
                                          <h5 class="modal-title">Pilih Asal Sekolah
                                            <button id="btnTambahData" type="button" class="btn btn-primary mb-3" data-toggle="modal" data-target="#modalAsalSekolah">
                                              <i class="fa fa-plus-circle" aria-hidden="true"></i> Tambah Data Sekolah
                                            </button>
                                          </h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                              <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                    <div class="modal-body">
                                      <div class="container-fluid">
                                        <table id="dataTableSekolah" class="dataTable table table-bordered table-striped" role="grid">
                                          <thead>
                                              <tr>
                                                  <th>#</th>
                                                  <th>NPSN</th>
                                                  <th>Nama Sekolah</th>
                                                  <th>Alamat</th>
                                                  <th>Aksi</th>
                                              </tr>
                                          </thead>
                                          <tbody>
                            
                                          </tbody>
                                          <tfoot>
                                              <tr>
                                                  <th>#</th>
                                                  <th>NPSN</th>
                                                  <th>Nama Sekolah</th>
                                                  <th>Alamat</th>
                                                  <th>Aksi</th>
                                              </tr>
                                          </tfoot>
                                        </table>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                            </div> --}}
                            {{-- modal list sekolah --}}

                            <div class="row ">
                                <div class="col-md-12 ">
                                    <div class="card card-dark d-flex justify-content-center">
                                        <div class="card-body">
                                            <div class="row ">
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label style="font-size: 16px; font-weight: 800;"
                                                            for="asal_sekolah">Asal Sekolah
                                                        </label>
                                                        <input type="text" name="asal_sekolah" id="asal_sekolah"
                                                            class="@error('asal_sekolah') is-invalid @enderror form-control col-md-12">
                                                        {{-- <button type="button" class="btn btn-primary btn-md" type="button" data-toggle="modal" data-target="#modalListAsalSekolah">Pilih Sekolah</button> --}}
                                                        {{-- <select style="font-size: 15px; font-weight: 600;" name="asal_sekolah"  id="asal_sekolah" class="@error('asal_sekolah') is-invalid @enderror form-control col-md-12">
                                                                <option style="font-size: 15px; font-weight: 600;" value="" selected>--Pilihan--</option>                                 
                                                                @foreach ($asal_sekolah as $item)
                                                                <option style="font-size: 15px; font-weight: 600;" value="{{$item->id}}" {{ old('asal_sekolah') == $item->id ? 'selected' : '' }}> {{$item->nama_sekolah}}</option>
                                                                    
                                                                @endforeach
                                                            </select> --}}
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label style="font-size: 16px; font-weight: 800;"
                                                            for="no_peserta_un">No. Peserta UN</label>
                                                        <input type="text" style="font-size: 15px; font-weight: 600;"
                                                            class="@error('no_peserta_un') is-invalid @enderror form-control"
                                                            id="no_peserta_un" name="no_peserta_un"
                                                            value="{{ old('no_peserta_un') }}">
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label style="font-size: 16px; font-weight: 800;"
                                                            for="no_seri_ijazah">No. Seri Ijazah</label>
                                                        <input type="text" style="font-size: 15px; font-weight: 600;"
                                                            class="@error('no_seri_ijazah') is-invalid @enderror form-control"
                                                            id="no_seri_ijazah" name="no_seri_ijazah"
                                                            value="{{ old('no_seri_ijazah') }}">
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label style="font-size: 16px; font-weight: 800;"
                                                            for="no_seri_skhun">No. Seri SKHUN</label>
                                                        <input type="text" style="font-size: 15px; font-weight: 600;"
                                                            class="@error('no_seri_skhun') is-invalid @enderror form-control"
                                                            id="no_seri_skhun" name="no_seri_skhun"
                                                            value="{{ old('no_seri_skhun') }}">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>


                            {{-- Baris ke keenam --}}
                            <div class="row">
                                {{-- Sebelah Kiri --}}
                                <div class="col-md-6">
                                    {{-- baaas --}}




                                    {{-- batas --}}

                                    <div class="card-header">
                                        <a id="btn_tambah_wali" class="btn btn-warning" data-toggle="collapse"
                                            href="#collapsewali" role="button" aria-expanded="false"
                                            aria-controls="collapsewali">
                                            Tutup Data Wali
                                        </a>
                                    </div>
                                    <h6 id="note_for_btn_wali">*Tutup Kembali Jika tidak ada Wali / Kosongkan</h6>

                                    <div class="card card-dark">
                                        <div class="collapse show" id="collapsewali">
                                            <div class="card-body">

                                                <div class="form-group">
                                                    <label style="font-size: 16px; font-weight: 800;" for="nama_wali">Nama
                                                        Wali
                                                        Kandung</label>
                                                    <input type="text" style="font-size: 15px; font-weight: 600;"
                                                        class="form-control" id="nama_wali" name="nama_wali"
                                                        value="{{ old('nama_wali') }}">
                                                </div>
                                                <div class="form-group">
                                                    <label style="font-size: 16px; font-weight: 800;" for="nik_wali">NIK
                                                        Wali
                                                    </label>
                                                    <input type="text" style="font-size: 15px; font-weight: 600;"
                                                        class="form-control" id="nik_wali" name="nik_wali"
                                                        value="{{ old('nik_wali') }}">
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label style="font-size: 16px; font-weight: 800;"
                                                                for="tahun_lahir_wali">Tahun Lahir Wali </label>
                                                            <input type="text" style="font-size: 15px; font-weight: 600;"
                                                                class="form-control" id="tahun_lahir_wali"
                                                                name="tahun_lahir_wali"
                                                                value="{{ old('tahun_lahir_wali') }}">
                                                        </div>

                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group ">
                                                            <label style="font-size: 16px; font-weight: 800;"
                                                                for="pendidikan_wali">Pendidikan Wali</label>
                                                            <select style="font-size: 15px; font-weight: 600;"
                                                                name="pendidikan_wali" id="pendidikan_wali"
                                                                class="form-control col-md-12">
                                                                <option style="font-size: 15px; font-weight: 600;" value=""
                                                                    selected>
                                                                    --Pilihan--</option>

                                                                <option style="font-size: 15px; font-weight: 600;"
                                                                    value="SD/MI"
                                                                    {{ old('pendidikan_wali') == 'SD/MI' ? 'selected' : '' }}>
                                                                    SD/MI
                                                                </option>
                                                                <option style="font-size: 15px; font-weight: 600;"
                                                                    value="SMP/MTS"
                                                                    {{ old('pendidikan_wali') == 'SMP/MTS' ? 'selected' : '' }}>
                                                                    SMP/MTS
                                                                </option>
                                                                <option style="font-size: 15px; font-weight: 600;"
                                                                    value="SMA/MA"
                                                                    {{ old('pendidikan_wali') == 'SMA/MA' ? 'selected' : '' }}>
                                                                    SMA/MA
                                                                </option>
                                                                <option style="font-size: 15px; font-weight: 600;"
                                                                    value="SMK"
                                                                    {{ old('pendidikan_wali') == 'SMK' ? 'selected' : '' }}>
                                                                    SMK</option>
                                                                <option style="font-size: 15px; font-weight: 600;"
                                                                    value="D1"
                                                                    {{ old('pendidikan_wali') == 'D1' ? 'selected' : '' }}>
                                                                    D1</option>
                                                                <option style="font-size: 15px; font-weight: 600;"
                                                                    value="S1"
                                                                    {{ old('pendidikan_wali') == 'S1' ? 'selected' : '' }}>
                                                                    S1</option>
                                                                <option style="font-size: 15px; font-weight: 600;"
                                                                    value="S2"
                                                                    {{ old('pendidikan_wali') == 'S2' ? 'selected' : '' }}>
                                                                    S2</option>
                                                                <option style="font-size: 15px; font-weight: 600;"
                                                                    value="S3"
                                                                    {{ old('pendidikan_wali') == 'S3' ? 'selected' : '' }}>
                                                                    S3</option>
                                                                <option style="font-size: 15px; font-weight: 600;"
                                                                    value="Tidak Sekolah"
                                                                    {{ old('pendidikan_wali') == 'Tidak Sekolah' ? 'selected' : '' }}>
                                                                    Tidak Sekolah</option>

                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group ">
                                                            <label style="font-size: 16px; font-weight: 800;"
                                                                for="pekerjaan_wali">Pekerjaan Wali</label>
                                                            <select style="font-size: 15px; font-weight: 600;"
                                                                name="pekerjaan_wali" id="pekerjaan_wali"
                                                                class="form-control col-md-12">
                                                                <option style="font-size: 15px; font-weight: 600;" value=""
                                                                    selected>
                                                                    --Pilihan--</option>

                                                                <option style="font-size: 15px; font-weight: 600;"
                                                                    value="Buruh"
                                                                    {{ old('pekerjaan_wali') == 'Buruh' ? 'selected' : '' }}>
                                                                    Buruh
                                                                </option>
                                                                <option style="font-size: 15px; font-weight: 600;"
                                                                    value="Nelayan"
                                                                    {{ old('pekerjaan_wali') == 'Nelayan' ? 'selected' : '' }}>
                                                                    Nelayan
                                                                </option>
                                                                <option style="font-size: 15px; font-weight: 600;"
                                                                    value="Petani"
                                                                    {{ old('pekerjaan_wali') == 'Petani' ? 'selected' : '' }}>
                                                                    Petani
                                                                </option>
                                                                <option style="font-size: 15px; font-weight: 600;"
                                                                    value="Peternak"
                                                                    {{ old('pekerjaan_wali') == 'Peternak' ? 'selected' : '' }}>
                                                                    Peternak
                                                                </option>
                                                                <option style="font-size: 15px; font-weight: 600;"
                                                                    value="Pedagang"
                                                                    {{ old('pekerjaan_wali') == 'Pedagang' ? 'selected' : '' }}>
                                                                    Pedagang
                                                                </option>
                                                                <option style="font-size: 15px; font-weight: 600;"
                                                                    value="Pensiunan"
                                                                    {{ old('pekerjaan_wali') == 'Pensiunan' ? 'selected' : '' }}>
                                                                    Pensiunan</option>
                                                                <option style="font-size: 15px; font-weight: 600;"
                                                                    value="Karyawan Swasta"
                                                                    {{ old('pekerjaan_wali') == 'Karyawan Swasta' ? 'selected' : '' }}>
                                                                    Karyawan Swasta</option>
                                                                <option style="font-size: 15px; font-weight: 600;"
                                                                    value="Guru"
                                                                    {{ old('pekerjaan_wali') == 'Guru' ? 'selected' : '' }}>
                                                                    Guru
                                                                </option>
                                                                <option style="font-size: 15px; font-weight: 600;"
                                                                    value="Perangkat Desa"
                                                                    {{ old('pekerjaan_wali') == 'Perangkat Desa' ? 'selected' : '' }}>
                                                                    Perangkat Desa</option>
                                                                <option style="font-size: 15px; font-weight: 600;"
                                                                    value="PNS/TNI/Polri"
                                                                    {{ old('pekerjaan_wali') == 'PNS/TNI/Polri' ? 'selected' : '' }}>
                                                                    PNS/TNI/Polri</option>
                                                                <option style="font-size: 15px; font-weight: 600;"
                                                                    value="Wiraswasta"
                                                                    {{ old('pekerjaan_wali') == 'Wiraswasta' ? 'selected' : '' }}>
                                                                    Wiraswasta</option>
                                                                <option style="font-size: 15px; font-weight: 600;"
                                                                    value="Wirausaha"
                                                                    {{ old('pekerjaan_wali') == 'Wirausaha' ? 'selected' : '' }}>
                                                                    Wirausaha</option>
                                                                <option style="font-size: 15px; font-weight: 600;"
                                                                    value="TKI"
                                                                    {{ old('pekerjaan_wali') == 'TKI' ? 'selected' : '' }}>
                                                                    TKI</option>
                                                                <option style="font-size: 15px; font-weight: 600;"
                                                                    value="Sudah Meninggal"
                                                                    {{ old('pekerjaan_wali') == 'Sudah Meninggal' ? 'selected' : '' }}>
                                                                    Sudah Meninggal</option>
                                                                <option style="font-size: 15px; font-weight: 600;"
                                                                    value="Tidak Bekerja"
                                                                    {{ old('pekerjaan_wali') == 'Tidak Bekerja' ? 'selected' : '' }}>
                                                                    Tidak Bekerja</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group ">
                                                            <label style="font-size: 16px; font-weight: 800;"
                                                                for="penghasilan_wali">Penghasilan Wali</label>
                                                            <select style="font-size: 15px; font-weight: 600;"
                                                                name="penghasilan_wali" id="penghasilan_wali"
                                                                class="form-control col-md-12">
                                                                <option style="font-size: 15px; font-weight: 600;" value=""
                                                                    selected>
                                                                    --Pilihan--</option>

                                                                <option style="font-size: 15px; font-weight: 600;"
                                                                    value="Rp.0 - 500.000"
                                                                    {{ old('penghasilan_wali') == 'Rp.0 - 500.000' ? 'selected' : '' }}>
                                                                    Rp.0 - 500.000</option>
                                                                <option style="font-size: 15px; font-weight: 600;"
                                                                    value="Rp.500.000 - 999.999"
                                                                    {{ old('penghasilan_wali') == 'Rp.500.000 - 999.999' ? 'selected' : '' }}>
                                                                    Rp.500.000 - 999.999</option>
                                                                <option style="font-size: 15px; font-weight: 600;"
                                                                    value="Rp.1.000.000 - 1.999.999"
                                                                    {{ old('penghasilan_wali') == 'Rp.1.000.000 - 1.999.999' ? 'selected' : '' }}>
                                                                    Rp.1.000.000 - 1.999.999</option>
                                                                <option style="font-size: 15px; font-weight: 600;"
                                                                    value="Rp.2.000.000 - 4.999.999"
                                                                    {{ old('penghasilan_wali') == 'Rp.2.000.000 - 4.999.999' ? 'selected' : '' }}>
                                                                    Rp.2.000.000 - 4.999.999</option>
                                                                <option style="font-size: 15px; font-weight: 600;"
                                                                    value="Rp.5.000.000 - 20.000.000"
                                                                    {{ old('penghasilan_wali') == 'Rp.5.000.000 - 20.000.000' ? 'selected' : '' }}>
                                                                    Rp.5.000.000 - 20.000.000</option>
                                                                <option style="font-size: 15px; font-weight: 600;"
                                                                    value="Lebih dari 20.000.000"
                                                                    {{ old('penghasilan_wali') == 'Lebih dari 20.000.000' ? 'selected' : '' }}>
                                                                    Lebih dari 20.000.000</option>

                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>





                                            </div>
                                        </div>

                                    </div>
                                </div>

                                {{-- Sebelah Kanan --}}
                                <div class="col-md-6">
                                    <label style="font-size: 15px; font-weight: 800;" for="jalur">Jalur</label>
                                    <select style="font-size: 15px; font-weight: 600; height: 40px;" name="jalur" id="jalur"
                                        class="form-control col-md-6 ">
                                        <option style="font-size: 15px; font-weight: 600;" value="" disabled selected>
                                            --Pilihan--</option>
                                        <option style="font-size: 15px; font-weight: 600;" value="Prestasi">
                                            Prestasi</option>
                                        <option style="font-size: 15px; font-weight: 600;" value="Umum">Umum
                                        </option>
                                    </select>
                                    <h6 id="note_for_prestasi">*Pilih Umum Jika tidak ada Prestasi / Kosongkan</h6>

                                    <div class="card card-dark">
                                        <div class="card card-body">
                                            <div id="prestasi" class="">
                                                <div class="card card-body">
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label style="font-size: 16px; font-weight: 800;"
                                                                    for="no_jenis_prestasi">
                                                                    Jenis Prestasi</label>
                                                                <input type="text"
                                                                    style="font-size: 15px; font-weight: 600;"
                                                                    class="form-control" id="jenis_prestasi"
                                                                    name="jenis_prestasi"
                                                                    value="{{ old('jenis_prestasi') }}">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label style="font-size: 16px; font-weight: 800;"
                                                                    for="tingkat_prestasi">
                                                                    Tingkat Prestasi</label>
                                                                <input type="text"
                                                                    style="font-size: 15px; font-weight: 600;"
                                                                    class="form-control" id="tingkat_prestasi"
                                                                    name="tingkat_prestasi"
                                                                    value="{{ old('tingkat_prestasi') }}">
                                                            </div>
                                                        </div>

                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label style="font-size: 16px; font-weight: 800;"
                                                                    for="nama_prestasi">
                                                                    Nama Prestasi</label>
                                                                <input type="text"
                                                                    style="font-size: 15px; font-weight: 600;"
                                                                    class="form-control" id="nama_prestasi"
                                                                    name="nama_prestasi"
                                                                    value="{{ old('nama_prestasi') }}">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label style="font-size: 16px; font-weight: 800;"
                                                                    for="tahun_prestasi">
                                                                    Tahun Prestasi</label>
                                                                <input type="text"
                                                                    style="font-size: 15px; font-weight: 600;"
                                                                    class="form-control" id="tahun_prestasi"
                                                                    name="tahun_prestasi"
                                                                    value="{{ old('tahun_prestasi') }}">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label style="font-size: 16px; font-weight: 800;"
                                                                    for="penyelenggara_prestasi">
                                                                    Penyelenggara</label>
                                                                <input type="text"
                                                                    style="font-size: 15px; font-weight: 600;"
                                                                    class="form-control" id="penyelenggara_prestasi"
                                                                    name="penyelenggara_prestasi"
                                                                    value="{{ old('penyelenggara_prestasi') }}">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label style="font-size: 16px; font-weight: 800;"
                                                                    for="peringkat_prestasi">
                                                                    Peringkat</label>
                                                                <input type="text"
                                                                    style="font-size: 15px; font-weight: 600;"
                                                                    class="form-control" id="peringkat_prestasi"
                                                                    name="peringkat_prestasi"
                                                                    value="{{ old('peringkat_prestasi') }}">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                </div>
                                    <div class="col-md-4 d-flex justify-content-center">
                                        <div class="form-group">
                                            <label style="font-size: 16px; font-weight: 800;"
                                                for="kode_referal">
                                                Referral Code</label>
                                            <input type="text"
                                                style="font-size: 15px; font-weight: 600;"
                                                class="form-control justify-content-center" id="kode_referal"
                                                name="kode_referal"
                                                value="{{ old('kode_referal') }}">
                                        </div>
                                    </div>
                                    <div class="col-md-4">

                                    </div>
                            </div>

                            <div class="d-flex justify-content-end">
                                {{-- <button class="btn btn-warning btm-md justify-content-end mr-3">Kembai</button> --}}
                                <button class="btn btn-success btm-md justify-content-end mr-3 text-dark"
                                    style="border-radius: 10px; background: rgb(101, 255, 80);">Daftarkan</button>

                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </div>
    <div class="row">
         <div class="col">
            <div class="card">
                <div class="card-header">
                  <h4>Data Referral Code</h4>
                </div>
                <div class="card-body">
                  <div class="table-responsive">
                    <table class="table table-striped" id="referal_code">
                      <thead>
                        <tr>
                            <th>No</th>
                            <th>Kode Referral</th>
                            <th>Nama</th>
                            <th>No. Handphone</th>
                            <th>Referensi</th>
                            <th>Sekolah</th>
                            <th>Jumlah penggunaan</th>
                        </tr>
                      </thead>
                      <tbody>
                        @foreach ($referal_code as $i => $u)
                        @php
                        $data = App\Models\CalonSiswa::where('referal_code_id',$u->id)->get();
                      //   dd($data);  
                      $pendapat = $data->count() * 100000;
                      $pendapatan = "Rp " . number_format($pendapat,2,',','.');
                      
                      @endphp
                        <tr>
                            <td>{{++$i}}</td>
                            <td><b>{{$u->ref_code}}</b></td>
                            <td><a
                                data-toggle="modal"
                                id="detail_pendaftar_referalButton"
                                data-attr="{{ route('panitia.pendaftar_referal', $u->id) }}"
                                data-target=".modal_detail_pendaftar"
                                href="#"
                                class=" text-primary"
                                >
                                
                                {{$u->nama}}    
                            </a></td>
                            <td>{{$u->no_hp}}</td>
                            <td>{{$u->tipe_ref}}</td>
                            <td>{{$u->sekolah}}</td>
                            <td>Jumlah pendaftar {{$data->count()}}</td>
                            <!--<td>
                                <a href="/anggota/edit/#" class="btn btn-primary btn-sm ml-2" data-toggle="tooltip" data-placement="bottom" title="Tooltip on bottom"><i class="fa fa-pen"></i></a>
                                <a href="/anggota/delete/#" class="btn btn-danger btn-sm ml-2"><i class="fa fa-trash"></i></a>
                            </td>     -->     
                        @endforeach        
                    </tbody>
                    </table>
                  </div>
                </div>
              </div>
         </div>
    </div>

    <div class="row">
      <div class="col">
        <div class="card" >
            <div class="card-header">
                Data  Calon Siswa dan Pembayaran
            </div>
            <div class="card-header">
                @foreach ($gugus as $item)
                <a  class="btn btn-secondary rounded text-dark m-1 update-all-check" id="update-all-check" data-id="{{$item->id}}">{{$item->nama_gugus}}</a>
                    
                @endforeach
            </div>
            
           
            <div class="card-body">

                <table class="table table-striped" id="data_casis">
                    <thead>
                        <tr>
                            <th>Checked</th>
                            <th>Nama</th>
                            <th>Status</th>
                            <th>Progress</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                @if ($casis == null || collect($casis)->isEmpty() )
                        <tr>
                            <td rowspan="4">Data Tidak ada</td>
                        </tr>
                @else 

                @foreach ($casis as $item)
                @php
                $data_pembayaran = App\Models\Pembayaran::first();
                
                $pembayaran_acc =  App\Models\PembayaranCalonSiswa::where('calonsiswa_id',$item->id)->where('status','=',1)->get();
                $nominal_menyeluruh = [];
                foreach ($pembayaran_acc as $key ) {
                    $nominal_menyeluruh[] = $key->nominal  ;
                   } 
                   $total_pembayaran = array_sum($nominal_menyeluruh);
                   
                   $ratio = $total_pembayaran / $data_pembayaran->nominal_pembayaran * 100;
                 @endphp
                    <tr id="sid{{$item->id}}">
                        <td>
                            @if ($ratio == 100.0)
                            <input type="checkbox" name="ids" id="{{$item->id}}" class="checkBoxClass mt-3"  value="{{$item->id}}">
                        @endif
                        </td>
                        
                        <td>
                            <div class="row">
                                <div class="col-4">
                                    @if (File::exists(public_path(Auth::user()->avatar)))
                                    <img class="rounded-circle profile-widget-picture" width="80" height="80" alt="image"
                                        src="{{ asset(Auth::user()->avatar) }}">
                                @else
                                    <img class="rounded-circle profile-widget-picture" width="80" height="80" alt="image"
                                        src="{{ asset('img/avatar/avatar-1.png') }}">
                                      
                                    @endif
                                </div>
                          
                                <div class="col-7 row">
                                    <div class="col-12">
                                        {{ $item->nama_lengkap }}
                                    </div>
                                    <div class="col-12">
                                        {{$item->nik}}
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="media-body row">
                                <div class="col-12">
                                    @if ($ratio == 100.0)
                                    <div class="text-job rounded badge badge-success text-dark"> Lunas</div>
                                        @else
                                    <div class="text-job rounded badge badge-warning text-dark">Belum Lunas</div>
                                    @endif
                                </div>
                            
                                
                            </div>
                        </td>
                        <td>
                            <div class="media-progressbar mt-2">
                                <div class="progress progress-striped active">
                                    @if ($ratio >= 100.0)
                                    <div class="bg-success progress-bar progress-bar-success text-dark" role="progressbar"
                                    aria-valuenow="0"  aria-valuemax="{{$data_pembayaran->nominal_pembayaran}}" style="width: {{$ratio}}%;">{{$ratio}} %  </div>
                                    @elseif($ratio >= 50.0)
                                    <div class="bg-warning progress-bar progress-bar-warning text-dark" role="progressbar"
                                    aria-valuenow="0"  aria-valuemax="{{$data_pembayaran->nominal_pembayaran}}" style="width: {{$ratio}}%;">{{$ratio}} %  </div>
                                    @elseif($ratio >= 25.0)
                                    <div class="bg-primary progress-bar progress-bar-primary text-dark" role="progressbar"
                                    aria-valuenow="0"  aria-valuemax="{{$data_pembayaran->nominal_pembayaran}}" style="width: {{$ratio}}%;">{{$ratio}} %  </div>
                                    @else
                                    <div class="bg-secondary progress-bar progress-bar-secondary text-dark" role="progressbar"
                                    aria-valuenow="0"  aria-valuemax="{{$data_pembayaran->nominal_pembayaran}}" style="width: {{$ratio}}%;">{{$ratio}} %  </div>
                                    @endif
                                </div>
                             
                            </div>
                        </td>
                        <td>
                            <div class="media-cta">
                                <div class="dropdown d-inline">
                                    <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton2"
                                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <i class="fas fa-cogs"></i> Validasi
                                    </button>

                                    <div class="dropdown-menu">


                                        <a type="button" class="text-dark dropdown-item" data-toggle="modal"
                                            id="largeButton"
                                            data-attr="{{ route('panitia.validasi_pembayaran', $item->id) }}"
                                            data-target=".bd-example-modal-xl"><i
                                                class="fas fa-edit text-gray-300 mr-2"></i>Konfirmasi Pembayaran</a>

                                        <a class="text-warning dropdown-item" href="{{route('panitia.detail.casis',$item->id)}}">
                                            <i class="fas fa-search text-yellow-300 mr-2"></i>Detail Calon Siswa
                                        </a>


                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>
                    @endforeach
                @endif
                    </tbody>
                </table>
               
            </div>

        </div>
      </div>
    </div>

    <div class="row">
        <div class="col-12 ">
          <div class="card">
              <div class="card-header ">
                  <h4>Gugus Data Siswa</h4>
              </div>
                <div class="card-header">
                    <table class="text-center"  border="2" style="border-color:black; width:400px;">
                        <thead>
                            <tr>
                                <th>Warna</th>
                                <th>Arti</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr >
                                <td style="border-color: black;background-color: white;"></td>
                                <td>Belum Mendapat Kelas</td>
                            </tr>
                            <tr >
                                <td style="border-color: black;background-color: rgb(82, 147, 227);"></td>
                                <td>Sudah Mendapat Kelas</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
             

            
            <div class="card-body  justify-content-center">
              <ul class="nav nav-tabs" id="myTab" role="tablist">
                  @foreach ($gugus as $item)
                  <li class="nav-item">
                    <a class="nav-link " id="gugus{{$loop->iteration}}-tab" data-toggle="tab" href="#gugus{{$loop->iteration}}" role="tab" aria-controls="gugus{{$loop->iteration}}" aria-selected="false">{{$item->nama_gugus}}</a>
                  </li>
                      
                  @endforeach
                {{-- <li class="nav-item">
                  <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Profile</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">Contact</a>
                </li> --}}
              </ul>
              <div class="tab-content show_data_gugus" id="show_data_gugus">
                @foreach ($gugus as $list)
                @php
                     $casis_gugus = App\Models\CalonSiswa::where('gugus_id','=',$list->id)->get();  
                @endphp
                 <div class="tab-pane fade " id="gugus{{$loop->iteration}}" role="tabpanel" aria-labelledby="gugus{{$loop->iteration}}-tab">
                    @if ($casis_gugus->isEmpty() == false)

                    <a href="{{route('panitia.edit.penempatanKelasGugus',$list->id)}}" class="btn btn-sm btn-primary rounded m-2">Tentukan Kelas</a>

                    
                    @endif
                     <table class="table table-lg gugus" id="">
                         <thead>
                           <tr>
                             <th scope="col">Nama</th>
                             <th scope="col">NIK</th>
                         
                           </tr>
                         </thead>
                         <tbody>
                             @if ($casis_gugus->isEmpty())
                                 <tr>
                                         <td class="text-dark">
                                                 <h4>
                                     Calon Siswa di {{$list->nama_gugus}} Masih Kosong
                
                                                 </h4>
                                         </td>
                                 </tr>
                                 @else 
                                 @foreach ($casis_gugus as $item)
                                 <tr  style="{{ $item->user->role_id == 3 ? "color:white; background-color: rgb(82, 147, 227)" : ""}}">
                                   <th scope="row">{{$item->nama_lengkap}}</th>
                                   <td>{{$item->nik}}</td>
                                 </tr>
                                 @endforeach
                             @endif
                         </tbody>
                       </table>
                 </div>
                
                 @endforeach
                
                
                

                {{-- <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                  Sed sed metus vel lacus hendrerit tempus. Sed efficitur velit tortor, ac efficitur est lobortis quis. Nullam lacinia metus erat, sed fermentum justo rutrum ultrices. Proin quis iaculis tellus. Etiam ac vehicula eros, pharetra consectetur dui. Aliquam convallis neque eget tellus efficitur, eget maximus massa imperdiet. Morbi a mattis velit. Donec hendrerit venenatis justo, eget scelerisque tellus pharetra a.
                </div>
                <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
                  Vestibulum imperdiet odio sed neque ultricies, ut dapibus mi maximus. Proin ligula massa, gravida in lacinia efficitur, hendrerit eget mauris. Pellentesque fermentum, sem interdum molestie finibus, nulla diam varius leo, nec varius lectus elit id dolor. Nam malesuada orci non ornare vulputate. Ut ut sollicitudin magna. Vestibulum eget ligula ut ipsum venenatis ultrices. Proin bibendum bibendum augue ut luctus.
                </div> --}}
              </div>
            </div>
          </div>
        </div>
      </div>

    <div class="modal fade modal_detail_pendaftar" id="largeModal" tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body" id="detail_pendaftar_referalBody">
                <div>

                </div>
            </div>
        </div>
    </div>
    </div>




    <div class="modal fade bd-example-modal-xl" id="largeModal" tabindex="-1" role="dialog"
        aria-labelledby="myExtraLargeModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body" id="largeBody">
                    <div>

                    </div>
                </div>
            </div>
        </div>
    </div>


    <!-- Modal -->
    <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="{{ route('panitia.store.referalcode') }}" id="form-referal" method="POST">
                        @csrf
                        <div class="card-body">
                            {{-- Baris Pertama --}}
                            <div class="row">
                                {{-- Sebelah Kanan --}}
                                <div class="col-md-6">

                                    <div class="form-group">
                                        <label>Nama Lengkap</label>
                                        <div class="input-group">
                                            <input type="text" class="form-control" name="nama" id="nama" value="">
            
                                            <div class="invalid-feedback" >
                                                Nama tidak boleh koosng
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label>Email Lengkap</label>
                                        <div class="input-group">
                                            <input type="text" class="form-control" name="email" id="email_referal" value="">
            
                                            <div class="invalid-feedback" >
                                                Email tidak boleh koosng
                                            </div>
                                        </div>
                                    </div>

                                  

                                </div>
                                <div class="col-md-6">

                                    <div class="form-group">
                                        <label>No Hp</label>
                                        <div class="input-group">
                                            <input type="text" class="form-control" name="no_hp" id="no_hp" value="">
                                                
                                            <div class="invalid-feedback" >
                                                No Hp tidak boleh koosng
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label>Kelas</label>
                                        <div class="input-group">
                                            <select style="font-size: 15px; font-weight: 600;" name="kelas" id="kelas"
                                            class="form-control col-md-12">
                                            <option style="font-size: 15px; font-weight: 600;" value="" selected>
                                                --Pilihan--</option>
                                            @foreach ($kelas as $item)
                                                <option style="font-size: 15px; font-weight: 600;"
                                                    value="{{ $item->nama_kelas }}"
                                                    {{ old('kelas') == "$item->nama_kelas" ? 'selected' : '' }}>
                                                    {{ $item->nama_kelas }}</option>

                                            @endforeach

                                        </select>
                                            <div class="invalid-feedback" >
                                                Kelas tidak boleh koosng
                                            </div>
                                        </div>
                                    </div>
                                    
                                    {{-- <div class="form-group">
                                        <label style="font-size: 16px; font-weight: 800;" for="kelas">Kelas</label>
                                        <select style="font-size: 15px; font-weight: 600;" name="kelas" id="kelas"
                                            class="form-control col-md-12">
                                            <option style="font-size: 15px; font-weight: 600;" value="" selected>
                                                --Pilihan--</option>
                                            @foreach ($kelas as $item)
                                                <option style="font-size: 15px; font-weight: 600;"
                                                    value="{{ $item->nama_kelas }}"
                                                    {{ old('kelas') == "$item->nama_kelas" ? 'selected' : '' }}>
                                                    {{ $item->nama_kelas }}</option>

                                            @endforeach

                                        </select>
                                        @error('nik')
                                            <span class="text text-danger">{{ $message }}</span>
                                        @enderror
                                    </div> --}}

                                </div>


                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button id="tambah_referal" class="btn btn-success btm-md justify-content-end mr-3 text-dark"
                                style="border-radius: 10px; background: rgb(101, 255, 80);">Daftarkan</button>

                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>




    @elseif (Route::is('dashboard.casis') || Route::is('pembayaran.casis'))

        {{-- @elseif(JWTAuth::user()->role->name == 'manager') --}}
        <div class="row">
            <div class="col">
                <div class="card card-info profile-widget">
                    <div class="profile-widget-header">
                        @if (File::exists(public_path(Auth::user()->avatar)))
                        <img class="rounded-circle profile-widget-picture" style="height: 150px;" alt="image"
                            src="{{ asset(Auth::user()->avatar) }}">
                    @else
                        <img class="rounded-circle profile-widget-picture" alt="image"
                            src="{{ asset('img/avatar/avatar-1.png') }}">
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
                                        @if (JWTAuth::user()->spesifc_role == 'casis')
                                            Calon Siswa
                                        @endif
                                        {{-- {{ JWTAuth::user()->spesifc_role }} --}}
                                    </div>
                                </div>
                            </span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="section-body">
            @yield('content_casis')
        </div>
                        {{-- @if () --}}
                            
                        {{-- @endif --}}












        @endif


    @endsection

    @push('css')
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.24/css/dataTables.bootstrap4.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.2.9/css/responsive.bootstrap.min.css">
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

            .modal-backdrop {
                z-index: 1040 !important;
            }

            .modal-content {
                margin: 2px auto;
                z-index: 1100 !important;
            }


            .scrolling-wrapper {
                overflow-x: auto;
            }

        </style>

    @endpush

    @push('js')

        <script type="text/javascript" src="{{ URL::asset('js/pendaftaran_casis.js') }}"></script>
        <script type="text/javascript" src="{{ URL::asset('js/tambah_pendaftaran.js') }}"></script>
        <script type="text/javascript" src="{{ URL::asset('js/dashboard.js') }}"></script>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.inputmask/3.1.62/jquery.inputmask.bundle.js"></script>
        <script src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.24/js/dataTables.bootstrap4.min.js"></script>
        <script src="https://cdn.datatables.net/responsive/2.2.9/js/responsive.bootstrap.min.js"></script>
        <script src="https://cdn.datatables.net/responsive/2.2.9/js/dataTables.responsive.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.1.7/dist/sweetalert2.all.min.js"></script>

    @endpush
