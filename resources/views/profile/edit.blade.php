        @extends('layouts.app')
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css" />
        @section('main')        
         

                @if (  Auth::user()->spesifc_role === 'casis')
                    
                <div class="row">
                  <div id="accordion">
                      <div class="card">
                          {{-- <div class="card-header" id="headingDataCalonSiswa" style="width: 1142px;">
                              <h5 class="mb-0">
                                  <button class="badge badge-md badge-primary" data-toggle="collapse" data-target="#collapseOne"
                                      aria-expanded="true" aria-controls="collapseOne">
                                      Tambah Data Calon Siswa
                                  </button>
                              </h5>
                          </div> --}}
          
                          {{-- <div id="collapseOne" class="collapse show w-100 " aria-labelledby="headingDataCalonSiswa" data-parent="#accordion"> --}}
                              <form action="{{ route('update.profileCasis',$casis->id) }}" id="form-tambah" method="POST">
                                @method('PUT')
                                  @csrf
                                  <div class="card-body">
                                      {{-- Baris Pertama --}}
                                      <div class="row">
                                          {{-- Sebelah Kiri --}}
                                          <div class="col-md-6">
                                              <div class="card card-primary">
          
                                                  <div class="card-body">
                                                      {{-- <div class="form-group" `>
                                                          <label style="font-size: 16px; font-weight: 800;" for="no_daftar">Nomor
                                                              Daftar</label>
                                                          <input disabled type="text" style="font-size: 15px; font-weight: 600;"
                                                              class="form-control" id="no_daftar" name="no_daftar" value="{{$no_daftar}}" disabled
                                                              value="{{ old('no_daftar') }}">
                                                      </div>   --}}
                                                      {{-- {{dd($casis)}} --}}
                                                      <div class="form-group ">
                                                          <label style="font-size: 16px; font-weight: 800;" for="jurusan_1">Jurusan
                                                              1</label>
                                                              <select style="font-size: 15px; font-weight: 600;" name="jurusan_1"
                                                              id="jurusan_1" class="@error('jurusan_1') is-invalid @enderror form-control col-md-12">
                                                              <option style="font-size: 15px; font-weight: 600;" value="" disabled
                                                                  selected>--Pilihan--</option>
                                                                  @foreach ($jurusan as $item)
                                                                    @if ($item->jurusan ==  'PPLG')
                                                                      <option style="font-size: 15px; font-weight: 600;" value="{{$item->id}}" {{ $casis->jurusan_1 == 53 ? 'selected' : '' }}  {{ old('jurusan_1') == $item->id ? 'selected' : '' }}>Pengembang Perangkat Lunak dan Game</option>
                                                                    @elseif($item->jurusan ==  'ANIMASI')
                                                                      <option style="font-size: 15px; font-weight: 600;" value="{{$item->id}}" {{ $casis->jurusan_1 == 54 ? 'selected' : '' }} {{ old('jurusan_1') == $item->id ? 'selected' : '' }}>Animasi</option>
                                                                    @elseif($item->jurusan ==  'TJKT')
                                                                      <option style="font-size: 15px; font-weight: 600;" value="{{$item->id}}" {{ $casis->jurusan_1 == 55 ? 'selected' : '' }} {{ old('jurusan_1') == $item->id ? 'selected' : '' }}>	Teknik Jaringan Komputer & Telekomunikasi</option>
                                                                    @elseif($item->jurusan ==  'BCF')
                                                                      <option style="font-size: 15px; font-weight: 600;" value="{{$item->id}}" {{ $casis->jurusan_1 == 56 ? 'selected' : '' }} {{ old('jurusan_1') == $item->id ? 'selected' : '' }}>	Broadcasting dan perFileman</option>
                                                                    @elseif($item->jurusan ==  'TE')
                                                                      <option style="font-size: 15px; font-weight: 600;" value="{{$item->id}}" {{ $casis->jurusan_1 == 57 ? 'selected' : '' }} {{ old('jurusan_1') == $item->id ? 'selected' : '' }}>	Teknik Elektro</option>
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
                                                              id="jurusan_2" class="@error('jurusan_2') is-invalid @enderror form-control col-md-12">
                                                              <option style="font-size: 15px; font-weight: 600;" value="" disabled selected>--Pilihan--</option>
                                                              @foreach ($jurusan as $item)
                                                              @if ($item->jurusan ==  'PPLG')
                                                                <option style="font-size: 15px; font-weight: 600;" value="{{$item->id}}" {{ $casis->jurusan_2 == 53 ? 'selected' : '' }}  {{ old('jurusan_2') == $item->id ? 'selected' : '' }}>Pengembang Perangkat Lunak dan Game</option>
                                                              @elseif($item->jurusan ==  'ANIMASI')
                                                                <option style="font-size: 15px; font-weight: 600;" value="{{$item->id}}" {{ $casis->jurusan_2 == 54 ? 'selected' : '' }} {{ old('jurusan_2') == $item->id ? 'selected' : '' }}>Animasi</option>
                                                              @elseif($item->jurusan ==  'TJKT')
                                                                <option style="font-size: 15px; font-weight: 600;" value="{{$item->id}}" {{ $casis->jurusan_2 == 55 ? 'selected' : '' }} {{ old('jurusan_2') == $item->id ? 'selected' : '' }}>	Teknik Jaringan Komputer & Telekomunikasi</option>
                                                              @elseif($item->jurusan ==  'BCF')
                                                                <option style="font-size: 15px; font-weight: 600;" value="{{$item->id}}" {{ $casis->jurusan_2 == 56 ? 'selected' : '' }} {{ old('jurusan_2') == $item->id ? 'selected' : '' }}>	Broadcasting dan perFileman</option>
                                                              @elseif($item->jurusan ==  'TE')
                                                                <option style="font-size: 15px; font-weight: 600;" value="{{$item->id}}" {{ $casis->jurusan_2 == 57 ? 'selected' : '' }} {{ old('jurusan_2') == $item->id ? 'selected' : '' }}>	Teknik Elektro</option>
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
                                                              id="jurusan_3" class="@error('jurusan_3') is-invalid @enderror form-control col-md-12">
                                                              <option style="font-size: 15px; font-weight: 600;" value="" disabled selected>--Pilihan--</option>
                                                              @foreach ($jurusan as $item)
                                                              @if ($item->jurusan ==  'PPLG')
                                                                <option style="font-size: 15px; font-weight: 600;" value="{{$item->id}}" {{ $casis->jurusan_2 == 53 ? 'selected' : '' }}  {{ old('jurusan_2') == $item->id ? 'selected' : '' }}>Pengembang Perangkat Lunak dan Game</option>
                                                              @elseif($item->jurusan ==  'ANIMASI')
                                                                <option style="font-size: 15px; font-weight: 600;" value="{{$item->id}}" {{ $casis->jurusan_2 == 54 ? 'selected' : '' }} {{ old('jurusan_2') == $item->id ? 'selected' : '' }}>Animasi</option>
                                                              @elseif($item->jurusan ==  'TJKT')
                                                                <option style="font-size: 15px; font-weight: 600;" value="{{$item->id}}" {{ $casis->jurusan_2 == 55 ? 'selected' : '' }} {{ old('jurusan_2') == $item->id ? 'selected' : '' }}>	Teknik Jaringan Komputer & Telekomunikasi</option>
                                                              @elseif($item->jurusan ==  'BCF')
                                                                <option style="font-size: 15px; font-weight: 600;" value="{{$item->id}}" {{ $casis->jurusan_2 == 56 ? 'selected' : '' }} {{ old('jurusan_2') == $item->id ? 'selected' : '' }}>	Broadcasting dan perFileman</option>
                                                              @elseif($item->jurusan ==  'TE')
                                                                <option style="font-size: 15px; font-weight: 600;" value="{{$item->id}}" {{ $casis->jurusan_2 == 57 ? 'selected' : '' }} {{ old('jurusan_2') == $item->id ? 'selected' : '' }}>	Teknik Elektro</option>
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
                                          {{-- {{dd($casis)}} --}}
          
                                          {{-- Sebelah Kanan --}}
                                          <div class="col-md-6">
                                              <div class="card card-primary">
          
                                                  <div class="card-body">
                                                      <div class="form-group">
                                                          <label style="font-size: 16px; font-weight: 800;" for="nama_lengkap">Nama
                                                              Lengkap</label>
                                                          <input type="text" style="font-size: 15px; font-weight: 600;"
                                                              class="@error('nama_lengkap') is-invalid @enderror form-control" id="nama_lengkap" name="nama_lengkap"
                                                              value="{{ old('nama_lengkap',$casis->nama_lengkap) }}" >
                                                              @error('nama_lengkap')
                                                              <span class="text text-danger">{{ $message }}</span>
                                                          @enderror
                                                      </div>
                                                      <div class="form-group">
                                                          <label style="font-size: 16px; font-weight: 800;" for="jenis_kelamin">Jenis
                                                              Kelamin</label>
                                                          <select style="font-size: 15px; font-weight: 600;" name="jenis_kelamin"
                                                              id="jenis_kelamin" class="@error('jenis_kelamin') is-invalid @enderror form-control col-md-6">
                                                              <option style="font-size: 15px; font-weight: 600;" value="" disabled
                                                                  selected>--Pilihan--</option>
                                                              <option style="font-size: 15px; font-weight: 600;" value="Laki-laki"{{ old('jenis_kelamin',$casis->jenis_kelamin) == 'Laki-laki' ? 'selected' : '' }}> Laki-laki</option>
                                                              <option style="font-size: 15px; font-weight: 600;" value="Perempuan"{{ old('jenis_kelamin',$casis->jenis_kelamin) == 'Perempuan' ? 'selected' : '' }}> Perempuan</option>
                                                          </select>
                                                          @error('jenis_kelamin')
                                                              <span class="text text-danger">{{ $message }}</span>
                                                          @enderror
                                                      </div>
                                                      <div class="form-group">
                                                          <label style="font-size: 16px; font-weight: 800;" for="nisn">NISN</label>
                                                          <input type="number" name="nisn" id="nisn" class="@error('nisn') is-invalid @enderror form-control"
                                                              value="{{ old('nisn',$casis->nisn) }}">
                                                              @error('nisn')
                                                              <span class="text text-danger">{{ $message }}</span>
                                                          @enderror
                                                      </div>
                                                      <div class="form-group">
                                                          <label style="font-size: 16px; font-weight: 800;" for="nik">NIK</label>
                                                          <input type="number" name="nik" id="nik" class="@error('nik') is-invalid @enderror form-control"
                                                              value="{{ old('nik',$casis->nik) }}">
                                                              @error('nik')
                                                              <span class="text text-danger">{{ $message }}</span>
                                                          @enderror
                                                              
                                                      </div>
                                                      <div class="form-group">
                                                          <label style="font-size: 16px; font-weight: 800;" for="no_kartu_keluarga">No Kartu
                                                              Keluarga</label>
                                                          <input type="number" name="no_kartu_keluarga" id="no_kartu_keluarga"
                                                              class="@error('no_kartu_keluarga') is-invalid @enderror form-control" value="{{ old('no_kartu_keluarga',$casis->no_kartu_keluarga) }}">
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
                                                              class="@error('no_registerasi_akta_kelahiran') is-invalid @enderror form-control" id="no_registerasi_akta_kelahiran"
                                                              name="no_registerasi_akta_kelahiran"
                                                              value="{{ old('no_registerasi_akta_kelahiran',$casis->no_reg_akta_kelahiran) }}">
                                                              @error('no_registerasi_akta_kelahiran')
                                                              <span class="text text-danger">{{ $message }}</span>
                                                          @enderror
                                                      </div>
                                                      <div class="form-group">
                                                          <label style="font-size: 16px; font-weight: 800;" for="tempat_lahir">Tempat
                                                              Lahir</label>
                                                          <input type="text" style="font-size: 15px; font-weight: 600;"
                                                              class="@error('tempat_lahir') is-invalid @enderror form-control" id="tempat_lahir" name="tempat_lahir"
                                                              value="{{ old('tempat_lahir',$casis->tempat_lahir) }}">
                                                              @error('tempat_lahir')
                                                              <span class="text text-danger">{{ $message }}</span>
                                                          @enderror
                                                      </div>
                                                      <div class="form-group">
                                                          <label style="font-size: 16px; font-weight: 800;"
                                                              for="tanggal_lahir">Tanggal Lahir</label>
                                                          <input type="date" style="font-size: 15px; font-weight: 600;"
                                                              class="@error('tanggal_lahir') is-invalid @enderror form-control" id="tanggal_lahir" name="tanggal_lahir"
                                                              value="{{ old('tanggal_lahir',$casis->tanggal_lahir) }}">
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
          
                                                              <option style="font-size: 15px; font-weight: 600;" value="Islam" {{ old('agama',$casis->agama) == 'Islam' ? 'selected' : '' }}>Islam</option>
                                                              <option style="font-size: 15px; font-weight: 600;" value="Kristen Protestan" {{ old('agama',$casis->agama) == 'Kristen Protestan' ? 'selected' : '' }}>Kristen Protestan</option>
                                                              <option style="font-size: 15px; font-weight: 600;" value="Katolik" {{ old('agama',$casis->agama) == 'Katolik' ? 'selected' : '' }}>Katolik</option>
                                                              <option style="font-size: 15px; font-weight: 600;" value="Hindu" {{ old('agama',$casis->agama) == 'Hindu' ? 'selected' : '' }}>Hindu</option>
                                                              <option style="font-size: 15px; font-weight: 600;" value="Buddha" {{ old('agama',$casis->agama) == 'Buddha' ? 'selected' : '' }}>Buddha</option>
                                                              <option style="font-size: 15px; font-weight: 600;" value="Kong Hu Cu" {{ old('agama',$casis->agama) == 'Kong Hu Cu' ? 'selected' : '' }}>Kong Hu Cu
                                                              </option>
                                                          </select>
                                                          @error('agama')
                                                          <span class="text text-danger">{{ $message }}</span>
                                                      @enderror
                                                          
                                                      </div>
                                                      <div class="form-group">
                                                          <label style="font-size: 16px; font-weight: 800;"
                                                              for="alamat">Alamat</label>
                                                          <textarea class="@error('alamat') is-invalid @enderror form-control" name="alamat" id="alamat" cols="30"
                                                              rows="10"> {{ old('alamat',$casis->alamat)}}</textarea>
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
                                                                      class="@error('rt') is-invalid @enderror form-control" id="rt" name="rt"
                                                                      value="{{ old('rt',$casis->rt) }}">
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
                                                                      class="@error('rw') is-invalid @enderror form-control" id="rw" name="rw"
                                                                      value="{{ old('rw',$casis->rw) }}">
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
                                                                      class="@error('kode_pos') is-invalid @enderror form-control" id="kode_pos" name="kode_pos"
                                                                      value="{{ old('kode_pos',$casis->kode_pos) }}">
                                                                            @error('kode_pos')
                                                              <span class="text text-danger">{{ $message }}</span>
                                                          @enderror
                                                              </div>
                                                          </div>
                                                      </div>
                                                      <div class="form-group">
                                                          <label style="font-size: 16px; font-weight: 800;" for="dusun">Dusun</label>
                                                          <input type="text" style="font-size: 15px; font-weight: 600;"
                                                              class="@error('dusun') is-invalid @enderror form-control" id="dusun" name="dusun"
                                                              value="{{ old('dusun',$casis->dusun) }}">
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
                                                                      class="@error('desa_kelurahan') is-invalid @enderror form-control" id="desa_kelurahan" name="desa_kelurahan"
                                                                      value="{{ old('desa_kelurahan',$casis->desa_kelurahan) }}">
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
                                                                      class="@error('kecamatan') is-invalid @enderror form-control" id="kecamatan" name="kecamatan"
                                                                      value="{{ old('kecamatan',$casis->kecamatan) }}">
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
                                                              class="@error('kabupaten') is-invalid @enderror form-control" id="kabupaten" name="kabupaten"
                                                              value="{{ old('kabupaten',$casis->kabupaten) }}">
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
                                                                      <option style="font-size: 15px; font-weight: 600;" value="Bersama Orang Tua" {{ old('tempat_tinggal',$casis->tempat_tinggal) == 'Bersama Orang Tua' ? 'selected' : '' }}> Bersama Orang Tua</option>
                                                                      <option style="font-size: 15px; font-weight: 600;" value="Bersama Wali" {{ old('tempat_tinggal',$casis->tempat_tinggal) == 'Bersama Wali' ? 'selected' : '' }}> Bersama Wali</option>
                                                                      <option style="font-size: 15px; font-weight: 600;" value="Kost" {{ old('tempat_tinggal',$casis->tempat_tinggal) == 'Kost' ? 'selected' : '' }}> Kost</option>
                                                                      <option style="font-size: 15px; font-weight: 600;" value="Pesantren" {{ old('tempat_tinggal',$casis->tempat_tinggal) == 'Pesantren' ? 'selected' : '' }}> Pesantren</option>
          
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
                                                                      <option style="font-size: 15px; font-weight: 600;" value="Angkutan Umum" {{ old('transportasi',$casis->transportasi) == 'Angkutan Umum' ? 'selected' : '' }}> Angkutan Umum</option>
                                                                      <option style="font-size: 15px; font-weight: 600;" value="Sepeda Motor" {{ old('transportasi',$casis->transportasi) == 'Sepeda Motor' ? 'selected' : '' }}> Sepeda Motor</option>
                                                                      <option style="font-size: 15px; font-weight: 600;" value="Mobil Pribadi" {{ old('transportasi',$casis->transportasi) == 'Mobil Pribadi' ? 'selected' : '' }}> Mobil Pribadi</option>
                                                                      <option style="font-size: 15px; font-weight: 600;" value="Ojek" {{ old('transportasi',$casis->transportasi) == 'Ojek' ? 'selected' : '' }}>Ojek</option>
                                                                      <option style="font-size: 15px; font-weight: 600;" value="Jalan Kaki" {{ old('transportasi',$casis->transportasi) == 'Jalan Kaki' ? 'selected' : '' }}> Jalan Kaki</option>
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
                                                                  <label style="font-size: 16px; font-weight: 800;" for="kip">KIP / Kartu
                                                                      Indonesia Pintar</label>
                                                                  <select style="font-size: 15px; font-weight: 600;" name="kip" id="kip"
                                                                      class="form-control col-md-12">
                                                                      <option style="font-size: 15px; font-weight: 600;" value=""
                                                                          selected>--Pilihan--</option>
                  
                                                                      <option style="font-size: 15px; font-weight: 600;" value="Ya" {{$casis->punya_kip == 'Ya' ? 'selected' : ''}}>Ya</option>
                                                                      <option style="font-size: 15px; font-weight: 600;" value="Tidak"{{$casis->punya_kip == 'Tidak' ? 'selected' : ''}}> Tidak</option>
                  
                                                                  </select>
                                                              </div>
                                                          </div>
                                                          <div class="col-md-5">
                                                              <div class="form-group">
                                                                  <label style="font-size: 16px; font-weight: 800;" for="no_kip">No
                                                                      KIP</label>
                                                                  <input type="text" style="font-size: 15px; font-weight: 600;"
                                                                      class="form-control" id="no_kip" name="no_kip"
                                                                      value="{{ old('no_kip',$casis->no_kip) }}">
                                                              </div>
                                                          </div>
                                                          <div class="col-md-4">
                                                              <div class="form-group">
                                                                  <label style="font-size: 16px; font-weight: 800;" for="nama_kip">Nama
                                                                      Pada KIP</label>
                                                                  <input type="text" style="font-size: 15px; font-weight: 600;"
                                                                      class="form-control" id="nama_kip" name="nama_kip"
                                                                      value="{{ old('nama_kip',$casis->nama_kip) }}">
                                                              </div>
                                                          </div>
                                                      </div>
                                                      <div class="row">
                                                          <div class="col-md-6">
                                                              <div class="form-group">
                                                                  <label style="font-size: 16px; font-weight: 800;"
                                                                      for="no_telpon_rumah">No. Telpon Rumah</label>
                                                                  <input type="text" style="font-size: 15px; font-weight: 600;" class="@error('no_telpon_rumah') is-invalid @enderror form-control"  id="no_telpon_rumah" name="no_telpon_rumah" value="{{ old('no_telpon_rumah',$casis->no_telpon_rumah) }}">
                                                                  @error('no_telpon_rumah')
                                                                  <span class="text text-danger">{{ $message }}</span>
                                                              @enderror
                                                              </div>
                                                          </div>
                                                          <div class="col-md-6">
                                                              <div class="form-group">
                                                                  <label style="font-size: 16px; font-weight: 800;"
                                                                      for="no_telpon_hp">No. Telpon (HP)</label>
                                                                  <input type="text" style="font-size: 15px; font-weight: 600;" class="@error('no_telpon_hp') is-invalid @enderror form-control"  id="no_telpon_hp" name="no_telpon_hp" value="{{ old('no_telpon_hp',$casis->no_telpon) }}">
                                                                  @error('no_telpon_hp')
                                                                  <span class="text text-danger">{{ $message }}</span>
                                                              @enderror
                                                              </div>
                                                          </div>
                                                      </div>
                                                      <div class="form-group">
                                                          <label style="font-size: 16px; font-weight: 800;"
                                                              for="email">Email</label>
                                                          <input type="text" style="font-size: 15px; font-weight: 600;" class="@error('email') is-invalid @enderror form-control"  id="email" name="email" value="{{ old('email',$casis->email) }}">
                                                          @error('email')
                                                          <span class="text text-danger">{{ $message }}</span>
                                                      @enderror
                                                      </div>
                                              
                                                 
                                                      <div class="row">
                                                              <div class="col-md-6">
                                                                  <div class="form-group">
                                                                      <label style="font-size: 16px; font-weight: 800;"
                                                                          for="tinggi_badan">Tinggi Badan</label>
                                                                      <input type="text" style="font-size: 15px; font-weight: 600;" class="@error('tinggi_badan') is-invalid @enderror form-control"  id="tinggi_badan" name="tinggi_badan" value="{{ old('tinggi_badan',$casis->detailPrivasiCasis->tinggi_badan) }}">
                                                                      @error('tinggi_badan')
                                                                      <span class="text text-danger">{{ $message }}</span>
                                                                  @enderror
                                                                  </div>
                                                              </div>
                                                              <div class="col-md-6">
                                                                  <div class="form-group">
                                                                      <label style="font-size: 16px; font-weight: 800;"
                                                                          for="berat_badan">Berat Badan</label>
                                                                      <input type="text" style="font-size: 15px; font-weight: 600;" class="@error('berat_badan') is-invalid @enderror form-control"  id="berat_badan" name="berat_badan" value="{{ old('berat_badan',$casis->detailPrivasiCasis->berat_badan) }}">
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
                                                                  <input type="text" style="font-size: 15px; font-weight: 600;" class="form-control"  id="lingkar_kepala" name="lingkar_kepala" value="{{ old('lingkar_kepala',$casis->detailPrivasiCasis->lingkar_kepala) }}">
                                                              </div>
                                                          </div>
                                                          <div class="col-md-6">
                                                              <div class="form-group">
                                                                  <label style="font-size: 16px; font-weight: 800;"
                                                                      for="lingkar_pinggang">Lingkar Pinggang</label>
                                                                  <input type="text" style="font-size: 15px; font-weight: 600;" class="form-control"  id="lingkar_pinggang" name="lingkar_pinggang" value="{{ old('lingkar_pinggang',$casis->detailPrivasiCasis->lingkar_pinggang) }}">
                                                              </div>
                                                          </div>
                                                      </div>
                                                      <div class="row">
                                                          <div class="col-md-6">
                                                              <div class="form-group">
                                                                  <label style="font-size: 16px; font-weight: 800;"
                                                                      for="jarak_rumah_kesekolah">Jarak Rumah ke Sekolah</label>
                                                                  <input type="text" style="font-size: 15px; font-weight: 600;" class="form-control"  id="jarak_rumah_kesekolah" name="jarak_rumah_kesekolah" value="{{ old('jarak_rumah_kesekolah',$casis->detailPrivasiCasis->jarak_rumah_kesekolah) }}">
                                                              </div>                                                        
                                                          </div>
                                                          <div class="col-md-6">
                                                              <div class="form-group">
                                                                  <label style="font-size: 16px; font-weight: 800;"
                                                                      for="waktu_tempuh">Waktu Tempuh</label>
                                                                  <input type="text" style="font-size: 15px; font-weight: 600;" class="form-control"  id="waktu_tempuh" name="waktu_tempuh" value="{{ old('waktu_tempuh',$casis->detailPrivasiCasis->waktu_tempuh) }}">
                                                              </div>
                                                          </div>
                                                      </div>
                                                      <div class="row">
                                                          <div class="col-md-6">
                                                              <div class="form-group">
                                                                  <label style="font-size: 16px; font-weight: 800;"
                                                                      for="anak_ke">Anak Ke</label>
                                                                  <input type="text" style="font-size: 15px; font-weight: 600;" class="form-control"  id="anak_ke" name="anak_ke" value="{{ old('anak_ke',$casis->detailPrivasiCasis->anak_ke) }}">
                                                              </div>
                                                          </div>
                                                          <div class="col-md-6">
                                                              <div class="form-group">
                                                                  <label style="font-size: 16px; font-weight: 800;"
                                                                      for="jumlah_saudara_kandung">Jumlah Saudara Kandung</label>
                                                                  <input type="text" style="font-size: 15px; font-weight: 600;" class="form-control"  id="jumlah_saudara_kandung" name="jumlah_saudara_kandung" value="{{ old('jumlah_saudara_kandung',$casis->detailPrivasiCasis->jumlah_saudara_kandung) }}">
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
                                                              class="@error('nama_ayah') is-invalid @enderror form-control" id="nama_ayah" name="nama_ayah"
                                                              value="{{ old('nama_ayah',$casis->orangtuaWaliCasis->nama_ayah_kandung) }}">
                                                              @error('nama_ayah')
                                                              <span class="text text-danger">{{ $message }}</span>
                                                          @enderror
                                                      </div>
                                                      <div class="form-group">
                                                          <label style="font-size: 16px; font-weight: 800;" for="nik_ayah">NIK Ayah
                                                          </label>
                                                          <input type="text" style="font-size: 15px; font-weight: 600;"
                                                              class="form-control" id="nik_ayah" name="nik_ayah"
                                                              value="{{ old('nik_ayah',$casis->orangtuaWaliCasis->nik_ayah) }}">
                                                      </div>
                                                     <div class="row">
                                                      <div class="col-md-6">
                                                          <div class="form-group">
                                                              <label style="font-size: 16px; font-weight: 800;"
                                                                  for="tahun_lahir_ayah">Tahun Lahir Ayah </label>
                                                              <input type="text" style="font-size: 15px; font-weight: 600;"
                                                                  class="form-control" id="tahun_lahir_ayah" name="tahun_lahir_ayah"
                                                                  value="{{ old('tahun_lahir_ayah',$casis->orangtuaWaliCasis->tahun_lahir_ayah) }}">
                                                          </div>
                                                         
                                                      </div>
                                                      <div class="col-md-6">
                                                          <div class="form-group ">
                                                              <label style="font-size: 16px; font-weight: 800;"
                                                                  for="pendidikan_ayah">Pendidikan Ayah</label>
                                                              <select style="font-size: 15px; font-weight: 600;" name="pendidikan_ayah"
                                                                  id="pendidikan_ayah" class="form-control col-md-12">
                                                                  <option style="font-size: 15px; font-weight: 600;" value="" selected>
                                                                      --Pilihan--</option>
              
                                                                  <option style="font-size: 15px; font-weight: 600;" value="SD/MI" {{ old('pendidikan_ayah',$casis->orangtuaWaliCasis->pendidikan_ayah) == 'SD/MI' ? 'selected' : '' }}>SD/MI
                                                                  </option>
                                                                  <option style="font-size: 15px; font-weight: 600;" value="SMP/MTS" {{ old('pendidikan_ayah',$casis->orangtuaWaliCasis->pendidikan_ayah) == 'SMP/MTS' ? 'selected' : '' }}>SMP/MTS
                                                                  </option>
                                                                  <option style="font-size: 15px; font-weight: 600;" value="SMA/MA" {{ old('pendidikan_ayah',$casis->orangtuaWaliCasis->pendidikan_ayah) == 'SMA/MA' ? 'selected' : '' }}>SMA/MA
                                                                  </option>
                                                                  <option style="font-size: 15px; font-weight: 600;" value="SMK" {{ old('pendidikan_ayah',$casis->orangtuaWaliCasis->pendidikan_ayah) == 'SMK' ? 'selected' : '' }}>SMK</option>
                                                                  <option style="font-size: 15px; font-weight: 600;" value="D1" {{ old('pendidikan_ayah',$casis->orangtuaWaliCasis->pendidikan_ayah) == 'D1' ? 'selected' : '' }}>D1</option>
                                                                  <option style="font-size: 15px; font-weight: 600;" value="S1" {{ old('pendidikan_ayah',$casis->orangtuaWaliCasis->pendidikan_ayah) == 'S1' ? 'selected' : '' }}> S1</option>
                                                                  <option style="font-size: 15px; font-weight: 600;" value="S2" {{ old('pendidikan_ayah',$casis->orangtuaWaliCasis->pendidikan_ayah) == 'S2' ? 'selected' : '' }}> S2</option>
                                                                  <option style="font-size: 15px; font-weight: 600;" value="S3" {{ old('pendidikan_ayah',$casis->orangtuaWaliCasis->pendidikan_ayah) == 'S3' ? 'selected' : '' }}> S3</option>
                                                                  <option style="font-size: 15px; font-weight: 600;" value="Tidak Sekolah" {{ old('pendidikan_ayah',$casis->orangtuaWaliCasis->pendidikan_ayah) == 'Tidak Sekolah' ? 'selected' : '' }}> Tidak Sekolah</option>
              
                                                              </select>
                                                          </div>
                                                      </div>
                                                     </div>
                                                      <div class="row">
                                                          <div class="col-md-6">
                                                              <div class="form-group ">
                                                                  <label style="font-size: 16px; font-weight: 800;"
                                                                      for="pekerjaan_ayah">Pekerjaan Ayah</label>
                                                                  <select style="font-size: 15px; font-weight: 600;" name="pekerjaan_ayah"
                                                                      id="pekerjaan_ayah" class="form-control col-md-12">
                                                                      <option style="font-size: 15px; font-weight: 600;" value="" selected>
                                                                          --Pilihan--</option>
                  
                                                                      <option style="font-size: 15px; font-weight: 600;" value="Buruh" {{ old('pekerjaan_ayah',$casis->orangtuaWaliCasis->pekerjaan_ayah) == 'Buruh' ? 'selected' : '' }}>Buruh </option>
                                                                      <option style="font-size: 15px; font-weight: 600;" value="Nelayan" {{ old('pekerjaan_ayah',$casis->orangtuaWaliCasis->pekerjaan_ayah) == 'Nelayan' ? 'selected' : '' }}>Nelayan </option>
                                                                      <option style="font-size: 15px; font-weight: 600;" value="Petani" {{ old('pekerjaan_ayah',$casis->orangtuaWaliCasis->pekerjaan_ayah) == 'Petani' ? 'selected' : '' }}>Petani </option>
                                                                      <option style="font-size: 15px; font-weight: 600;" value="Peternak" {{ old('pekerjaan_ayah',$casis->orangtuaWaliCasis->pekerjaan_ayah) == 'Peternak' ? 'selected' : '' }}>Peternak </option>
                                                                      <option style="font-size: 15px; font-weight: 600;" value="Pedagang" {{ old('pekerjaan_ayah',$casis->orangtuaWaliCasis->pekerjaan_ayah) == 'Pedagang' ? 'selected' : '' }}>Pedagang </option>
                                                                      <option style="font-size: 15px; font-weight: 600;" value="Pensiunan" {{ old('pekerjaan_ayah',$casis->orangtuaWaliCasis->pekerjaan_ayah) == 'Pensiunan' ? 'selected' : '' }}> Pensiunan</option>
                                                                      <option style="font-size: 15px; font-weight: 600;" value="Karyawan Swasta" {{ old('pekerjaan_ayah',$casis->orangtuaWaliCasis->pekerjaan_ayah) == 'Karyawan Swasta' ? 'selected' : '' }}> Karyawan Swasta</option>
                                                                      <option style="font-size: 15px; font-weight: 600;" value="Guru" {{ old('pekerjaan_ayah',$casis->orangtuaWaliCasis->pekerjaan_ayah) == 'Guru' ? 'selected' : '' }}> Guru </option>
                                                                      <option style="font-size: 15px; font-weight: 600;" value="Perangkat Desa" {{ old('pekerjaan_ayah',$casis->orangtuaWaliCasis->pekerjaan_ayah) == 'Perangkat Desa' ? 'selected' : '' }}> Perangkat Desa</option>
                                                                      <option style="font-size: 15px; font-weight: 600;" value="PNS/TNI/Polri" {{ old('pekerjaan_ayah',$casis->orangtuaWaliCasis->pekerjaan_ayah) == 'PNS/TNI/Polri' ? 'selected' : '' }}> PNS/TNI/Polri</option>
                                                                      <option style="font-size: 15px; font-weight: 600;" value="Wiraswasta" {{ old('pekerjaan_ayah',$casis->orangtuaWaliCasis->pekerjaan_ayah) == 'Wiraswasta' ? 'selected' : '' }}> Wiraswasta</option>
                                                                      <option style="font-size: 15px; font-weight: 600;" value="Wirausaha" {{ old('pekerjaan_ayah',$casis->orangtuaWaliCasis->pekerjaan_ayah) == 'Wirausaha' ? 'selected' : '' }}> Wirausaha</option>
                                                                      <option style="font-size: 15px; font-weight: 600;" value="TKI" {{ old('pekerjaan_ayah',$casis->orangtuaWaliCasis->pekerjaan_ayah) == 'TKI' ? 'selected' : '' }}> TKI</option>
                                                                      <option style="font-size: 15px; font-weight: 600;" value="Sudah Meninggal" {{ old('pekerjaan_ayah',$casis->orangtuaWaliCasis->pekerjaan_ayah) == 'Sudah Meninggal' ? 'selected' : '' }}> Sudah Meninggal</option>
                                                                      <option style="font-size: 15px; font-weight: 600;" value="Tidak Bekerja"{{ old('pekerjaan_ayah',$casis->orangtuaWaliCasis->pekerjaan_ayah) == 'Tidak Bekerja' ? 'selected' : '' }}>Tidak Bekerja</option>
                                                                  </select>
                                                              </div>
                                                            
                                                          </div>
                                                          <div class="col-md-6">
                                                              <div class="form-group ">
                                                                  <label style="font-size: 16px; font-weight: 800;"
                                                                      for="penghasilan_ayah">Penghasilan Ayah</label>
                                                                  <select style="font-size: 15px; font-weight: 600;" name="penghasilan_ayah"
                                                                      id="penghasilan_ayah" class="form-control col-md-12">
                                                                      <option style="font-size: 15px; font-weight: 600;" value="" selected>
                                                                          --Pilihan--</option>
                  
                                                                      <option style="font-size: 15px; font-weight: 600;"
                                                                          value="Rp.0 - 500.000"
                                                                          {{ old('penghasilan_ayah',$casis->orangtuaWaliCasis->penghasilan_ayah) == 'Rp.0 - 500.000' ? 'selected' : '' }}>
                                                                          Rp.0 - 500.000</option>
                                                                      <option style="font-size: 15px; font-weight: 600;"
                                                                          value="Rp.500.000 - 999.999"
                                                                          {{ old('penghasilan_ayah',$casis->orangtuaWaliCasis->penghasilan_ayah) == 'Rp.500.000 - 999.999' ? 'selected' : '' }}>
                                                                          Rp.500.000 - 999.999</option>
                                                                      <option style="font-size: 15px; font-weight: 600;"
                                                                          value="Rp.1.000.000 - 1.999.999"
                                                                          {{ old('penghasilan_ayah',$casis->orangtuaWaliCasis->penghasilan_ayah) == 'Rp.1.000.000 - 1.999.999' ? 'selected' : '' }}>
                                                                          Rp.1.000.000 - 1.999.999</option>
                                                                      <option style="font-size: 15px; font-weight: 600;"
                                                                          value="Rp.2.000.000 - 4.999.999"
                                                                          {{ old('penghasilan_ayah',$casis->orangtuaWaliCasis->penghasilan_ayah) == 'Rp.2.000.000 - 4.999.999' ? 'selected' : '' }}>
                                                                          Rp.2.000.000 - 4.999.999</option>
                                                                      <option style="font-size: 15px; font-weight: 600;"
                                                                          value="Rp.5.000.000 - 20.000.000"
                                                                          {{ old('penghasilan_ayah',$casis->orangtuaWaliCasis->penghasilan_ayah) == 'Rp.5.000.000 - 20.000.000' ? 'selected' : '' }}>
                                                                          Rp.5.000.000 - 20.000.000</option>
                                                                      <option style="font-size: 15px; font-weight: 600;"
                                                                          value="Lebih dari 20.000.000"
                                                                          {{ old('penghasilan_ayah',$casis->orangtuaWaliCasis->penghasilan_ayah) == 'Lebih dari 20.000.000' ? 'selected' : '' }}>
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
                                                              class="@error('nama_ibu') is-invalid @enderror form-control" id="nama_ibu" name="nama_ibu"
                                                              value="{{ old('nama_ibu',$casis->orangtuaWaliCasis->nama_ibu_kandung) }}">
                                                              @error('nama_ibu')
                                                              <span class="text text-danger">{{ $message }}</span>
                                                          @enderror
                                                      </div>
                                                      <div class="form-group">
                                                          <label style="font-size: 16px; font-weight: 800;" for="nik_ibu">NIK Ibu
                                                          </label>
                                                          <input type="text" style="font-size: 15px; font-weight: 600;"
                                                              class="form-control" id="nik_ibu" name="nik_ibu"
                                                              value="{{ old('nik_ibu',$casis->orangtuaWaliCasis->nik_ibu) }}">
                                                      </div>
                                                     <div class="row">
                                                          <div class="col-md-6">
                                                              <div class="form-group">
                                                                  <label style="font-size: 16px; font-weight: 800;"
                                                                      for="tahun_lahir_ibu">Tahun Lahir Ibu </label>
                                                                  <input type="text" style="font-size: 15px; font-weight: 600;"
                                                                      class="form-control" id="tahun_lahir_ibu" name="tahun_lahir_ibu"
                                                                      value="{{ old('tahun_lahir_ibu',$casis->orangtuaWaliCasis->tahun_lahir_ibu) }}">
                                                              </div>
                                                          </div>
                                                          <div class="col-md-6">
                                                              <div class="form-group ">
                                                                  <label style="font-size: 16px; font-weight: 800;"
                                                                      for="pendidikan_ibu">Pendidikan Ibu</label>
                                                                  <select style="font-size: 15px; font-weight: 600;" name="pendidikan_ibu"
                                                                      id="pendidikan_ibu" class="form-control col-md-12">
                                                                      <option style="font-size: 15px; font-weight: 600;" value="" selected>
                                                                          --Pilihan--</option>
                  
                                                                      <option style="font-size: 15px; font-weight: 600;" value="SD/MI"
                                                                          {{ old('pendidikan_ibu',$casis->orangtuaWaliCasis->pendidikan_ibu) == 'SD/MI' ? 'selected' : '' }}>SD/MI
                                                                      </option>
                                                                      <option style="font-size: 15px; font-weight: 600;" value="SMP/MTS"
                                                                          {{ old('pendidikan_ibu',$casis->orangtuaWaliCasis->pendidikan_ibu) == 'SMP/MTS' ? 'selected' : '' }}>SMP/MTS
                                                                      </option>
                                                                      <option style="font-size: 15px; font-weight: 600;" value="SMA/MA"
                                                                          {{ old('pendidikan_ibu',$casis->orangtuaWaliCasis->pendidikan_ibu) == 'SMA/MA' ? 'selected' : '' }}>SMA/MA
                                                                      </option>
                                                                      <option style="font-size: 15px; font-weight: 600;" value="SMK"
                                                                          {{ old('pendidikan_ibu',$casis->orangtuaWaliCasis->pendidikan_ibu) == 'SMK' ? 'selected' : '' }}>SMK</option>
                                                                      <option style="font-size: 15px; font-weight: 600;" value="D1"
                                                                          {{ old('pendidikan_ibu',$casis->orangtuaWaliCasis->pendidikan_ibu) == 'D1' ? 'selected' : '' }}>D1</option>
                                                                      <option style="font-size: 15px; font-weight: 600;" value="S1"
                                                                          {{ old('pendidikan_ibu',$casis->orangtuaWaliCasis->pendidikan_ibu) == 'S1' ? 'selected' : '' }}> S1</option>
                                                                      <option style="font-size: 15px; font-weight: 600;" value="S2"
                                                                          {{ old('pendidikan_ibu',$casis->orangtuaWaliCasis->pendidikan_ibu) == 'S2' ? 'selected' : '' }}> S2</option>
                                                                      <option style="font-size: 15px; font-weight: 600;" value="S3"
                                                                          {{ old('pendidikan_ibu',$casis->orangtuaWaliCasis->pendidikan_ibu) == 'S3' ? 'selected' : '' }}> S3</option>
                                                                      <option style="font-size: 15px; font-weight: 600;" value="Tidak Sekolah"
                                                                          {{ old('pendidikan_ibu',$casis->orangtuaWaliCasis->pendidikan_ibu) == 'Tidak Sekolah' ? 'selected' : '' }}>
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
                                                                      <select style="font-size: 15px; font-weight: 600;" name="pekerjaan_ibu"
                                                                          id="pekerjaan_ibu" class="form-control col-md-12">
                                                                          <option style="font-size: 15px; font-weight: 600;" value="" selected>
                                                                              --Pilihan--</option>
                      
                                                                          <option style="font-size: 15px; font-weight: 600;" value="Buruh"
                                                                              {{ old('pekerjaan_ibu',$casis->orangtuaWaliCasis->pekerjaan_ibu) == 'Buruh' ? 'selected' : '' }}>Buruh
                                                                          </option>
                                                                          <option style="font-size: 15px; font-weight: 600;" value="Nelayan"
                                                                              {{ old('pekerjaan_ibu',$casis->orangtuaWaliCasis->pekerjaan_ibu) == 'Nelayan' ? 'selected' : '' }}>Nelayan
                                                                          </option>
                                                                          <option style="font-size: 15px; font-weight: 600;" value="Petani"
                                                                              {{ old('pekerjaan_ibu',$casis->orangtuaWaliCasis->pekerjaan_ibu) == 'Petani' ? 'selected' : '' }}>Petani
                                                                          </option>
                                                                          <option style="font-size: 15px; font-weight: 600;" value="Peternak"
                                                                              {{ old('pekerjaan_ibu',$casis->orangtuaWaliCasis->pekerjaan_ibu) == 'Peternak' ? 'selected' : '' }}>Peternak
                                                                          </option>
                                                                          <option style="font-size: 15px; font-weight: 600;" value="Pedagang"
                                                                              {{ old('pekerjaan_ibu',$casis->orangtuaWaliCasis->pekerjaan_ibu) == 'Pedagang' ? 'selected' : '' }}>Pedagang
                                                                          </option>
                                                                          <option style="font-size: 15px; font-weight: 600;" value="Pensiunan"
                                                                              {{ old('pekerjaan_ibu',$casis->orangtuaWaliCasis->pekerjaan_ibu) == 'Pensiunan' ? 'selected' : '' }}>
                                                                              Pensiunan</option>
                                                                          <option style="font-size: 15px; font-weight: 600;"
                                                                              value="Karyawan Swasta"
                                                                              {{ old('pekerjaan_ibu',$casis->orangtuaWaliCasis->pekerjaan_ibu) == 'Karyawan Swasta' ? 'selected' : '' }}>
                                                                              Karyawan Swasta</option>
                                                                          <option style="font-size: 15px; font-weight: 600;" value="Guru"
                                                                              {{ old('pekerjaan_ibu',$casis->orangtuaWaliCasis->pekerjaan_ibu) == 'Guru' ? 'selected' : '' }}> Guru
                                                                          </option>
                                                                          <option style="font-size: 15px; font-weight: 600;"
                                                                              value="Perangkat Desa"
                                                                              {{ old('pekerjaan_ibu',$casis->orangtuaWaliCasis->pekerjaan_ibu) == 'Perangkat Desa' ? 'selected' : '' }}>
                                                                              Perangkat Desa</option>
                                                                          <option style="font-size: 15px; font-weight: 600;" value="PNS/TNI/Polri"
                                                                              {{ old('pekerjaan_ibu',$casis->orangtuaWaliCasis->pekerjaan_ibu) == 'PNS/TNI/Polri' ? 'selected' : '' }}>
                                                                              PNS/TNI/Polri</option>
                                                                          <option style="font-size: 15px; font-weight: 600;" value="Wiraswasta"
                                                                              {{ old('pekerjaan_ibu',$casis->orangtuaWaliCasis->pekerjaan_ibu) == 'Wiraswasta' ? 'selected' : '' }}>
                                                                              Wiraswasta</option>
                                                                          <option style="font-size: 15px; font-weight: 600;" value="Wirausaha"
                                                                              {{ old('pekerjaan_ibu',$casis->orangtuaWaliCasis->pekerjaan_ibu) == 'Wirausaha' ? 'selected' : '' }}>
                                                                              Wirausaha</option>
                                                                          <option style="font-size: 15px; font-weight: 600;" value="TKI"
                                                                              {{ old('pekerjaan_ibu',$casis->orangtuaWaliCasis->pekerjaan_ibu) == 'TKI' ? 'selected' : '' }}> TKI</option>
                                                                          <option style="font-size: 15px; font-weight: 600;"
                                                                              value="Sudah Meninggal"
                                                                              {{ old('pekerjaan_ibu',$casis->orangtuaWaliCasis->pekerjaan_ibu) == 'Sudah Meninggal' ? 'selected' : '' }}>
                                                                              Sudah Meninggal</option>
                                                                          <option style="font-size: 15px; font-weight: 600;" value="Tidak Bekerja"
                                                                              {{ old('pekerjaan_ibu',$casis->orangtuaWaliCasis->pekerjaan_ibu) == 'Tidak Bekerja' ? 'selected' : '' }}>
                                                                              Tidak Bekerja</option>
                                                                      </select>
                                                                  </div>
                                                                
                                                              </div>  
                                                              <div class="col-md-6">
                                                                  <div class="form-group ">
                                                                      <label style="font-size: 16px; font-weight: 800;"
                                                                          for="penghasilan_ibu">Penghasilan Ibu</label>
                                                                      <select style="font-size: 15px; font-weight: 600;" name="penghasilan_ibu"
                                                                          id="penghasilan_ibu" class="form-control col-md-12">
                                                                          <option style="font-size: 15px; font-weight: 600;" value="" selected>
                                                                              --Pilihan--</option>
                      
                                                                          <option style="font-size: 15px; font-weight: 600;"
                                                                              value="Rp.0 - 500.000"
                                                                              {{ old('penghasilan_ibu',$casis->orangtuaWaliCasis->penghasilan_ibu) == 'Rp.0 - 500.000' ? 'selected' : '' }}>
                                                                              Rp.0 - 500.000</option>
                                                                          <option style="font-size: 15px; font-weight: 600;"
                                                                              value="Rp.500.000 - 999.999"
                                                                              {{ old('penghasilan_ibu',$casis->orangtuaWaliCasis->penghasilan_ibu) == 'Rp.500.000 - 999.999' ? 'selected' : '' }}>
                                                                              Rp.500.000 - 999.999</option>
                                                                          <option style="font-size: 15px; font-weight: 600;"
                                                                              value="Rp.1.000.000 - 1.999.999"
                                                                              {{ old('penghasilan_ibu',$casis->orangtuaWaliCasis->penghasilan_ibu) == 'Rp.1.000.000 - 1.999.999' ? 'selected' : '' }}>
                                                                              Rp.1.000.000 - 1.999.999</option>
                                                                          <option style="font-size: 15px; font-weight: 600;"
                                                                              value="Rp.2.000.000 - 4.999.999"
                                                                              {{ old('penghasilan_ibu',$casis->orangtuaWaliCasis->penghasilan_ibu) == 'Rp.2.000.000 - 4.999.999' ? 'selected' : '' }}>
                                                                              Rp.2.000.000 - 4.999.999</option>
                                                                          <option style="font-size: 15px; font-weight: 600;"
                                                                              value="Rp.5.000.000 - 20.000.000"
                                                                              {{ old('penghasilan_ibu',$casis->orangtuaWaliCasis->penghasilan_ibu) == 'Rp.5.000.000 - 20.000.000' ? 'selected' : '' }}>
                                                                              Rp.5.000.000 - 20.000.000</option>
                                                                          <option style="font-size: 15px; font-weight: 600;"
                                                                              value="Lebih dari 20.000.000"
                                                                              {{ old('penghasilan_ibu',$casis->orangtuaWaliCasis->penghasilan_ibu) == 'Lebih dari 20.000.000' ? 'selected' : '' }}>
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
                                      
          
                                      <div class="row ">
                                          <div class="col-md-12 ">
                                              <div class="card card-dark d-flex justify-content-center">
                                                      <div class="card-body">
                                                          <div class="row ">
                                                              <div class="col-md-3">
                                                                  <div class="form-group">
                                                                      <label style="font-size: 16px; font-weight: 800;" for="asal_sekolah">Asal Sekolah
                                                                           {{-- <button type="button" class="btn btn-primary btn-md" type="button" data-toggle="modal" data-target="#modalListAsalSekolah">Pilih Sekolah</button> --}}
                                                                          </label>
                                                                          <input type="text" name="asal_sekolah"  id="asal_sekolah" class="@error('asal_sekolah') is-invalid @enderror form-control col-md-12" value="{{old('asal_sekolah',$casis->asal_sekolah)}}">
                                                                      {{-- <select  >
                                                                          <option style="font-size: 15px; font-weight: 600;" value="" selected>--Pilihan--</option>                                 
                                                                          @foreach ($asal_sekolah as $item)
                                                                          <option style="font-size: 15px; font-weight: 600;" value="{{$item->id}}" {{ old('asal_sekolah') == $item->id ? 'selected' : '' }}> {{$item->nama_sekolah}}</option>
                                                                              
                                                                          @endforeach
                                                                      </select> --}}
                                                                  </div>
                                                              </div>
                                                              <div class="col-md-3">
                                                                  <div class="form-group">
                                                                      <label style="font-size: 16px; font-weight: 800;" for="no_peserta_un">No. Peserta UN</label>
                                                                      <input type="text" style="font-size: 15px; font-weight: 600;"
                                                                          class="@error('no_peserta_un') is-invalid @enderror form-control" id="no_peserta_un" name="no_peserta_un"
                                                                          value="{{ old('no_peserta_un',$casis->no_peserta_un) }}">
                                                                  </div>
                                                              </div>
                                                              <div class="col-md-3">
                                                                  <div class="form-group">
                                                                      <label style="font-size: 16px; font-weight: 800;" for="no_seri_ijazah">No. Seri Ijazah</label>
                                                                      <input type="text" style="font-size: 15px; font-weight: 600;"
                                                                          class="@error('no_seri_ijazah') is-invalid @enderror form-control" id="no_seri_ijazah" name="no_seri_ijazah"
                                                                          value="{{ old('no_seri_ijazah',$casis->no_seri_ijazah) }}">
                                                                  </div>
                                                              </div>
                                                              <div class="col-md-3">
                                                                  <div class="form-group">
                                                                      <label style="font-size: 16px; font-weight: 800;" for="no_seri_skhun">No. Seri SKHUN</label>
                                                                      <input type="text" style="font-size: 15px; font-weight: 600;"
                                                                          class="@error('no_seri_skhun') is-invalid @enderror form-control" id="no_seri_skhun" name="no_seri_skhun"
                                                                          value="{{ old('no_seri_skhun',$casis->no_seri_skhun) }}">
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
                                              {{-- baaas  --}}
                                              
                                                  
                                               
                                               
                                              {{-- batas --}}
          
                                              <div class="card-header">
                                                  <a  id="btn_tambah_wali"class="btn btn-warning" data-toggle="collapse" href="#collapsewali" role="button" aria-expanded="false" aria-controls="collapsewali">
                                                      Tutup Data Wali
                                                  </a>
                                              </div>
                                              <h6 id="note_for_btn_wali">*Tutup Kembali Jika tidak ada Wali / Kosongkan</h6>
          
                                              <div class="card card-dark">
                                                  <div class="collapse show" id="collapsewali">
                                                      <div class="card-body">
                                                      
                                                          <div class="form-group">
                                                              <label style="font-size: 16px; font-weight: 800;" for="nama_wali">Nama Wali
                                                                  Kandung</label>
                                                              <input type="text" style="font-size: 15px; font-weight: 600;"
                                                                  class="form-control" id="nama_wali" name="nama_wali"
                                                                  value="{{ old('nama_wali',$casis->orangtuaWaliCasis->nama_wali) }}">
                                                          </div>
                                                          <div class="form-group">
                                                              <label style="font-size: 16px; font-weight: 800;" for="nik_wali">NIK Wali
                                                              </label>
                                                              <input type="text" style="font-size: 15px; font-weight: 600;"
                                                                  class="form-control" id="nik_wali" name="nik_wali"
                                                                  value="{{ old('nik_wali',$casis->orangtuaWaliCasis->nik_wali) }}">
                                                          </div>
                                                          <div class="row">
                                                              <div class="col-md-6">
                                                                  <div class="form-group">
                                                                      <label style="font-size: 16px; font-weight: 800;"
                                                                          for="tahun_lahir_wali">Tahun Lahir Wali </label>
                                                                      <input type="text" style="font-size: 15px; font-weight: 600;"
                                                                          class="form-control" id="tahun_lahir_wali" name="tahun_lahir_wali"
                                                                          value="{{ old('tahun_lahir_wali',$casis->orangtuaWaliCasis->tahun_lahir_wali) }}">
                                                                  </div>
                                                                 
                                                              </div>
                                                              <div class="col-md-6">
                                                                  <div class="form-group ">
                                                                      <label style="font-size: 16px; font-weight: 800;"
                                                                          for="pendidikan_wali">Pendidikan Wali</label>
                                                                      <select style="font-size: 15px; font-weight: 600;" name="pendidikan_wali"
                                                                          id="pendidikan_wali" class="form-control col-md-12">
                                                                          <option style="font-size: 15px; font-weight: 600;" value="" selected>
                                                                              --Pilihan--</option>
                      
                                                                          <option style="font-size: 15px; font-weight: 600;" value="SD/MI"
                                                                              {{ old('pendidikan_wali',$casis->orangtuaWaliCasis->pendidikan_wali) == 'SD/MI' ? 'selected' : '' }}>SD/MI
                                                                          </option>
                                                                          <option style="font-size: 15px; font-weight: 600;" value="SMP/MTS"
                                                                              {{ old('pendidikan_wali',$casis->orangtuaWaliCasis->pendidikan_wali) == 'SMP/MTS' ? 'selected' : '' }}>SMP/MTS
                                                                          </option>
                                                                          <option style="font-size: 15px; font-weight: 600;" value="SMA/MA"
                                                                              {{ old('pendidikan_wali',$casis->orangtuaWaliCasis->pendidikan_wali) == 'SMA/MA' ? 'selected' : '' }}>SMA/MA
                                                                          </option>
                                                                          <option style="font-size: 15px; font-weight: 600;" value="SMK"
                                                                              {{ old('pendidikan_wali',$casis->orangtuaWaliCasis->pendidikan_wali) == 'SMK' ? 'selected' : '' }}>SMK</option>
                                                                          <option style="font-size: 15px; font-weight: 600;" value="D1"
                                                                              {{ old('pendidikan_wali',$casis->orangtuaWaliCasis->pendidikan_wali) == 'D1' ? 'selected' : '' }}>D1</option>
                                                                          <option style="font-size: 15px; font-weight: 600;" value="S1"
                                                                              {{ old('pendidikan_wali',$casis->orangtuaWaliCasis->pendidikan_wali) == 'S1' ? 'selected' : '' }}> S1</option>
                                                                          <option style="font-size: 15px; font-weight: 600;" value="S2"
                                                                              {{ old('pendidikan_wali',$casis->orangtuaWaliCasis->pendidikan_wali) == 'S2' ? 'selected' : '' }}> S2</option>
                                                                          <option style="font-size: 15px; font-weight: 600;" value="S3"
                                                                              {{ old('pendidikan_wali',$casis->orangtuaWaliCasis->pendidikan_wali) == 'S3' ? 'selected' : '' }}> S3</option>
                                                                          <option style="font-size: 15px; font-weight: 600;" value="Tidak Sekolah"
                                                                              {{ old('pendidikan_wali',$casis->orangtuaWaliCasis->pendidikan_wali) == 'Tidak Sekolah' ? 'selected' : '' }}>
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
                                                                      <select style="font-size: 15px; font-weight: 600;" name="pekerjaan_wali"
                                                                          id="pekerjaan_wali" class="form-control col-md-12">
                                                                          <option style="font-size: 15px; font-weight: 600;" value="" selected>
                                                                              --Pilihan--</option>
                      
                                                                          <option style="font-size: 15px; font-weight: 600;" value="Buruh"
                                                                              {{ old('pekerjaan_wali',$casis->orangtuaWaliCasis->pekerjaan_wali) == 'Buruh' ? 'selected' : '' }}>Buruh
                                                                          </option>
                                                                          <option style="font-size: 15px; font-weight: 600;" value="Nelayan"
                                                                              {{ old('pekerjaan_wali',$casis->orangtuaWaliCasis->pekerjaan_wali) == 'Nelayan' ? 'selected' : '' }}>Nelayan
                                                                          </option>
                                                                          <option style="font-size: 15px; font-weight: 600;" value="Petani"
                                                                              {{ old('pekerjaan_wali',$casis->orangtuaWaliCasis->pekerjaan_wali) == 'Petani' ? 'selected' : '' }}>Petani
                                                                          </option>
                                                                          <option style="font-size: 15px; font-weight: 600;" value="Peternak"
                                                                              {{ old('pekerjaan_wali',$casis->orangtuaWaliCasis->pekerjaan_wali) == 'Peternak' ? 'selected' : '' }}>Peternak
                                                                          </option>
                                                                          <option style="font-size: 15px; font-weight: 600;" value="Pedagang"
                                                                              {{ old('pekerjaan_wali',$casis->orangtuaWaliCasis->pekerjaan_wali) == 'Pedagang' ? 'selected' : '' }}>Pedagang
                                                                          </option>
                                                                          <option style="font-size: 15px; font-weight: 600;" value="Pensiunan"
                                                                              {{ old('pekerjaan_wali',$casis->orangtuaWaliCasis->pekerjaan_wali) == 'Pensiunan' ? 'selected' : '' }}>
                                                                              Pensiunan</option>
                                                                          <option style="font-size: 15px; font-weight: 600;"
                                                                              value="Karyawan Swasta"
                                                                              {{ old('pekerjaan_wali',$casis->orangtuaWaliCasis->pekerjaan_wali) == 'Karyawan Swasta' ? 'selected' : '' }}>
                                                                              Karyawan Swasta</option>
                                                                          <option style="font-size: 15px; font-weight: 600;" value="Guru"
                                                                              {{ old('pekerjaan_wali',$casis->orangtuaWaliCasis->pekerjaan_wali) == 'Guru' ? 'selected' : '' }}> Guru
                                                                          </option>
                                                                          <option style="font-size: 15px; font-weight: 600;"
                                                                              value="Perangkat Desa"
                                                                              {{ old('pekerjaan_wali',$casis->orangtuaWaliCasis->pekerjaan_wali) == 'Perangkat Desa' ? 'selected' : '' }}>
                                                                              Perangkat Desa</option>
                                                                          <option style="font-size: 15px; font-weight: 600;" value="PNS/TNI/Polri"
                                                                              {{ old('pekerjaan_wali',$casis->orangtuaWaliCasis->pekerjaan_wali) == 'PNS/TNI/Polri' ? 'selected' : '' }}>
                                                                              PNS/TNI/Polri</option>
                                                                          <option style="font-size: 15px; font-weight: 600;" value="Wiraswasta"
                                                                              {{ old('pekerjaan_wali',$casis->orangtuaWaliCasis->pekerjaan_wali) == 'Wiraswasta' ? 'selected' : '' }}>
                                                                              Wiraswasta</option>
                                                                          <option style="font-size: 15px; font-weight: 600;" value="Wirausaha"
                                                                              {{ old('pekerjaan_wali',$casis->orangtuaWaliCasis->pekerjaan_wali) == 'Wirausaha' ? 'selected' : '' }}>
                                                                              Wirausaha</option>
                                                                          <option style="font-size: 15px; font-weight: 600;" value="TKI"
                                                                              {{ old('pekerjaan_wali',$casis->orangtuaWaliCasis->pekerjaan_wali) == 'TKI' ? 'selected' : '' }}> TKI</option>
                                                                          <option style="font-size: 15px; font-weight: 600;"
                                                                              value="Sudah Meninggal"
                                                                              {{ old('pekerjaan_wali',$casis->orangtuaWaliCasis->pekerjaan_wali) == 'Sudah Meninggal' ? 'selected' : '' }}>
                                                                              Sudah Meninggal</option>
                                                                          <option style="font-size: 15px; font-weight: 600;" value="Tidak Bekerja"
                                                                              {{ old('pekerjaan_wali',$casis->orangtuaWaliCasis->pekerjaan_wali) == 'Tidak Bekerja' ? 'selected' : '' }}>
                                                                              Tidak Bekerja</option>
                                                                      </select>
                                                                  </div>
                                                              </div>  
                                                              <div class="col-md-6">
                                                                  <div class="form-group ">
                                                                      <label style="font-size: 16px; font-weight: 800;"
                                                                          for="penghasilan_wali">Penghasilan Wali</label>
                                                                      <select style="font-size: 15px; font-weight: 600;" name="penghasilan_wali"
                                                                          id="penghasilan_wali" class="form-control col-md-12">
                                                                          <option style="font-size: 15px; font-weight: 600;" value="" selected>
                                                                              --Pilihan--</option>
                      
                                                                          <option style="font-size: 15px; font-weight: 600;"
                                                                              value="Rp.0 - 500.000"
                                                                              {{ old('penghasilan_wali',$casis->orangtuaWaliCasis->penghasilan_wali) == 'Rp.0 - 500.000' ? 'selected' : '' }}>
                                                                              Rp.0 - 500.000</option>
                                                                          <option style="font-size: 15px; font-weight: 600;"
                                                                              value="Rp.500.000 - 999.999"
                                                                              {{ old('penghasilan_wali',$casis->orangtuaWaliCasis->penghasilan_wali) == 'Rp.500.000 - 999.999' ? 'selected' : '' }}>
                                                                              Rp.500.000 - 999.999</option>
                                                                          <option style="font-size: 15px; font-weight: 600;"
                                                                              value="Rp.1.000.000 - 1.999.999"
                                                                              {{ old('penghasilan_wali',$casis->orangtuaWaliCasis->penghasilan_wali) == 'Rp.1.000.000 - 1.999.999' ? 'selected' : '' }}>
                                                                              Rp.1.000.000 - 1.999.999</option>
                                                                          <option style="font-size: 15px; font-weight: 600;"
                                                                              value="Rp.2.000.000 - 4.999.999"
                                                                              {{ old('penghasilan_wali',$casis->orangtuaWaliCasis->penghasilan_wali) == 'Rp.2.000.000 - 4.999.999' ? 'selected' : '' }}>
                                                                              Rp.2.000.000 - 4.999.999</option>
                                                                          <option style="font-size: 15px; font-weight: 600;"
                                                                              value="Rp.5.000.000 - 20.000.000"
                                                                              {{ old('penghasilan_wali',$casis->orangtuaWaliCasis->penghasilan_wali) == 'Rp.5.000.000 - 20.000.000' ? 'selected' : '' }}>
                                                                              Rp.5.000.000 - 20.000.000</option>
                                                                          <option style="font-size: 15px; font-weight: 600;"
                                                                              value="Lebih dari 20.000.000"
                                                                              {{ old('penghasilan_wali',$casis->orangtuaWaliCasis->penghasilan_wali) == 'Lebih dari 20.000.000' ? 'selected' : '' }}>
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
                                                      <option style="font-size: 15px; font-weight: 600;" value="" disabled selected>--Pilihan--</option>
                                                      <option style="font-size: 15px; font-weight: 600;" value="Prestasi" {{old('jalur',$prestasi_casis) == 'Prestasi' ? 'selected' : ''}}>  Prestasi</option>
                                                      <option style="font-size: 15px; font-weight: 600;" value="Umum" {{old('jalur',$prestasi_casis) == 'Umum' ? 'selected' : ''}}>Umum  </option>
                                                  </select>
                                              <h6 id="note_for_prestasi" class="{{$prestasi_casis === 'Umum'  ? 'd-none' : ''}}" >*Pilih Umum Jika tidak ada Prestasi / Kosongkan</h6>
          
                                                  <div class="card card-dark">
                                                      <div class="card card-body">
                                                          <div id="prestasi" class="{{$prestasi_casis === 'Umum'  ? 'd-none' : ''}}" >
                                                              <div class="card card-body">
                                                                  <div class="row">
                                                                      <div class="col-md-6">
                                                                          <div class="form-group">
                                                                              <label style="font-size: 16px; font-weight: 800;" for="no_jenis_prestasi">
                                                                                  Jenis Prestasi</label>
                                                                              <input type="text" style="font-size: 15px; font-weight: 600;"
                                                                                  class="form-control" id="jenis_prestasi" name="jenis_prestasi"
                                                                                  value="{{ old('jenis_prestasi',$casis->prestasiCasis->jenis_prestasi) }}">
                                                                          </div>
                                                                      </div>
                                                                      <div class="col-md-6">
                                                                          <div class="form-group">
                                                                              <label style="font-size: 16px; font-weight: 800;" for="tingkat_prestasi">
                                                                                  Tingkat Prestasi</label>
                                                                              <input type="text" style="font-size: 15px; font-weight: 600;"
                                                                                  class="form-control" id="tingkat_prestasi" name="tingkat_prestasi"
                                                                                  value="{{ old('tingkat_prestasi',$casis->prestasiCasis->tingkat_prestasi) }}">
                                                                          </div>
                                                                      </div>
                                                                      
                                                                  </div>
                                                                  <div class="row">
                                                                      <div class="col-md-6">
                                                                          <div class="form-group">
                                                                              <label style="font-size: 16px; font-weight: 800;" for="nama_prestasi">
                                                                                  Nama Prestasi</label>
                                                                              <input type="text" style="font-size: 15px; font-weight: 600;"
                                                                                  class="form-control" id="nama_prestasi" name="nama_prestasi"
                                                                                  value="{{ old('nama_prestasi',$casis->prestasiCasis->nama_prestasi) }}">
                                                                          </div>
                                                                      </div>
                                                                      <div class="col-md-6">
                                                                          <div class="form-group">
                                                                              <label style="font-size: 16px; font-weight: 800;" for="tahun_prestasi">
                                                                                  Tahun Prestasi</label>
                                                                              <input type="text" style="font-size: 15px; font-weight: 600;"
                                                                                  class="form-control" id="tahun_prestasi" name="tahun_prestasi"
                                                                                  value="{{ old('tahun_prestasi',$casis->prestasiCasis->tahun_prestasi) }}">
                                                                          </div>
                                                                      </div>
                                                                  </div>
                                                                  <div class="row">
                                                                      <div class="col-md-6">
                                                                          <div class="form-group">
                                                                              <label style="font-size: 16px; font-weight: 800;" for="penyelenggara_prestasi">
                                                                                  Penyelenggara</label>
                                                                              <input type="text" style="font-size: 15px; font-weight: 600;"
                                                                                  class="form-control" id="penyelenggara_prestasi" name="penyelenggara_prestasi"
                                                                                  value="{{ old('penyelenggara_prestasi',$casis->prestasiCasis->penyelenggara_prestasi) }}">
                                                                          </div>
                                                                      </div>
                                                                      <div class="col-md-6">
                                                                          <div class="form-group">
                                                                              <label style="font-size: 16px; font-weight: 800;" for="peringkat_prestasi">
                                                                                  Peringkat</label>
                                                                              <input type="text" style="font-size: 15px; font-weight: 600;"
                                                                                  class="form-control" id="peringkat_prestasi" name="peringkat_prestasi"
                                                                                  value="{{ old('peringkat_prestasi',$casis->prestasiCasis->peringkat_prestasi) }}">
                                                                          </div>
                                                                      </div>
                                                                  </div>  
                                                              </div>
                                                          </div>
                                                      </div>
                                                  </div>
                                                      
                                          </div>
          
                                      </div>
          
                                      <div class="d-flex justify-content-end">
                                          {{-- <button class="btn btn-warning btm-md justify-content-end mr-3">Kembai</button> --}}
                                  <a href="{{route('login')}}" class="btn btn-warning mr-3" style="border-radius: 10px; ">Kembali</a>

                                          <button class="btn btn-success btm-md justify-content-end mr-3 text-dark"
                                              style="border-radius: 10px; background: rgb(101, 255, 80);">Daftarkan</button>
          
                                      </div>
                                  </div>
                              </form>
                          {{-- </div> --}}
                      </div>
                  </div>
              </div>

                  @else 
       
                  <section class="section" style="height: 1000px;"  >
                    <div class="card" style="height: 1100px;">
                    <div class="section-header">
                      <h1>Profile</h1>
                      <div class="section-header-breadcrumb">
                        <div class="breadcrumb-item active"><a href="#">Dashboard</a></div>
                        <div class="breadcrumb-item">Profile</div>
                      </div>
                    </div>
               
                           
                      <div class="section-body" >
                        {{-- <h2 class="section-title">Hi, {{Str::words($profile->name,1)}}!</h2> --}}
                         {{-- <p class="section-lead">
                           Ubah informasi tentang diri kamu di halaman ini .
                         </p> --}}
  
                         <div class="row ">
                          <div class="col-12 col-md-12 col-lg-5" style="margin-top: -20px;">
                            <div class="card profile-widget p-4">
                              <center>
                                <div class="profile-widget-header" >
                                          @if (File::exists(public_path($profile->avatar)))
                                    <img alt="image" src="{{ asset($profile->avatar) }}" id="outputProfile" style="width: 210px; height: 210px; border-radius: 50%;">
                                            @else 
                                    <img alt="image" src="{{ asset('img/avatar/avatar-1.png') }}" id="outputProfile" style="width: 210px; height: 210px; border-radius: 50%;">
                                        @endif
                                  {{-- <div class="profile-widget-items">
                                  
                                  </div> --}}
                                </div>
  
                              </center>
                              <div class="profile-widget-description">
                                <div class="profile-widget-name"></div>
                                @if (Auth::user()->role->name == "perusahaan" )
                                        @if (empty($profile->detailUser->bio))
                                        <h6 style="font-weight: 100" class="d-flex justify-content-center" >Tidak ada deskripsi perusahaan</h6>
                                      @else
                                      <h6 class="d-flex justify-content-center">
                                        {{$profile->detailUser->bio}}
                                      </h6> 
                                        @endif
  
                               @elseif(Auth::user()->role->name == "admin" && Auth::user()->spesifc_role == "admin" || Auth::user()->role->name == "user" && Auth::user()->spesifc_role == "panitia")
  
                                      <h6></h6>
  
                              @else 
  
                                    @if (empty($profile->detailUser->bio))
                                    <h6 style="font-weight: 100" class="d-flex justify-content-center" >Tidak ada bio</h6>
                                  @else
                                  <h6 class="d-flex justify-content-center">
                                    "{{$profile->detailUser->bio}}"
                                  </h6>
  
                                  @endif
  
                                @endif
                              </div>
                                @if (Auth::user()->role->name == "perusahaan")
                                 
                                @elseif(Auth::user()->role->name == "admin" && Auth::user()->spesifc_role == "admin" ||  Auth::user()->role->name == "user" && Auth::user()->spesifc_role == "panitia")
  
  
                                @else
                                <div class="card-footer text-center">
                                  <div class="font-weight-bold mb-2">Keahlian</div>
                                  <div class="badges">
                                    {{-- <a style="cursor: pointer;" class="badge badge-primary">Primary</a> --}}
                                    {{-- {{dd($yourSkill)}} --}}
                                    @if (empty($yourSkill) || $profile->detailUser->skill == null )
                                      <br>
                                      <h5>Belum ada keahlian</h5>
                                    @else
                                      <br>
                                      @foreach ($yourSkill as $item)
                                      <a style="cursor: pointer;" class="badge badge-primary">{{$item->nama_skill}}</a>
    
                                      @endforeach
                                
                                    @endif
                                  </div>
                                </div>
                                @endif
                            </div>
                            
                              @if (Auth::user()->role->name === "perusahaan")
                            
                              @elseif(Auth::user()->role->name == "admin" && Auth::user()->spesifc_role == "admin" ||  Auth::user()->role->name == "user" && Auth::user()->spesifc_role == "panitia")
  
  
                              @else 
                              <div class="embed-responsive embed-responsive-16by9 h-50 w-100 ml-4" >
                                {{-- {{dd}} --}}
                                @if ($profile->detailUser == null || $profile->detailUser->cv == null)
                                <iframe class=" embed-responsive-item h-100 "  id="preview-image-before-upload" type="application/pdf"  src="{{asset('404_file.gif')}}" allowfullscreen></iframe>
                                @else 
                                    <iframe class=" embed-responsive-item h-100 "   id="preview-image-before-upload" type="application/pdf"  src="{{asset($profile->detailUser->cv)}}" allowfullscreen></iframe>
                                    
                                @endif
                              </div>
                              @endif
                          </div>
                          <div class="col-12 col-md-12 col-lg-7 mt-3" >
                            <div class="card">
                              @if (Auth::user()->role->name == "manager")
                              <form method="post" action="{{ route('update.profileManager', $profile->id) }}" class="needs-validation" enctype="multipart/form-data">
                                  @elseif(Auth::user()->role->name == "guru")
                              <form method="post" action="{{ route('update.profileGuru', $profile->id) }}" class="needs-validation" enctype="multipart/form-data">
  
                                  @elseif(Auth::user()->role->name == "perusahaan")
                              <form method="post" action="{{ route('update.profilePerusahaan', $profile->id) }}" class="needs-validation" enctype="multipart/form-data">
  
  
                                @elseif(Auth::user()->role->name == "admin" && Auth::user()->spesifc_role == "admin")
                                <form method="post" action="{{ route('update.profileAdm', $profile->id) }}" class="needs-validation" enctype="multipart/form-data">
    
                                  @elseif(Auth::user()->role->name == "user" && Auth::user()->spesifc_role == "panitia")
                                  <form method="post" action="{{ route('update.profilePanitia', $profile->id) }}" class="needs-validation" enctype="multipart/form-data">
      
                                  @else 
                                  <form method="post" action="{{ route('update.profileSiswa', $profile->id) }}" class="needs-validation" enctype="multipart/form-data">
  
                                  @endif
                              @method('put')
                                @csrf
                                <div class="card-header">
                                  <h4>Edit Profile</h4>
                                </div>
                                <div class="card-body">
                                    <div class="row">
                                      <div class="form-group {{ (Auth::user()->role->name == 'siswa') ? 'col-md-6' : 'col-md-6' }}  col-12">
                                        <label>Name</label>
                                        <input type="text" style="font-size: 17px;" class="form-control @error('name') is-invalid @enderror" value="{{old('name',$profile->name)}}" name="name">
                                        @error('name')
                                        <div class="invalid-feedback">
                                          {{$message}}
                                        </div>
                                        @enderror
                                      </div>
                                      @if (Auth::user()->role->name === 'siswa')
                                      <div class="form-group {{ (Auth::user()->role->name == 'siswa') ? 'col-md-6' : 'col-md-6' }}  col-12">
                                        <label>Kelas {{Auth::user()->role->name}}</label>
                                         <select name="kelas_id" id=""  style="font-size: 17px;" class="form-control @error('kelas_id') is-invalid @enderror">
                                            <option value="">-- Pilih kelas --</option>
                                            @foreach ($kelas as $item)
                                              <option value="{{ $item->id}}" {{ ($item->id == old('kelas_id',$profile->kelas->id)) ? 'selected' : '' }}>{{ $item->nama_kelas }}</option>
                                            @endforeach
                                         </select>
                                         @error('kelas_id')
                                         <div class="invalid-feedback">
                                           {{$message}}
                                         </div>
                                         @enderror
                                      </div>
                                      @endif
                                      <div class="form-group {{ (Auth::user()->role->name == 'siswa') ? 'col-md-6' : 'col-md-6' }}  col-12">
                                        <label>Email</label>
                                        <input type="email" style="font-size: 17px;" class="form-control @error('email') is-invalid @enderror" value="{{old('email',$profile->email)}}" name="email">
                                        @error('email')
                                        <div class="invalid-feedback">
                                          {{$message}}
                                        </div>
                                        @enderror
                                      </div>
                                      <div class="form-group col-md-6 col-12">
                                        <label>Password</label>
                                        <div class="input-group">
                                          <input type="password" style="font-size: 17px;" id="password" name="password" class="form-control @error('password') is-invalid @enderror" value="{{old('password')}}" >
                                          <div class="input-group-prepend">
                                            <div class="input-group-text">
                                              <i class="bi bi-eye-slash" id="togglePassword"></i>
                                            </div>
                                          </div>
                                          <span class="text-secondary" style="font-weight: 500px;">Kosong kan jika password sama.</span>
                                          
                                        </div>
                                      </div>
                                      @if (Auth::user()->role->name == "admin" && Auth::user()->spesifc_role == "admin")
                                      <div class="form-group col-md-6 col-12">
                                        <label>File Photo</label>
                                        <input name="profileImg"  onchange="loadFileEdit(event)" type="file" class="form-control"  accept="image/png, image/jpeg, image/jpg" >
                                      </div>
                                              
                                      @else 
  
                                      @endif
                                    </div>
                                    <div class="row">
                                      <div class="form-group col-md-6 col-12">
                                        @if (Auth::user()->role->name == "perusahaan")
                                        <label>Contact</label>
                                        <input  type="text" class="form-control @error('no_telpon') is-invalid @enderror" name="no_telpon" value="{{!empty($profile->detailUser->no_telpon) ? $profile->detailUser->no_telpon : ""}}" >
                                        @error('no_telpon')
                                        <div class="invalid-feedback">
                                          {{$message}}
                                        </div>
                                        @enderror
  
                                        @elseif(Auth::user()->role->name == "admin" && Auth::user()->spesifc_role == "admin" || Auth::user()->role->name == "user" && Auth::user()->spesifc_role == "panitia")
                                        
  
  
  
                                            @else
                                        <label>Nomor Telp</label>
                                        <input  type="text" class="form-control @error('no_telpon') is-invalid @enderror" name="no_telpon" value="{{!empty($profile->detailUser->no_telpon) ? $profile->detailUser->no_telpon : ""}}" >
                                        
                                        @error('no_telpon')
                                        <div class="invalid-feedback">
                                          {{$message}}
                                        </div>
                                        @enderror
                                        @endif
                                      </div>
                                          @if (Auth::user()->role->name == "admin" && Auth::user()->spesifc_role == "admin" || Auth::user()->role->name == "user" && Auth::user()->spesifc_role == "panitia")
                                              
                                          @else 
                                          <div class="form-group col-md-6 col-12">
                                            <label>File Photo</label>
                                            <input name="profileImg"  onchange="loadFileEdit(event)" type="file" class="form-control"  accept="image/png, image/jpeg, image/jpg" >
                                          </div>
  
                                          @endif
                                    </div>
                                   
                                    <div class="row">
                                      <div class="form-group col-12">
                                        @if (Auth::user()->role->name == "perusahaan")
                                        <label>Deskripsi Perusahaan</label>
                                        <textarea name="bio" style="font-size: 17px;" class="form-control summernote-simple @error('bio') is-invalid @enderror ">{{!empty($profile->detailUser->bio) ? $profile->detailUser->bio : ""}}</textarea>
                                        @error('bio')
                                         <div class="invalid-feedback">
                                           {{$message}}
                                         </div>
                                         @enderror
  
                                        @elseif(Auth::user()->role->name == "admin" && Auth::user()->spesifc_role == "admin" || Auth::user()->role->name == "user" && Auth::user()->spesifc_role == "panitia" )
  
                                        @else
                                        <label>Bio</label>
                                        <textarea name="bio" style="font-size: 17px;" class="form-control summernote-simple @error('bio') is-invalid @enderror ">{{!empty($profile->detailUser->bio) ? $profile->detailUser->bio : ""}}</textarea>
                                        @error('bio')
                                         <div class="invalid-feedback">
                                           {{$message}}
                                         </div>
                                         @enderror
  
                                        @endif
                                      </div>
                                    </div>
                                    {{-- <div class="row">
                                      <div class="form-group col-12">
                                        <label>Job desk</label>
                                        <select class="form-control" name="" id="">
                                          <option value="" selected>Pilih Job desc</option>
                                          <option value="">Backend Dev</option>
                                          <option value="">Frontend Dev</option>
                                          <option value="">Fullstack Dev</option>
                                        </select>
                                      </div>
                                    </div> --}}
                                    @if (Auth::user()->role->name === "perusahaan")
                                    
                                    @elseif(Auth::user()->role->name == "admin" && Auth::user()->spesifc_role == "admin" || Auth::user()->role->name == "user" && Auth::user()->spesifc_role == "panitia")
  
  
                                    @else 
                                    <div class="row">
                                      <div class="form-group col-12">
                                        <label>Select your skill</label>
                                        {{-- {{dd($detailProfileSkill[0])}} --}}
                                        {{-- {{dd($detailProfileSkill)}} --}}
                                          <select class="form-control select2 @error('skill') is-invalid @enderror" id="categorySkill" name="skill[]" multiple="">
                                           @foreach ($skill as $key => $value ) 
                                             <option value="{{$value->id}}" >{{$value->nama_skill}}</option>
                                           @endforeach
  
                                         
                                          {{-- @endforeach --}}
                                           
                                          
                                          </select>
                                          @error('skill')
                                          <div class="invalid-feedback">
                                            {{$message}}
                                          </div>
                                          @enderror
                                      </div>
                                      
                                    </div>
                                    <div class="row">
                                      <div class="form-group col-md-12 col-12">
                                        <label>Upload your cv here</label>
                                        <input id="cv" type="file" class="form-control" name="cv" accept="application/pdf" >
                                        @error('cv')
                                        <div class="invalid-feedback">
                                          {{$message}}
                                        </div>
                                        @enderror
                                      </div>
                                      
                                    </div>
                                    @endif
                                </div>
                                
                                <div class="card-footer text-right">
                                  <a href="{{route('login')}}" class="btn btn-warning">Back</a>
                                  <button  type="submit" class="btn btn-primary">Save Changes</button>
                                </div>
                              </form>
                            </div>
                          </div>
                        </div>
                         </div>
                      </div>
                  </section>
                  
          
          
                  
              
                  <span id="skil_user" data-name="{{ collect($detailProfileSkill) }}"></span>
  
  


                @endif
              @endsection
        {{-- @stack('name') --}}
        @section('script')
<script   type="text/javascript" src="{{ URL::asset ('js/pendaftaran_casis.js') }}"></script>


        <script>
          $('#categorySkill').select2().val($('#skil_user').data('name')).trigger('change');
       
        
        //   function tooglePassword() {
        //   var element = document.getElementById("myDIV");
        //   element.classList.toggle("mystyle");
        // }
        
        
        $(document).ready(function (e) {
        
        
        $('#cv').change(function(){
        
         let reader = new FileReader();
        
         reader.onload = (e) => {
        
           $('#preview-image-before-upload').attr('src', e.target.result);
         }
        
         reader.readAsDataURL(this.files[0]);
        
        });
        
        });
              </script>
        @endsection