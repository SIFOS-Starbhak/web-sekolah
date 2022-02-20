@extends('layouts.app')
@section('main')
<section class="content">
    <div class="container-fluid">
      <div class="row">
        <div class="col-md-3">

          <!-- Profile Image -->
          <div class="card {{ $casis->nama_jalur == 'Prestasi' ? 'card-warning' : 'card-primary' }} card-outline">
            <div class="card-body box-profile">
              <div class="text-center">
                <img class="profile-user-img img-fluid img-circle" src="{{ asset('img/users/default.png') }}" alt="User profile picture">
              </div>

              <h4 class="profile-username text-center m-1">{{ $casis->nama_lengkap }}</h4>

              <p class="text-muted text-center">{{ $casis->asal_sekolah }}</p>
              <p class="text-muted text-center">{{  $casis->prestasiCasis == "" ? "" : "PRESTASI"}}</p>

              {{-- <ul class="list-group list-group-unbordered mb-3">
                <li class="list-group-item">
                  <b>Pilihan Jurusan 1: </b> <a class="float-right">{{ $casis->pilihan_jurusan_satu }}</a>
                </li>
                <li class="list-group-item">
                  <b>Pilihan Jurusan 2: </b> <a class="float-right">{{ $casis->pilihan_jurusan_dua }}</a>
                </li>
                <li class="list-group-item">
                  <b>Pilihan Jurusan 3: </b> <a class="float-right">{{ $casis->pilihan_jurusan_tiga }}</a>
                </li>
              </ul> --}}

              {{-- <a href="#" class="btn btn-primary btn-block"><b>Upload Foto</b></a> --}}
            </div>
          </div>
          {{-- End of Profile Image and Summary Important Data --}}

        </div>
        <div class="col-md-9">
          <div class="card">
            <div class="card-header row p-2 bg-primary">
              <div class="col-4">
                <a href="{{route('dashboard.panitia')}}" class="btn btn-md btn-secondary text-dark">Back</a>
              </div>
                <div class="col-6"> 
                  <h3 class="pt-2 pb-3 card-title text-white" style="font-size: 15px ;">Data Lengkap Calon Siswa</h3>
                </div>
                <div class="col-2">
                  <div class="dropdown">
                    <button class="btn btn-lg btn-secondary dropdown-toggle text-dark" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      <i class="fa fa-tasks" aria-hidden="true"></i> Aksi
                    </button>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenu2">
                      <a href="{{ route('panitia.edit.casis', $casis->id) }}" class="dropdown-item" type="button"><i class="fa fa-edit" aria-hidden="true"></i> Edit</a>
                      {{-- <a href="{{ route('ppdb.destroy', $casis->id) }}" data-id="{{ $casis->id }}" id="btnHapus" class="dropdown-item text-danger" type="button"><i class="fa fa-trash" aria-hidden="true"></i> Hapus</a> --}}
                    </div>
                  </div>
              </div>
            </div>
            <div class="card-body">
              <div class="row justify-content-center mb-2">
                <ul class="list-group list-group-horizontal">
                  <li class="list-group-item">ID: <span class="btn btn-sm {{ $casis->nama_jalur == 'Prestasi' ? 'btn-warning' : 'btn-primary' }}">{{ $casis->id  == null ? '-' : $casis->id  }}</span></li>
                  <li class="list-group-item">No. Daftar: <span class="btn btn-sm {{ $casis->nama_jalur == 'Prestasi' ? 'btn-warning' : 'btn-primary' }}">{{ $casis->no_daftar  == null ? '-' : $casis->no_daftar  }}</span></li>
                  <li class="list-group-item">Jalur: <span class="btn btn-sm {{ $casis->prestasiCasis == "" ? 'btn-warning' : 'btn-success' }} text-dark ">{{ $casis->prestasiCasis  == null ? '-' :  "PRESTASI" }}</span></li>
                </ul>
              </div>

              {{-- Pilihan Jurusan --}}
              <div class="card">
                <div class="card-header bg-primary">
                  <h6 class="card-title text-white"><i class="fa fa-circle"></i> Jurusan</h6>
                </div>
                <div class="card-body">
                  <div class="row">
                    <div class="col-4">
                      <p class="text-bold h6">Pilihan Jurusan 1</p>
                      <hr >
                      <p class="text-bold h6">Pilihan Jurusan 2</p>
                      <hr >
                      <p class="text-bold h6">Pilihan Jurusan 3</p>
                    </div>
                    <div class="col">
                      <p class="h6">{{ $casis->kelas_1->jurusan  == null ? '-' : $casis->kelas_1->jurusan }}</p>
                      <hr>
                      <p class="h6">{{ $casis->kelas_2->jurusan == null ? '-' :   $casis->kelas_2->jurusan }}</p>
                      <hr>  
                      <p class="h6">{{ $casis->kelas_3->jurusan == null ? '-' : $casis->kelas_3->jurusan }}</p>
                    </div>
                  </div>
                </div>
              </div>
              {{-- End --}}

              {{-- Data Siswa --}}
              <div class="card">
                <div class="card-header bg-primary">
                  <h6 class="card-title text-white"><i class="fa fa-user"></i> Data Diri</h6>
                </div>
                <div class="card-body">
                  <div class="row">
                    <div class="col-4">
                      <p class="text-bold h6">NISN</p>
                      <hr >
                      <p class="text-bold h6">Nama Lengkap</p>
                      <hr >
                      <p class="text-bold h6">Jenis Kelamin</p>
                      <hr >
                      <p class="text-bold h6">NIK</p>
                      <hr >
                      <p class="text-bold h6">No. Kartu Keluarga</p>
                      <hr >
                      <p class="text-bold h6">No. Reg. Akta Kelahiran</p>
                      <hr >
                      <p class="text-bold h6">Tempat Lahir</p>
                      <hr >
                      <p class="text-bold h6">Tanggal Lahir</p>
                      <hr >
                      <p class="text-bold h6">Agama</p>
                    </div>
                    <div class="col">
                      <p class="h6">{{ $casis->nisn   == null ? '-' :  $casis->nisn   }}</p>
                      <hr>
                      <p class="h6">{{ $casis->nama_lengkap  == null ? '-' :  $casis->nama_lengkap }}</p>
                      <hr>  
                      <p class="h6">{{ $casis->jenis_kelamin  == null ? '-' : $casis->jenis_kelamin  }}</p>
                      <hr>
                      <p class="h6">{{ $casis->nik  == null ? '-' : $casis->nik  }}</p>
                      <hr>
                      <p class="h6">{{ $casis->no_kartu_keluarga  == null ? '-' : $casis->no_kartu_keluarga  }}</p>
                      <hr>
                      <p class="h6">{{ $casis->no_reg_akta_kelahiran  == null ? '-' : $casis->no_reg_akta_kelahiran }}</p>
                      <hr>
                      <p class="h6">{{ $casis->tempat_lahir  == null ? '-' : $casis->tempat_lahir   }}</p>
                      <hr>
                      <p class="h6">{{ $casis->tanggal_lahir  == null ? '-' : $casis->tanggal_lahir  }}</p>
                      <hr>
                      <p class="h6">{{ $casis->agama  == null ? '-' : $casis->agama  }}</p>
                    </div>
                  </div>
                </div>
              </div>
              {{-- End --}}

              {{-- Alamat --}}
              <div class="card">
                <div class="card-header bg-primary">
                  <h6 class="card-title text-white"><i class="fa fa-home"></i> Alamat</h6>
                </div>
                <div class="card-body">
                  <div class="row">
                    <div class="col-4">
                      <p class="text-bold h6">Alamat</p>
                      <hr >
                      <p class="text-bold h6">RT</p>
                      <hr >
                      <p class="text-bold h6">RW</p>
                      <hr >
                      <p class="text-bold h6">Dusun</p>
                      <hr >
                      <p class="text-bold h6">Desa/Kelurahan</p>
                      <hr >
                      <p class="text-bold h6">Kecamatan</p>
                      <hr >
                      <p class="text-bold h6">Kode Pos</p>
                      <hr >
                      <p class="text-bold h6">Kabupaten</p>
                    </div>
                    <div class="col">
                      <p class="h6">{{ $casis->alamat   == null ? '-' : $casis->alamat }}</p>
                      <hr>
                      <p class="h6">{{ $casis->rt  == null ? '-' :  $casis->rt }}</p>
                      <hr>  
                      <p class="h6">{{ $casis->rw  == null ? '-' :  $casis->rw}}</p>
                      <hr>
                      <p class="h6">{{ $casis->dusun  == null ? '-' : $casis->dusun}}</p>
                      <hr>
                      <p class="h6">{{ $casis->desa_kelurahan  == null ? '-' : $casis->desa_kelurahan  }}</p>
                      <hr>
                      <p class="h6">{{ $casis->kecamatan  == null ? '-' : $casis->kecamatan }}</p>
                      <hr>
                      <p class="h6">{{ $casis->kode_pos  == null ? '-' :  $casis->kode_pos }}</p>
                      <hr>
                      <p class="h6">{{ $casis->kabupaten  == null ? '-' : $casis->kabupaten }}</p>
                    </div>
                  </div>
                </div>
              </div>
              {{-- End --}}

              {{-- Tinggal bersama dan transportasi--}}
              <div class="card">
                <div class="card-header bg-primary">
                  <h6 class="card-title text-white"><i class="fa fa-home"></i> <i class="fa fa-car"></i> Tempat Tinggal dan Transportasi</h6>
                </div>
                <div class="card-body">
                  <div class="row">
                    <div class="col-4">
                      <p class="text-bold h6">Tempat Tinggal</p>
                      <hr >
                      <p class="text-bold h6">Transportasi</p>
                    </div>
                    <div class="col">
                      <p class="h6">{{ $casis->tempat_tinggal == null ? '-' : $casis->tempat_tinggal}}</p>
                      <hr>
                      <p class="h6">{{ $casis->transportasi == null ? '-' : $casis->transportasi}}</p>
                    </div>
                  </div>
                </div>
              </div>
              {{-- End --}}

              {{-- Kip --}}
              <div class="card">
                <div class="card-header bg-primary">
                  <h6 class="card-title text-white"><i class="fa fa-credit-card"></i> KIP (Kartu Indonesia Pintar)</h6>
                </div>
                <div class="card-body">
                  <div class="row">
                    <div class="col-4">
                      <p class="text-bold h6">Punya KIP?</p>
                      <hr >
                      <p class="text-bold h6">No. KIP</p>
                      <hr >
                      <p class="text-bold h6">Nama Pada KIP</p>
                    </div>
                    <div class="col">
                      <p class="h6">{{ $casis->punya_kip == null ? '-' : $casis->punya_kip }}</p>
                      <hr>
                      <p class="h6">{{ $casis->no_kip == null ? '-' : $casis->no_kip }}</p>
                      <hr>
                      <p class="h6">{{ $casis->nama_kip == null ? '-' : $casis->nama_kip }}</p>
                    </div>
                  </div>
                </div>
              </div>
              {{-- End --}}

              {{-- Orang tua dan wali --}}
              <div class="card">
                <div class="card-header bg-primary">
                  <h6 class="card-title text-white"><i class="fa fa-user"></i> <i class="fa fa-user"></i> Orang Tua dan Wali</h6>
                </div>
                  {{-- Ayah --}}
                <div class="card-body">
                  <div class="row">
                    <div class="col-4">
                      <p class="text-bold h6">Nama Ayah Kandung</p>
                      <hr >
                      <p class="text-bold h6">NIK Ayah</p>
                      <hr >
                      <p class="text-bold h6">Tahun Lahir Ayah</p>
                      <hr >
                      <p class="text-bold h6">Pendidikan Ayah</p>
                      <hr >
                      <p class="text-bold h6">Pekerjaan Ayah</p>
                      <hr >
                      <p class="text-bold h6">Penghasilan Ayah</p>
                    </div>
                    <div class="col">
                      <p class="h6">{{ $casis->orangtuaWaliCasis->nama_ayah_kandung  == null ? '-' : $casis->orangtuaWaliCasis->nama_ayah_kandung   }}</p>
                      <hr>
                      <p class="h6">{{ $casis->orangtuaWaliCasis->nik_ayah  == null ? '-' : $casis->orangtuaWaliCasis->nik_ayah   }}</p>
                      <hr>  
                      <p class="h6">{{ $casis->orangtuaWaliCasis->tahun_lahir_ayah  == null ? '-' :   $casis->orangtuaWaliCasis->tahun_lahir_ayah  }}</p>
                      <hr>
                      <p class="h6">{{ $casis->orangtuaWaliCasis->pendidikan_ayah  == null ? '-' :   $casis->orangtuaWaliCasis->pendidikan_ayah  }}</p>
                      <hr>
                      <p class="h6">{{ $casis->orangtuaWaliCasis->pekerjaan_ayah  == null ? '-' : $casis->orangtuaWaliCasis->pekerjaan_ayah }}</p>
                      <hr>
                      <p class="h6">{{ $casis->orangtuaWaliCasis->penghasilan_ayah  == null ? '-' : $casis->orangtuaWaliCasis->penghasilan_ayah  }}</p>
                    </div>
                  </div>
                </div>
              </div>
                {{-- Ibu --}}
              <div class="card">
                <div class="card-body">
                  <div class="row">
                    <div class="col-4">
                      <p class="text-bold h6">Nama Ibu Kandung</p>
                      <hr >
                      <p class="text-bold h6">NIK Ibu</p>
                      <hr >
                      <p class="text-bold h6">Tahun Lahir Ibu</p>
                      <hr >
                      <p class="text-bold h6">Pendidikan Ibu</p>
                      <hr >
                      <p class="text-bold h6">Pekerjaan Ibu</p>
                      <hr >
                      <p class="text-bold h6">Penghasilan Ibu</p>
                    </div>
                    <div class="col">
                      <p class="h6">{{ $casis->orangtuaWaliCasis->nama_ibu_kandung == null ? '-' :   $casis->orangtuaWaliCasis->nama_ibu_kandung }}</p>
                      <hr>
                      <p class="h6">{{ $casis->orangtuaWaliCasis->nik_ibu  == null ? '-' :  $casis->orangtuaWaliCasis->nik_ibu  }}</p>
                      <hr>  
                      <p class="h6">{{ $casis->orangtuaWaliCasis->tahun_lahir_ibu  == null ? '-' :  $casis->orangtuaWaliCasis->tahun_lahir_ibu }}</p>
                      <hr>
                      <p class="h6">{{ $casis->orangtuaWaliCasis->pendidikan_ibu  == null ? '-' :  $casis->orangtuaWaliCasis->pendidikan_ibu}}</p>
                      <hr>
                      <p class="h6">{{ $casis->orangtuaWaliCasis->pekerjaan_ibu  == null ? '-' :  $casis->orangtuaWaliCasis->pekerjaan_ibu }}</p>
                      <hr>
                      <p class="h6">{{ $casis->orangtuaWaliCasis->penghasilan_ibu  == null ? '-' : $casis->orangtuaWaliCasis->penghasilan_ibu  }}</p>
                    </div>
                  </div>
                </div>
              </div>
                {{-- Wali --}}
                <div class="card">
                  <div class="card-body">
                    <div class="row">
                      <div class="col-4">
                        <p class="text-bold h6">Nama Wali</p>
                        <hr >
                        <p class="text-bold h6">NIK Wali</p>
                        <hr >
                        <p class="text-bold h6">Tahun Lahir Wali</p>
                        <hr >
                        <p class="text-bold h6">Pendidikan Wali</p>
                        <hr >
                        <p class="text-bold h6">Pekerjaan Wali</p>
                        <hr >
                        <p class="text-bold h6">Penghasilan Wali</p>
                      </div>
                      <div class="col">
                        <p class="h6">{{ $casis->orangtuaWaliCasis->nama_wali == null ? '-' : $casis->orangtuaWaliCasis->nama_wali }}</p>
                        <hr>
                        <p class="h6">{{ $casis->orangtuaWaliCasis->nik_wali == null ? '-' : $casis->orangtuaWaliCasis->nik_wali}}</p>
                        <hr>  
                        <p class="h6">{{ $casis->orangtuaWaliCasis->tahun_lahir_wali == null ? '-' : $casis->orangtuaWaliCasis->tahun_lahir_wali }}</p>
                        <hr>
                        <p class="h6">{{ $casis->orangtuaWaliCasis->pendidikan_wali == null ? '-' : $casis->orangtuaWaliCasis->pendidikan_wali }}</p>
                        <hr>
                        <p class="h6">{{ $casis->orangtuaWaliCasis->pekerjaan_wali == null ? '-' : $casis->orangtuaWaliCasis->pekerjaan_wali }}</p>
                        <hr>
                        <p class="h6">{{ $casis->orangtuaWaliCasis->penghasilan_wali == null ? '-' : $casis->orangtuaWaliCasis->penghasilan_wali }}</p>
                      </div>
                    </div>
                  </div>
                </div>
              {{-- End --}}

              {{-- Telepon dan email --}}
              <div class="card">
                <div class="card-header bg-primary">
                  <h6 class="card-title text-white"><i class="fa fa-phone"></i> <i class="fa fa-envelope"></i> Telepon dan Email</h6>
                </div>
                <div class="card-body">
                  <div class="row">
                    <div class="col-4">
                      <p class="text-bold h6">No. Telepon Rumah</p>
                      <hr >
                      <p class="text-bold h6">No. Telepon</p>
                      <hr >
                      <p class="text-bold h6">Email</p>
                    </div>
                    <div class="col">
                      <p class="h6">{{ $casis->no_telpon_rumah == null ? '-' : $casis->no_telpon_rumah }}</p>
                      <hr>
                      <p class="h6">{{ $casis->no_telpon == null ? '-' : $casis->no_telpon }}</p>
                      <hr>
                      <p class="h6">{{ $casis->email == null ? '-' : $casis->email }}</p>
                    </div>
                  </div>
                </div>
              </div>
              {{-- End --}}

              {{-- Data Fisik --}}
              <div class="card">
                <div class="card-header bg-primary">
                  <div class="card-title text-white"><i class="fa fa-male"></i> Data Fisik</div>
                </div>
                <div class="card-body">
                  <div class="row">
                    <div class="col-4">
                      <p class="text-bold h6">Tinggi Badan</p>
                      <hr >
                      <p class="text-bold h6">Berat Badan</p>
                      <hr >
                      <p class="text-bold h6">Lingkar Kepala</p>
                      <hr >
                      <p class="text-bold h6">Lingkar Pinggang</p>
                    </div>
                    <div class="col">
                      <p class="h6">{{ $casis->detailPrivasiCasis->tinggi_badan == null ? '-' : $casis->detailPrivasiCasis->tinggi_badan }} cm</p>
                      <hr>
                      <p class="h6">{{ $casis->detailPrivasiCasis->berat_badan == null ? '-' : $casis->detailPrivasiCasis->berat_badan }} cm</p>
                      <hr>
                      <p class="h6">{{ $casis->detailPrivasiCasis->lingkar_kepala == null ? '-' : $casis->detailPrivasiCasis->lingkar_kepala }} cm</p>
                      <hr>
                      <p class="h6">{{ $casis->detailPrivasiCasis->lingkar_pinggang == null ? '-' : $casis->detailPrivasiCasis->lingkar_pinggang }} cm</p>
                    </div>
                  </div>
                </div>
              </div>
              {{-- End --}}

              {{-- Jarak dan waktu tempuh --}}
              <div class="card">
                <div class="card-header bg-primary">
                  <h6 class="card-title text-white"><i class="fa fa-clock"></i> Jarak Ke Sekolah dan Waktu Tempuh</h6>
                </div>
                <div class="card-body">
                  <div class="row">
                    <div class="col-4">
                      <p class="text-bold h6">Jarak Rumah ke Sekolah</p>
                      <hr >
                      <p class="text-bold h6">Waktu Tempuh</p>
                    </div>
                    <div class="col">
                      <p class="h6">{{ $casis->detailPrivasiCasis->jarak_rumah_ke_sekolah == null ? '-' : $casis->detailPrivasiCasis->jarak_rumah_ke_sekolah }}</p>
                      <hr>
                      <p class="h6">{{ $casis->detailPrivasiCasis->waktu_tempuh == null ? '-' : $casis->detailPrivasiCasis->waktu_tempuh }}</p>
                    </div>
                  </div>
                </div>
              </div>
              {{-- End --}}

              {{-- Anak ke dan jumlah saudara kandung --}}
              <div class="card">
                <div class="card-header bg-primary">
                  <h6 class="card-title text-white"><i class="fa fa-male"></i> <i class="fa fa-female"></i> Anak Ke dan Jumlah Saudara Kandung</h6>
                </div>
                <div class="card-body">
                  <div class="row">
                    <div class="col-4">
                      <p class="text-bold h6">Anak Ke</p>
                      <hr >
                      <p class="text-bold h6">Jumlah Saudara Kandung</p>
                    </div>
                    <div class="col">
                      <p class="h6">{{ $casis->detailPrivasiCasis->anak_ke == null ? '-' : $casis->detailPrivasiCasis->anak_ke }}</p>
                      <hr>
                      <p class="h6">{{ $casis->detailPrivasiCasis->jumlah_saudara_kandung == null ? '-' : $casis->detailPrivasiCasis->jumlah_saudara_kandung }}</p>
                    </div>
                  </div>
                </div>
              </div>
              {{-- End --}}

              {{-- Prestasi --}}
              <div class="card">
                <div class="card-header bg-primary">
                  <h6 class="card-title text-white"><i class="fa fa-trophy"></i> Prestasi</h6>
                </div>
                <div class="card-body">
                  <div class="row">
                    <div class="col-4">
                      <p class="text-bold h6">Jenis Prestasi</p>
                      <hr >
                      <p class="text-bold h6">Tingkat Prestasi</p>
                      <hr >
                      <p class="text-bold h6">Nama Prestasi</p>
                      <hr >
                      <p class="text-bold h6">Tahun Prestasi</p>
                      <hr >
                      <p class="text-bold h6">Penyelenggara</p>
                      <hr >
                      <p class="text-bold h6">Peringkat</p>
                    </div>
                    <div class="col">
                      <p class="h6">{{ $casis->prestasiCasis->jenis_prestasi == null ? '-' : $casis->prestasiCasis->jenis_prestasi }}</p>
                      <hr>
                      <p class="h6">{{ $casis->prestasiCasis->tingkat_prestasi == null ? '-' : $casis->prestasiCasis->tingkat_prestasi }}</p>
                      <hr>  
                      <p class="h6">{{ $casis->prestasiCasis->nama_prestasi == null ? '-' : $casis->prestasiCasis->nama_prestasi }}</p>
                      <hr>
                      <p class="h6">{{ $casis->prestasiCasis->tahun_prestasi == null ? '-' : $casis->prestasiCasis->tahun_prestasi }}</p>
                      <hr>
                      <p class="h6">{{ $casis->prestasiCasis->penyelenggara_prestasi == null ? '-' : $casis->prestasiCasis->penyelenggara_prestasi }}</p>
                      <hr>
                      <p class="h6">{{ $casis->prestasiCasis->peringkat_prestasi == null ? '-' : $casis->prestasiCasis->peringkat_prestasi }}</p>
                    </div>
                  </div>
                </div>
              </div>
              {{-- End --}}

              {{-- Asal sekolah dan kelengkapan ijazah --}}
              <div class="card">
                <div class="card-header bg-primary">
                  <h6 class="card-title text-white"><i class="fa fa-school"></i> <i class="fa fa-copy"></i> Asal Sekolah dan Kelengkapan Ijazah</h6>
                </div>
                <div class="card-body">
                  <div class="row">
                    <div class="col-4">
                      <p class="text-bold h6">Asal Sekolah</p>
                      <hr >
                      <p class="text-bold h6">No. Peserta UN</p>
                      <hr >
                      <p class="text-bold h6">No. Seri Ijazah</p>
                      <hr >
                      <p class="text-bold h6">No. Seri SKHUN</p>
                    </div>
                    <div class="col">
                      <p class="h6">{{ $casis->asal_sekolah == null ? '-' : $casis->asal_sekolah }}</p>
                      <hr>
                      <p class="h6">{{ $casis->no_peserta_un == null ? '-' : $casis->no_peserta_un }}</p>
                      <hr>  
                      <p class="h6">{{ $casis->no_seri_ijazah == null ? '-' : $casis->no_seri_ijazah }}</p>
                      <hr>
                      <p class="h6">{{ $casis->no_seri_skhun == null ? '-' : $casis->no_seri_skhun }}</p>
                    </div>
                  </div>
                </div>
              </div>
              {{-- End --}}

              {{-- Tanggal data ditambahkan dan diperbaharui --}}
              <div class="row justify-content-center">
                <ul class="list-group list-group-horizontal">
                  <li class="list-group-item">Tanggal Ditambahkan: <span class="btn btn-sm btn-primary">{{ Carbon\Carbon::parse($casis->created_At)->format('d-M-Y h:m') }}</span></li>
                  <li class="list-group-item">Terakhir Diperbaharui: <span class="btn btn-sm btn-primary">{{ Carbon\Carbon::parse($casis->terakhir_data_diperbaharui)->format('d-M-Y h:m') }}</span></li>
                </ul>
              </div>
              {{-- End --}}
            </div>
            <div class="card-footer">
              <div class="row justify-content-center">
                <ul class="list-group list-group-horizontal">
                  {{-- <li class="list-group-item"><a href="{{ route('print.siswa', $casis->id) }}" type="button" data-id="{{ $casis->id }}" id="btnCetak" class="btn btn-md btn-success"><i class="fa fa-print"></i> Cetak</a></li>
                  <li class="list-group-item"><a href="{{ route('ppdb.edit', $casis->id) }}" type="button" class="btn btn-md btn-info"><i class="fa fa-edit"></i> Edit</a></li>
                  <li class="list-group-item"><a href="{{ route('ppdb.destroy', $casis->id) }}" type="button" data-id="{{ $casis->id }}" id="btnHapus" class="btn btn-md btn-danger"><i class="fa fa-trash"></i> Delete</a></li> --}}
                </ul>
              </div>
            </div>
          </div>
        </div>
    </div>
  </section>

@endsection
