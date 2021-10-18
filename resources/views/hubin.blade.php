@extends('template.app')
@section('title', 'Hubin')
@section('main')
    <div class="container pt-5">
        <a href="/hubin" class="col-12" style="font-size: 17px;"><i class="fas fa-arrow-left"></i>
            Kembali</a>
        <h2 class="text-center"><b>Data Tamatan SMK Taruna Bhakti</b></h2>
        <hr>
        <a style="color: white" href="/registalum"><button class="col-12 btn btn-primary text-center">Registrasi Data Tamatan
                SMK Taruna Bhakti</button></a>
        <br><br>
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
    <script>
        //message with toastr
        @if (session()->has('success'))
        
            toastr.success('{{ session('success') }}', 'BERHASIL!');
        
        @elseif(session()->has('error'))
        
            toastr.error('{{ session('error') }}', 'GAGAL!');
        
        @endif
    </script>
@endsection
