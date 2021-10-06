<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />

    <title>Mentor Bootstrap Template - Index</title>
    <meta content="" name="description" />
    <meta content="" name="keywords" />

    <!-- Favicons -->

    <link href="{{ asset('template/assets/img/favicon.png') }}" rel="icon" />

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
    @include('template.navbar')
    @include('template.background')

    <div class="container pt-5">
        <h2 class="text-center"><b>Data Tamatan SMK Taruna Bhakti</b></h2>
        <hr>
        <br>
        <nav class="nav nav-tabs flex-column flex-sm-row mt-1">
            @foreach ($jurusan as $key => $item)
                <a class="flex-sm-fill text-sm-center nav-link {{ $key == 0 ? 'active' : '' }}" aria-current="page"
                    data-bs-toggle="tab" data-bs-target="#{{ $item->singkatan }}"><b>{{ $item->jurusan }}</b></a>
            @endforeach
        </nav>
        <div class="tab-content mb-5" id="myTabContent">
            <div class="tab-pane kekanan fade show active " id="TKJ" role="tabpanel" aria-labelledby="home-tab">

                <!-- Kerja -->
                <h5 class="mt-5"><b>DATA TAMATAN Teknik Komputer dan Jaringan YANG BEKERJA</b></h5>
                <div class="kekanan">

                    <table class="table mt-4">
                        <thead>
                            <tr style="background: #2689c9;" class="text-white">
                                <th scope="col">NO</th>
                                <th scope="col">NAMA</th>
                                <th scope="col">TAHUN LULUS</th>
                                <th scope="col">NAMA PERUSAHAAN</th>
                                <th scope="col">POSISI</th>
                                <th scope="col">MULAI BEKERJA TAHUN</th>
                                <th scope="col">PENGHASILAN</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($tkjKerja as $id => $item)
                                <tr>
                                    <th scope="row">{{ ++$id }}</th>
                                    <td>{{ $item->name }}</td>
                                    <td>{{ $item->tahun_lulus }}</td>
                                    <td>{{ $item->nama_perusahaan }}</td>
                                    <td>{{ $item->posisi }}</td>
                                    <td>{{ $item->tahun_kerja }}</td>
                                    <td>{{ number_format($item->penghasilan) }}</td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
                <br>

                <!-- Kuliah -->
                <h5 class="mt-5"><b>DATA TAMATAN Teknik Komputer Jaringan YANG KULIAH</b></h5>

                <div class="kekanan">
                    <table class="table mt-4">
                        <thead>
                            <tr style="background: #2689c9;" class="text-white">
                                <th scope="col">NO</th>
                                <th scope="col">NAMA</th>
                                <th scope="col">TAHUN LULUS</th>
                                <th scope="col">NAMA PERGURUAN TINGGI</th>
                                <th scope="col">PROGRAM STUDI</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($tkjKuliah as $id => $item)
                                <tr>
                                    <th scope="row">{{ ++$id }}</th>
                                    <td>{{ $item->name }}</td>
                                    <td>{{ $item->tahun_lulus }}</td>
                                    <td>{{ $item->nama_perusahaan }}</td>
                                    <td>{{ $item->posisi }}</td>
                                </tr>
                            @endforeach

                        </tbody>
                    </table>
                </div>
                <br>

                <!-- Wirausaha -->
                <h5 class="mt-5"><b>DATA TAMATAN Teknik Komputer Jaringan YANG BERWIRAUSAHA</b></h5>

                <div class="kekanan">
                    <table class="table mt-4">
                        <thead>
                            <tr style="background: #2689c9;" class="text-white">
                                <th scope="col">NO</th>
                                <th scope="col">NAMA</th>
                                <th scope="col">TAHUN LULUS</th>
                                <th scope="col">BIDANG USAHA</th>
                                <th scope="col">PENGHASILAN</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($tkjWira as $id => $item)
                                <tr>
                                    <th scope="row">{{ ++$id }}</th>
                                    <td>{{ $item->name }}</td>
                                    <td>{{ $item->tahun_lulus }}</td>
                                    <td>{{ $item->nama_perusahaan }}</td>
                                    <td>{{ number_format($item->penghasilan) }}</td>
                                </tr>
                            @endforeach


                        </tbody>
                    </table>
                </div>
                <br>

            </div>
            <div class="tab-pane kekanan fade" id="MM" role="tabpanel" aria-labelledby="profile-tab">

                <!-- Kerja -->
                <h5 class="mt-5"><b>DATA TAMATAN Multimedia YANG BEKERJA</b></h5>

                <div class="kekanan">
                    <table class="table mt-4">
                        <thead>
                            <tr style="background: #2689c9;" class="text-white">
                                <th scope="col">NO</th>
                                <th scope="col">NAMA</th>
                                <th scope="col">TAHUN LULUS</th>
                                <th scope="col">NAMA PERUSAHAAN</th>
                                <th scope="col">POSISI</th>
                                <th scope="col">MULAI BEKERJA TAHUN</th>
                                <th scope="col">PENGHASILAN</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($mmKerja as $id => $item)
                                <tr>
                                    <th scope="row">{{ ++$id }}</th>
                                    <td>{{ $item->name }}</td>
                                    <td>{{ $item->tahun_lulus }}</td>
                                    <td>{{ $item->nama_perusahaan }}</td>
                                    <td>{{ $item->posisi }}</td>
                                    <td>{{ $item->tahun_kerja }}</td>
                                    <td>{{ number_format($item->penghasilan) }}</td>
                                </tr>
                            @endforeach

                        </tbody>
                    </table>
                </div>
                <br>

                <!-- Kuliah -->
                <h5 class="mt-5"><b>DATA TAMATAN Multimedia YANG KULIAH</b></h5>

                <div class="kekanan">
                    <table class="table mt-4">
                        <thead>
                            <tr style="background: #2689c9;" class="text-white">
                                <th scope="col">NO</th>
                                <th scope="col">NAMA</th>
                                <th scope="col">TAHUN LULUS</th>
                                <th scope="col">NAMA PERGURUAN TINGGI</th>
                                <th scope="col">PROGRAM STUDI</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($mmKuliah as $id => $item)
                                <tr>
                                    <th scope="row">{{ ++$id }}</th>
                                    <td>{{ $item->name }}</td>
                                    <td>{{ $item->tahun_lulus }}</td>
                                    <td>{{ $item->nama_perusahaan }}</td>
                                    <td>{{ $item->posisi }}</td>
                                </tr>
                            @endforeach

                        </tbody>
                    </table>
                </div>
                <br>

                <!-- Wirausaha -->
                <h5 class="mt-5"><b>DATA TAMATAN Multimedia YANG BERWIRAUSAHA</b></h5>

                <div class="kekanan">
                    <table class="table mt-4">
                        <thead>
                            <tr style="background: #2689c9;" class="text-white">
                                <th scope="col">NO</th>
                                <th scope="col">NAMA</th>
                                <th scope="col">TAHUN LULUS</th>
                                <th scope="col">BIDANG USAHA</th>
                                <th scope="col">PENGHASILAN</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($mmWira as $id => $item)
                                <tr>
                                    <th scope="row">{{ ++$id }}</th>
                                    <td>{{ $item->name }}</td>
                                    <td>{{ $item->tahun_lulus }}</td>
                                    <td>{{ $item->nama_perusahaan }}</td>
                                    <td>{{ number_format($item->penghasilan) }}</td>
                                </tr>
                            @endforeach

                        </tbody>
                    </table>
                </div>
                <br>

            </div>
            <div class="tab-pane kekanan fade" id="RPL" role="tabpanel" aria-labelledby="contact-tab">

                <!-- Kerja -->
                <h5 class="mt-5"><b>DATA TAMATAN Rekayasa Perangkat Lunak YANG BEKERJA</b></h5>

                <div class="kekanan">
                    <table class="table mt-4">
                        <thead>
                            <tr style="background: #2689c9;" class="text-white">
                                <th scope="col">NO</th>
                                <th scope="col">NAMA</th>
                                <th scope="col">TAHUN LULUS</th>
                                <th scope="col">NAMA PERUSAHAAN</th>
                                <th scope="col">POSISI</th>
                                <th scope="col">MULAI BEKERJA TAHUN</th>
                                <th scope="col">PENGHASILAN</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($rplKerja as $id => $item)
                                <tr>
                                    <th scope="row">{{ ++$id }}</th>
                                    <td>{{ $item->name }}</td>
                                    <td>{{ $item->tahun_lulus }}</td>
                                    <td>{{ $item->nama_perusahaan }}</td>
                                    <td>{{ $item->posisi }}</td>
                                    <td>{{ $item->tahun_kerja }}</td>
                                    <td>{{ number_format($item->penghasilan) }}</td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
                <br>

                <!-- Kuliah -->
                <h5 class="mt-5"><b>DATA TAMATAN Rekayasa Perangkat Lunak YANG KULIAH</b></h5>

                <div class="kekanan">
                    <table class="table mt-4">
                        <thead>
                            <tr style="background: #2689c9;" class="text-white">
                                <th scope="col">NO</th>
                                <th scope="col">NAMA</th>
                                <th scope="col">TAHUN LULUS</th>
                                <th scope="col">NAMA PERGURUAN TINGGI</th>
                                <th scope="col">PROGRAM STUDI</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($rplKuliah as $id => $item)
                                <tr>
                                    <th scope="row">{{ ++$id }}</th>
                                    <td>{{ $item->name }}</td>
                                    <td>{{ $item->tahun_lulus }}</td>
                                    <td>{{ $item->nama_perusahaan }}</td>
                                    <td>{{ $item->posisi }}</td>
                                </tr>
                            @endforeach


                        </tbody>
                    </table>
                </div>
                <br>


                <!-- Wirausaha -->
                <h5 class="mt-5"><b>DATA TAMATAN Rekayasa Perangkat Lunak YANG BERWIRAUSAHA</b></h5>

                <div class="kekanan">
                    <table class="table mt-4">
                        <thead>
                            <tr style="background: #2689c9;" class="text-white">
                                <th scope="col">NO</th>
                                <th scope="col">NAMA</th>
                                <th scope="col">TAHUN LULUS</th>
                                <th scope="col">BIDANG USAHA</th>
                                <th scope="col">PENGHASILAN</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($rplWira as $id => $item)
                                <tr>
                                    <th scope="row">{{ ++$id }}</th>
                                    <td>{{ $item->name }}</td>
                                    <td>{{ $item->tahun_lulus }}</td>
                                    <td>{{ $item->nama_perusahaan }}</td>
                                    <td>{{ number_format($item->penghasilan) }}</td>
                                </tr>
                            @endforeach


                        </tbody>
                    </table>
                </div>
                <br>

            </div>
            <div class="tab-pane kekanan fade" id="BC" role="tabpanel" aria-labelledby="contact-tab">

                <!-- Kerja -->
                <h5 class="mt-5"><b>DATA TAMATAN Broadcasting YANG BEKERJA</b></h5>

                <div class="kekanan">
                    <table class="table mt-4">
                        <thead>
                            <tr style="background: #2689c9;" class="text-white">
                                <th scope="col">NO</th>
                                <th scope="col">NAMA</th>
                                <th scope="col">TAHUN LULUS</th>
                                <th scope="col">NAMA PERUSAHAAN</th>
                                <th scope="col">POSISI</th>
                                <th scope="col">MULAI BEKERJA TAHUN</th>
                                <th scope="col">PENGHASILAN</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($bcKerja as $id => $item)
                                <tr>
                                    <th scope="row">{{ ++$id }}</th>
                                    <td>{{ $item->name }}</td>
                                    <td>{{ $item->tahun_lulus }}</td>
                                    <td>{{ $item->nama_perusahaan }}</td>
                                    <td>{{ $item->posisi }}</td>
                                    <td>{{ $item->tahun_kerja }}</td>
                                    <td>{{ number_format($item->penghasilan) }}</td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
                <br>

                <!-- Kuliah -->
                <h5 class="mt-5"><b>DATA TAMATAN Broadcasting YANG KULIAH</b></h5>

                <div class="kekanan">
                    <table class="table mt-4">
                        <thead>
                            <tr style="background: #2689c9;" class="text-white">
                                <th scope="col">NO</th>
                                <th scope="col">NAMA</th>
                                <th scope="col">TAHUN LULUS</th>
                                <th scope="col">NAMA PERGURUAN TINGGI</th>
                                <th scope="col">PROGRAM STUDI</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($bcKuliah as $id => $item)
                                <tr>
                                    <th scope="row">{{ ++$id }}</th>
                                    <td>{{ $item->name }}</td>
                                    <td>{{ $item->tahun_lulus }}</td>
                                    <td>{{ $item->nama_perusahaan }}</td>
                                    <td>{{ $item->posisi }}</td>
                                </tr>
                            @endforeach

                        </tbody>
                    </table>
                </div>
                <br>


                <!-- Wirausaha -->
                <h5 class="mt-5"><b>DATA TAMATAN Broadcasting YANG BERWIRAUSAHA</b></h5>

                <div class="kekanan">
                    <table class="table mt-4">
                        <thead>
                            <tr style="background: #2689c9;" class="text-white">
                                <th scope="col">NO</th>
                                <th scope="col">NAMA</th>
                                <th scope="col">TAHUN LULUS</th>
                                <th scope="col">BIDANG USAHA</th>
                                <th scope="col">PENGHASILAN</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($bcWira as $id => $item)
                                <tr>
                                    <th scope="row">{{ $loop->iteration }}</th>
                                    <td>{{ $item->name }}</td>
                                    <td>{{ $item->tahun_lulus }}</td>
                                    <td>{{ $item->nama_perusahaan }}</td>
                                    <td>{{ number_format($item->penghasilan) }}</td>
                                </tr>
                            @endforeach

                        </tbody>
                    </table>
                </div>
                <br>

            </div>
            <div class="tab-pane kekanan fade" id="TEI" role="tabpanel" aria-labelledby="contact-tab">

                <!-- Kerja -->
                <h5 class="mt-5"><b>DATA TAMATAN Teknik Elekrtonika Industri YANG BEKERJA</b></h5>

                <div class="kekanan">
                    <table class="table mt-4">
                        <thead>
                            <tr style="background: #2689c9;" class="text-white">
                                <th scope="col">NO</th>
                                <th scope="col">NAMA</th>
                                <th scope="col">TAHUN LULUS</th>
                                <th scope="col">NAMA PERUSAHAAN</th>
                                <th scope="col">POSISI</th>
                                <th scope="col">MULAI BEKERJA TAHUN</th>
                                <th scope="col">PENGHASILAN</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($teiKerja as $id => $item)
                                <tr>
                                    <th scope="row">{{ ++$id }}</th>
                                    <td>{{ $item->name }}</td>
                                    <td>{{ $item->tahun_lulus }}</td>
                                    <td>{{ $item->nama_perusahaan }}</td>
                                    <td>{{ $item->posisi }}</td>
                                    <td>{{ $item->tahun_kerja }}</td>
                                    <td>{{ number_format($item->penghasilan) }}</td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
                <br>

                <!-- Kuliah -->
                <h5 class="mt-5"><b>DATA TAMATAN Teknik Elekrtonika Industri YANG KULIAH</b></h5>

                <div class="kekanan">
                    <table class="table mt-4">
                        <thead>
                            <tr style="background: #2689c9;" class="text-white">
                                <th scope="col">NO</th>
                                <th scope="col">NAMA</th>
                                <th scope="col">TAHUN LULUS</th>
                                <th scope="col">NAMA PERGURUAN TINGGI</th>
                                <th scope="col">PROGRAM STUDI</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($teiKuliah as $id => $item)
                                <tr>
                                    <th scope="row">{{ ++$id }}</th>
                                    <td>{{ $item->name }}</td>
                                    <td>{{ $item->tahun_lulus }}</td>
                                    <td>{{ $item->nama_perusahaan }}</td>
                                    <td>{{ $item->posisi }}</td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
                <br>


                <!-- Wirausaha -->
                <h5 class="mt-5"><b>DATA TAMATAN Teknik Elekrtonika Industri YANG BERWIRAUSAHA</b></h5>

                <div class="kekanan">
                    <table class="table mt-4">
                        <thead>
                            <tr style="background: #2689c9;" class="text-white">
                                <th scope="col">NO</th>
                                <th scope="col">NAMA</th>
                                <th scope="col">TAHUN LULUS</th>
                                <th scope="col">BIDANG USAHA</th>
                                <th scope="col">PENGHASILAN</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($teiWira as $id => $item)
                                <tr>
                                    <th scope="row">{{ $loop->iteration }}</th>
                                    <td>{{ $item->name }}</td>
                                    <td>{{ $item->tahun_lulus }}</td>
                                    <td>{{ $item->nama_perusahaan }}</td>
                                    <td>{{ number_format($item->penghasilan) }}</td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
                <br>

            </div>
        </div>
    </div>


    @include('template.footer')
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
