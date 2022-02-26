@extends('template.app')
@section('title')
@section('main')
    <style>
        .ani {
            transition: 500ms;
        }

        .ani:hover {
            -ms-transform: scale(1.05);
            /* IE 9 */
            -webkit-transform: scale(1.05);
            /* Safari 3-8 */
            transform: scale(1.05);
            box-shadow: 20px;
            transition: 500ms;
        }

    </style>
    <div class="container mt-5 mb-5" data-aos="fade-up">
        <a href="/kesiswaan/ekstrakurikuler" class="col-12" style="font-size: 17px;"><i class="fas fa-arrow-left"></i>
            Kembali</a>
        <nav>
            <div class="nav nav-tabs flex-column flex-sm-row mt-4" id="nav-tab" role="tablist">
            
                <a class="flex-sm-fill text-sm-center nav-link "
                    aria-current="page" data-bs-toggle="tab"
                    data-bs-target="#informasi"><b>Informasi</b></a>

                <a class="flex-sm-fill text-sm-center nav-link "
                aria-current="page" data-bs-toggle="tab"
                data-bs-target="#gugus"><b>Gugus</b></a>

                <a class="flex-sm-fill text-sm-center nav-link "
                    aria-current="page" data-bs-toggle="tab"
                    data-bs-target="#kelas"><b>Kelas</b></a>
            </div>
        </nav>
        <div class="tab-content mt-5 mb-5" id="nav-tabContent">
            <div class="tab-pane fade show " id="informasi"
                role="tabpanel" aria-labelledby="informasi-tab">
                <h2 class="fw-bold">
                   Informasi
                </h2>
          
                        <div class="mt-5">
                            informasi
                        </div>
                   
            
            </div>
            <div class="tab-pane fade show " id="gugus"
            role="tabpanel" aria-labelledby="gugus-tab">
            <h2 class="fw-bold">
                Data pembagian GUGUS Calon Siswa
            </h2>
      
                    <div class="mt-5">
                  
                       @foreach ($gugus_frontView as $item)
                       @php
                       $casis = App\Models\CalonSiswa::where('gugus_id',$item->id)->get();  
                     @endphp
                       <span class="h5"><b>-{{$item->nama_gugus}}</b></span>
                        <table class="table table-bordered">
                            <thead> 
                                <tr>
                                    <th>NO PPDB</th>
                                    <th>Nama</th>
                                    <th>Asal Sekolah</th>
                                </tr>
                            </thead>
                            <tbody>
                            
                                @forelse ($casis as $item)
                                    <tr>
                                        <td>{{$item->no_daftar}}</td>
                                        <td>{{$item->nama_lengkap}}</td>
                                        <td>{{$item->asal_sekolah}}</td>
                                    </tr>
                                @empty
                                <tr class="text-center">
                                    <td colspan="3">Belum ada Peserta Gugus</td>
                                </tr>
                                @endforelse

                            </tbody>
                        </table>
                       @endforeach
                    </div>
               
        
        </div>
        <div class="tab-pane fade show " id="kelas"
        role="tabpanel" aria-labelledby="kelas-tab">
        <h2 class="fw-bold">
           Kelas
        </h2>
  
        <div class="mt-5">
            @php
                    $item = ['PPLG','ANIMASI','TJKT','BCF','TE'];
                    foreach ($item as $key => $value) {
                        $kelas[] = App\Models\Kela::where('kelas','X')->where('jurusan',$value)->first();
                    }
                    // dd($kelas);
            @endphp
            @foreach ($kelas as $item)
            @php 
            // $user = App\Models\User::whereYear('created_at','=',Carbon\Carbon::now()->format('Y'))->where('kelas_siswa',$item->id)->get();
        // dd();
        $casis_has = App\Models\CalonSiswa::whereYear('created_at','=',Carbon\Carbon::now()->format('Y'))->get();
        // dd($casis_has);
        foreach ($casis_has as $key) {
            if ($key->user->kelas_siswa == $item->id) {
                $user_get_fix[] =   App\Models\User::where('calon_siswa_id',$key->id)->first();
            }
        }
        // dd($user_get_fix);
        
        // $w = [];
        // foreach (array_filter($user_get_fix) as $key => $value) {
        //     $arr[] = $value;
        // }
        // // dd($arr);
        foreach ($user_get_fix as $k ) {
                $user[] = App\Models\CalonSiswa::where('id',$k->calon_siswa_id)->first();
        }
        // dd($user);
       @endphp
            <span class="h5"><b>-{{$item->nama_kelas}}</b></span>

            <table class="table table-bordered">
                <thead> 
                    <tr>
                        {{-- <th>NIPD</th> --}}
                        <th>NO PENDAFTARAN</th>
                        <th>NAMA PESERTA DIDIK</th>
                        <th>JK</th>
                        <th>Asal Sekolah</th>
                        <th>KET</th>
                    </tr>
                </thead>
                <tbody>
                   
                    @foreach ($user as $key_u)
                      @if ($key_u->user->kelas_siswa == $item->id)
                        <tr>
                            <td>{{$key_u->no_daftar}}</td>
                            <td>{{$key_u->nama_lengkap}}</td>
                            <td>{{$key_u->jenis_kelamin}}</td>  
                            <td>{{$key_u->asal_sekolah}}</td>  
                        </tr>
                        
                      @endif

                    @endforeach

                </tbody>
            </table>

            @endforeach
        </div>
           
    
    </div>
        </div>
    </div>
@endsection
