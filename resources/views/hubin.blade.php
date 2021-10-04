@include('template.navbar')
@include('template.background')

<div class="container pt-5">
<h2 class="text-center"><b>Data Tamatan SMK Taruna Bhakti</b></h2>
<hr>
<br>
<nav class="nav nav-tabs flex-column flex-sm-row mt-1">
    @foreach ($jurusan as $item)
     @if ($item->id == 1)
         
     <a class="flex-sm-fill text-sm-center nav-link active " aria-current="page" data-bs-toggle="tab" data-bs-target="#{{ $item->singkatan }}"><b>{{ $item->jurusan }}</b></a>
     @else
     <a class="flex-sm-fill text-sm-center nav-link " aria-current="page" data-bs-toggle="tab" data-bs-target="#{{ $item->singkatan }}"><b>{{ $item->jurusan }}</b></a>
     @endif
    @endforeach
</nav>
<div class="tab-content mb-5" id="myTabContent">
  <div class="tab-pane kekanan fade show active " id="TKJ" role="tabpanel" aria-labelledby="home-tab">

    <!-- Kerja -->
    <h5 class="mt-5"><b>DATA TAMATAN Teknik Komputer Jaringan YANG BEKERJA</b></h5>
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
                {{-- <tr>
                    <th scope="row">2</th>
                    <td>Arvi Dwi Septian</td>
                    <td>2008</td>
                    <td>PT. Astra International</td>
                    <td>Finance Administration</td>
                    <td>2017</td>
                    <td>diatas 5.000.000</td>
                </tr>
                <tr>
                    <th scope="row">3</th>
                    <td>Zulfikar nur Aziz</td>
                    <td>2017</td>
                    <td>PT. Meiwa Indonesia</td>
                    <td>Quality Assurance</td>
                    <td>2017</td>
                    <td>diatas 5.000.000</td>
                </tr>
                <tr>
                    <th scope="row">4</th>
                    <td>Jeffry Rivaldi</td>
                    <td>2017</td>
                    <td>PT.Panasonic Industrial Components Indonesia</td>
                    <td>Maintenance</td>
                    <td>2018</td>
                    <td>4.000.000 - 5.000.000</td>
                </tr>
                <tr>
                    <th scope="row">5</th>
                    <td>Wiwit Safitri</td>
                    <td>2014</td>
                    <td>PT. Sumber Alfaria Trijaya Tbk</td>
                    <td>Kasir</td>
                    <td>2018</td>
                    <td>3.000.000 - 4.000.000</td>
                </tr> --}}
                
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
                {{-- <tr>
                    <th scope="row">2</th>
                    <td>Achmat Sudaryanto</td>
                    <td>2016</td>
                    <td>Universitas MH Tamrin</td>
                    <td>Teknik Informatika</td>
                </tr>
                <tr>
                    <th scope="row">3</th>
                    <td>Calvin Adriaan</td>
                    <td>2017</td>
                    <td>Universitas Gunadarma</td>
                    <td>Teknik Komputer</td>
                </tr>
                <tr>
                    <th scope="row">4</th>
                    <td>Firli Fatwaliyah</td>
                    <td>2018</td>
                    <td>Bina Sarana Informatika</td>
                    <td>Akademik Management Informatika</td>
                </tr>
                <tr>
                    <th scope="row">5</th>
                    <td>Aura Azzahra Syahputri Sima</td>
                    <td>2018</td>
                    <td>Universitas Gunadarma</td>
                    <td>Sistem Informasi</td>
                </tr> --}}
                
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
                {{-- <tr>
                    <th scope="row">2</th>
                    <td>Siti Rahmah</td>
                    <td>2010</td>
                    <td>Minuman dan Makanan</td>
                    <td>5.000.000</td>
                </tr>
                <tr>
                    <th scope="row">3</th>
                    <td>Ilyas Ma'ruf</td>
                    <td>2012</td>
                    <td>Jasa</td>
                    <td>1.000.000</td>
                </tr>
                <tr>
                    <th scope="row">4</th>
                    <td>Muhammad Saipudin</td>
                    <td>2014</td>
                    <td>Penjualan</td>
                    <td>8.000.000</td>
                </tr>
                <tr>
                    <th scope="row">5</th>
                    <td>Muhammad Syamsul Bahri</td>
                    <td>2016</td>
                    <td>Pengadaan Barang</td>
                    <td>300.000</td>
                </tr> --}}
                
                
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
                {{-- <tr>
                    <th scope="row">2</th>
                    <td>Rochaeti Widayanti</td>
                    <td>2016</td>
                    <td>PT. Meiwa Indonesia Plant 2</td>
                    <td>Operator</td>
                    <td>2016</td>
                    <td>2.000.000 - 3.000.000</td>
                </tr>
                <tr>
                    <th scope="row">3</th>
                    <td>Nava Ardila Putri Muluk</td>
                    <td>2017</td>
                    <td>PT. Serena Indopangan Industri</td>
                    <td>Buruh</td>
                    <td>2017</td>
                    <td>4.000.000 - 5.000.000</td>
                </tr>
                <tr>
                    <th scope="row">4</th>
                    <td>Reksa Alvia Adzani</td>
                    <td>2018</td>
                    <td>Gramedia</td>
                    <td>Store Associate</td>
                    <td>2018</td>
                    <td>3.000.000 - 4.000.000</td>
                </tr>
                <tr>
                    <th scope="row">5</th>
                    <td>Nur Oktaviani Putri</td>
                    <td>2018</td>
                    <td>CV. Benison</td>
                    <td>SPG</td>
                    <td>2018</td>
                    <td>1.000.000 - 2.000.000</td>
                </tr> --}}
                
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
                {{-- <tr>
                    <th scope="row">2</th>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <th scope="row">3</th>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <th scope="row">4</th>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <th scope="row">5</th>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr> --}}
                
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
            {{-- <tr>
                <th scope="row">2</th>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <th scope="row">3</th>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <th scope="row">4</th>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <th scope="row">5</th>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr> --}}
            
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
            {{-- <tr>
                <th scope="row">2</th>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <th scope="row">3</th>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <th scope="row">4</th>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <th scope="row">5</th>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr> --}}
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
            {{-- <tr>
                <th scope="row">2</th>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <th scope="row">3</th>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <th scope="row">4</th>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <th scope="row">5</th>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr> --}}
            
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
            {{-- <tr>
                <th scope="row">2</th>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <th scope="row">3</th>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <th scope="row">4</th>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <th scope="row">5</th>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr> --}}
            
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
            {{-- <tr>
                <th scope="row">2</th>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <th scope="row">3</th>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <th scope="row">4</th>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <th scope="row">5</th>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr> --}}
            
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
            {{-- <tr>
                <th scope="row">2</th>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <th scope="row">3</th>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <th scope="row">4</th>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <th scope="row">5</th>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr> --}}
            
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
            {{-- <tr>
                <th scope="row">2</th>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <th scope="row">3</th>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <th scope="row">4</th>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <th scope="row">5</th>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr> --}}
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
            {{-- <tr>
                <th scope="row">2</th>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <th scope="row">3</th>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <th scope="row">4</th>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <th scope="row">5</th>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr> --}}
            
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
            {{-- <tr>
                <th scope="row">2</th>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <th scope="row">3</th>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <th scope="row">4</th>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <th scope="row">5</th>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr> --}}
            
        </tbody>
    </table>
 </div>
 <br>

  </div>
</div>
</div>


@include('template.footer')