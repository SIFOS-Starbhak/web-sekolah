@extends('layouts.app')
@section('title', 'Dashboard')
@section('judul', 'Welcome')

@section('main')
    @if (Route::is('dashboard.siswa'))
        <div class="row">
            <div class="col">
                <div class="card profile-widget">
                    <div class="profile-widget-header">
                        <img alt="image" src="{{ asset('img/avatar/avatar-1.png') }}"
                            class="rounded-circle profile-widget-picture">
                        <div class="profile-widget-items">
                            <div class="profile-widget-item">
                                <div class="profile-widget-item-label">NISN</div>
                                <div class="profile-widget-item-value">{{ Auth::guard('siswa')->user()->nipd }}</div>
                            </div>
                            <div class="profile-widget-item">
                                <div class="profile-widget-item-label">Email</div>
                                <div class="profile-widget-item-value">{{ Auth::guard('siswa')->user()->email }}</div>
                            </div>
                        </div>
                    </div>
                    <div class="profile-widget-description">
                        <div class="profile-widget-name">{{ Auth::guard(Auth::getDefaultDriver())->user()->name }}
                            <div class="text-muted d-inline font-weight-normal">
                                <div class="slash"></div>
                                {{ Auth::guard('siswa')->user()->kelas->nama_kelas }}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <h1 class="section-title">WEB App Instansi SMK Taruna Bhakti
                    </h1>
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-3 col-lg-6">
                                <div class="card cardh">
                                    <div class="card cardh l-bg-blue-dark caleg">
                                        <div class="card-statistic-3 p-4">
                                            <a href="" class="d-block text-decoration-none">
                                                <div class="card-icon card-icon-large"><i
                                                        class="fas fa-chalkboard-teacher"></i>
                                                </div>
                                                <div class="mb-4">
                                                    <h5 class="card-title mb-0 text-dark">Portal SMK
                                                        Taruna Bhakti</h5>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-lg-6">
                                <div class="card cardh">
                                    <div class="card cardh l-bg-cherry">
                                        <div class="card-statistic-3 p-4">
                                            <a href="" class="d-block text-decoration-none">
                                                <div class="card-icon card-icon-large"><i class="fas fa-briefcase"></i>
                                                </div>
                                                <div class="mb-4">
                                                    <h5 class="card-title mb-0 text-dark">Sitakols SMK
                                                        Taruna Bhakti</h5>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-lg-6">
                                <div class="card cardh">
                                    <div class="card cardh l-bg-green">
                                        <div class="card-statistic-3 p-4">
                                            <a href="" class="d-block text-decoration-none">
                                                <div class="card-icon card-icon-large"><i class="fas fa-clipboard-list"></i>
                                                </div>
                                                <div class="mb-4">
                                                    <h5 class="card-title mb-0 text-dark">Presensi Absensi
                                                        SMK Taruna Bhakti</h5>
                                                </div>

                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-lg-6">
                                <div class="card cardh">
                                    <div class="card cardh l-bg-blue">
                                        <div class="card-statistic-3 p-4">
                                            <a href="" class="d-block text-decoration-none">
                                                <div class="card-icon card-icon-large"><i class="fas fa-building"></i>
                                                </div>
                                                <div class="mb-4">
                                                    <h5 class="card-title mb-0 text-dark">Company Profile
                                                        SMK Taruna Bhakti</h5>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div id="collapse-4" class="collapse hide" aria-labelledby="heading-4">
                                    <div class="card-body ">
                                        <div class="col-12 ">
                                            <p class="d-flex align-items-center mb-0 text-dark">
                                                Company Profile tentang SMK Taruna Bhakti
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-12 col-sm-6 col-lg-3">
            <div class="card">
                <div class="card-body text-center">
                    <div class="mb-2">Info Message</div>
                    <button class="btn btn-primary" id="toastr-1">Launch</button>
                </div>
            </div>
        </div>

    @elseif (Route::is('dashboard.guru'))
        <div class="row">
            <div class="col">
                <div class="card profile-widget">
                    <div class="profile-widget-header">
                        <img alt="image" src="{{ asset('img/avatar/avatar-1.png') }}"
                            class="rounded-circle profile-widget-picture">
                        <div class="profile-widget-items">
                            <div class="profile-widget-item">
                                <div class="profile-widget-item-label">NIK</div>
                                <div class="profile-widget-item-value">
                                    {{ Auth::guard(Auth::getDefaultDriver())->user()->nik }}</div>
                            </div>
                            <div class="profile-widget-item">
                                <div class="profile-widget-item-label">Email</div>
                                <div class="profile-widget-item-value">
                                    {{ Auth::guard(Auth::getDefaultDriver())->user()->email }}</div>
                            </div>
                        </div>
                    </div>
                    <div class="profile-widget-description">
                        <div class="profile-widget-name">{{ Auth::guard(Auth::getDefaultDriver())->user()->name }}
                            <div class="text-muted d-inline font-weight-normal">
                                <div class="slash"></div>
                                <div class="badge badge-primary">
                                    {{ Auth::guard(Auth::getDefaultDriver())->user()->jabatan }}
                                </div>
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
                            <div class="col-xl-3 col-lg-6">
                                <div class="card cardh">
                                    <div class="card cardh l-bg-blue-dark caleg">
                                        <div class="card-statistic-3 p-4">
                                            <a href="" class="d-block text-decoration-none">
                                                <div class="card-icon card-icon-large"><i
                                                        class="fas fa-chalkboard-teacher"></i>
                                                </div>
                                                <div class="mb-4">
                                                    <h5 class="card-title mb-0 text-dark">Portal SMK
                                                        Taruna Bhakti</h5>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-lg-6">
                                <div class="card cardh">
                                    <div class="card cardh l-bg-cherry">
                                        <div class="card-statistic-3 p-4">
                                            <a href="" class="d-block text-decoration-none">
                                                <div class="card-icon card-icon-large"><i class="fas fa-briefcase"></i>
                                                </div>
                                                <div class="mb-4">
                                                    <h5 class="card-title mb-0 text-dark">Sitakols SMK
                                                        Taruna Bhakti</h5>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-lg-6">
                                <div class="card cardh">
                                    <div class="card cardh l-bg-green">
                                        <div class="card-statistic-3 p-4">
                                            <a href="" class="d-block text-decoration-none">
                                                <div class="card-icon card-icon-large"><i
                                                        class="fas fa-clipboard-list"></i>
                                                </div>
                                                <div class="mb-4">
                                                    <h5 class="card-title mb-0 text-dark">Presensi Absensi
                                                        SMK Taruna Bhakti</h5>
                                                </div>

                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-lg-6">
                                <div class="card cardh">
                                    <div class="card cardh l-bg-blue">
                                        <div class="card-statistic-3 p-4">
                                            <a href="" class="d-block text-decoration-none">
                                                <div class="card-icon card-icon-large"><i class="fas fa-building"></i>
                                                </div>
                                                <div class="mb-4">
                                                    <h5 class="card-title mb-0 text-dark">Company Profile
                                                        SMK Taruna Bhakti</h5>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div id="collapse-4" class="collapse hide" aria-labelledby="heading-4">
                                    <div class="card-body ">
                                        <div class="col-12 ">
                                            <p class="d-flex align-items-center mb-0 text-dark">
                                                Company Profile tentang SMK Taruna Bhakti
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        {{-- @elseif (Route::is('dashboard.manager')) --}}

    @else
        <div class="row">
            <div class="col">
                <div class="card card-info profile-widget">
                    <div class="profile-widget-header">
                        <img alt="image" src="{{ asset('img/avatar/avatar-1.png') }}"
                            class="rounded-circle profile-widget-picture">
                        <div class="profile-widget-items">
                            <div class="profile-widget-item">
                                <div class="profile-widget-item-label">NIK</div>
                                <div class="profile-widget-item-value">
                                    {{ Auth::guard(Auth::getDefaultDriver())->user()->nik }}</div>
                            </div>
                            <div class="profile-widget-item">
                                <div class="profile-widget-item-label">Email</div>
                                <div class="profile-widget-item-value">
                                    {{ Auth::guard(Auth::getDefaultDriver())->user()->email }}</div>
                            </div>
                        </div>
                    </div>
                    <div class="profile-widget-description">
                        <div class="profile-widget-name">{{ Auth::guard(Auth::getDefaultDriver())->user()->name }}
                            <div class="text-muted d-inline font-weight-normal">
                                <div class="slash"></div>
                                <div class="badge badge-primary">
                                    {{ Auth::guard(Auth::getDefaultDriver())->user()->jabatan }}
                                </div>
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
                            <div class="col-xl-3 col-lg-6">
                                <a href="" class="d-block text-decoration-none">
                                    <div class="card cardh">
                                        <div class="card cardh l-bg-blue-dark caleg">
                                            <div class="card-statistic-3 p-4">
                                                <div class="card-icon card-icon-large"><i
                                                        class="fas fa-chalkboard-teacher"></i>
                                                </div>
                                                <div class="mb-4">
                                                    <h5 class="card-title mb-0 text-dark">Portal SMK
                                                        Taruna Bhakti</h5>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </a>

                            </div>
                            <div class="col-xl-3 col-lg-6">
                                <a href="" class="d-block text-decoration-none">
                                    <div class="card cardh">
                                        <div class="card cardh l-bg-cherry">
                                            <div class="card-statistic-3 p-4">
                                                <div class="card-icon card-icon-large"><i class="fas fa-briefcase"></i>
                                                </div>
                                                <div class="mb-4">
                                                    <h5 class="card-title mb-0 text-dark">Sitakols SMK
                                                        Taruna Bhakti</h5>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </a>

                            </div>
                            <div class="col-xl-3 col-lg-6">
                                <a href="" class="d-block text-decoration-none">
                                    <div class="card cardh">
                                        <div class="card cardh l-bg-green">
                                            <div class="card-statistic-3 p-4">
                                                <div class="card-icon card-icon-large"><i
                                                        class="fas fa-clipboard-list"></i>
                                                </div>
                                                <div class="mb-4">
                                                    <h5 class="card-title mb-0 text-dark">Presensi Absensi
                                                        SMK Taruna Bhakti</h5>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-xl-3 col-lg-6">
                                <a href="" class="d-block text-decoration-none">
                                    <div class="card cardh">
                                        <div class="card cardh l-bg-blue">
                                            <div class="card-statistic-3 p-4">
                                                <div class="card-icon card-icon-large"><i class="fas fa-building"></i>
                                                </div>
                                                <div class="mb-4">
                                                    <h5 class="card-title mb-0 text-dark">Company Profile
                                                        SMK Taruna Bhakti</h5>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                                <div id="collapse-4" class="collapse hide" aria-labelledby="heading-4">
                                    <div class="card-body ">
                                        <div class="col-12 ">
                                            <p class="d-flex align-items-center mb-0 text-dark">
                                                Company Profile tentang SMK Taruna Bhakti
                                            </p>
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
                                                        <a href="#">View</a>
                                                        <div class="bullet"></div>
                                                        <a href="{{ route('article.edit', $item->id) }}">Edit</a>
                                                        <div class="bullet"></div>
                                                        <form id="deleteForm"
                                                            action="{{ route('article.delete', $item->id) }}"
                                                            method="POST">
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
@endpush
