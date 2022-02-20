@extends('dashboard.dashboard')
@section('content_casis')

@if(session()->has('message'))
    <div class="alert alert-success">
        {{ session()->get('message') }}, Tunggu hingga pembayaran terkonfirmasi 
    </div>
@endif

@php

          //  $pembayaran =  App\Models\PembayaranCalonSiswa::where('calonsiswa_id',Auth::guard('api')->user()->calon_siswa_id)->first();
           $pembayaran_all =  App\Models\PembayaranCalonSiswa::where('calonsiswa_id',Auth::guard('api')->user()->calon_siswa_id)->get();
           $pembayaran_first =  App\Models\PembayaranCalonSiswa::where('calonsiswa_id',Auth::guard('api')->user()->calon_siswa_id)->get();

           $check_gugus = App\Models\CalonSiswa::where('id',Auth::guard('api')->user()->calon_siswa_id)->first();
           
           $data_pembayaran = App\Models\Pembayaran::first();
           $pembayaran_acc =  App\Models\PembayaranCalonSiswa::where('calonsiswa_id',Auth::guard('api')->user()->calon_siswa_id)->where('status','=',1)->get();
           $nominal_menyeluruh = [];
           foreach ($pembayaran_acc as $key ) {
              $nominal_menyeluruh[] = $key->nominal  ;
          } 
          $total_pembayaran = array_sum($nominal_menyeluruh);



          $nilai_kurang = $data_pembayaran->nominal_pembayaran - $total_pembayaran;
            // dd($pembayaran)
        @endphp
        {{-- {{dd()}} --}}
        <div class="col-12 col-sm-12 col-lg-12">
          <div class="card">
            <div class="card-header">
              <h4>Info Pembayaran</h4>
            </div>
            <div class="card-body">
              <ul class="nav nav-tabs" id="myTab2" role="tablist">
                <li class="nav-item">
                  <a class="nav-link " id="histori-tab2" data-toggle="tab" href="#histori2" role="tab" aria-controls="histori" aria-selected="true">History Pembayaran</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" id="detail_pembayaran-tab2" data-toggle="tab" href="#detail_pembayaran2" role="tab" aria-controls="detail_pembayaran" aria-selected="false">Pembayaran</a>
                </li>
               @if ($nilai_kurang == 0)
               <li class="nav-item">
                <a class="nav-link" id="info-tab2" data-toggle="tab" href="#info2" role="tab" aria-controls="info" aria-selected="false">Informasi</a>
              </li>
               @endif
          
              </ul>
              <div class="tab-content tab-bordered" id="myTab3Content">
                <div class="tab-pane fade  " id="histori2" role="tabpanel" aria-labelledby="histori-tab2">
                  <div class="col-12 col-sm-12 col-lg-12">
                        <div class="row">
                          <div class="col-12 col-sm-12 col-md-5">
                            <ul class="nav nav-pills flex-column" id="myTab4" role="tablist">
                              @forelse ($pembayaran_all as $item)
                              <li class="nav-item" >
                                <a class="nav-link " id="pembayaran-tab{{$loop->iteration}}" data-toggle="tab" href="#pembayaran{{$loop->iteration}}" role="tab" aria-controls="pembayaran" aria-selected="true">
                                  <div class="row">
                                    <div class="col-6">
                                        <h6>Pembayaran {{$loop->iteration}}</h6>
                                      </div>
                                      <div class="col-6">
                                        @if ($item->status == null)
                                        <span class="badge rounded  badge-warning"><b>Belum Terkonfirmasi</b></span>
                                        @elseif($item->status == 0)
                                        <span class="badge rounded  badge-danger"><b>Di Tolak</b></span>
                                          @else
                                        <span class="badge rounded  badge-success"><b>Di Terima</b></span>
                                        @endif
                                      </div>
                                    </div>
                                    <div class="row">
                                      <div class="col-6">
                                        <span>Tipe : {{$item->tipePembayaran->nama_pembayaran}}</span>
                                      </div>
                                      <div class="col-6">
                                        <span>{{$item->created_at->isoFormat('dddd, D MMMM Y');}}</span>
                                      </div>
                                    </div>
                                </a>
                                
                              </li>
                              @empty
                                  <h4>Belum melakukan pembayaran</h4>
                                  
                              @endforelse
                             
                        
                            
                            </ul>
                          </div>
                          <div class="col-12 col-sm-12 col-md-7">
                            <div class="tab-content no-padding" id="myTab2Content">
                              @foreach ($pembayaran_all as $item)
                              <div class="tab-pane fade  " id="pembayaran{{$loop->iteration}}" role="tabpanel" aria-labelledby="pembayaran-tab{{$loop->iteration}}">
                                <div class="card">
                                  <div class="card-body">
                                    <div class="media">
                                      <img class="mr-3 mt-4" src="{{ asset('storage/' . $item->bukti_bayar) }}" width="110" height="110" alt="Generic placeholder image">
                                      <div class="media-body">
                                        <div class="row">
                                            <div class="col-6">

                                            </div>
                                            <div class="col-6">
                                              {{$item->created_at}}
                                            </div>
                                        </div>
                                        <div class="row">
                                          <div class="col-6">
                                            Tipe Pembayaran:
                                          </div>
                                          <div class="col-6">
                                            {{$item->tipePembayaran->nama_pembayaran}}
                                          </div>
                                      </div>
                                      <div class="row">
                                        <div class="col-6">
                                          Nominal:
                                        </div>
                                        <div class="col-6">
                                          {{ 'Rp ' . number_format($item->nominal, 2, ',', '.') }}
                                        </div>
                                    </div>
                                    <div class="row">
                                      <div class="col-6">
                                        Metode Bayar:
                                      </div>
                                      <div class="col-6">
                                        {{ $item->metode_bayar}}
                                      </div>
                                  </div>
                                  <div class="row">
                                    <div class="col-6">
                                      STATUS:
                                    </div>
                                    <div class="col-6">
                                      @if ($item->status == null)
                                      <span class="badge rounded  badge-warning"><b>Belum Terkonfirmasi</b></span>
                                      @elseif($item->status == 0)
                                      <span class="badge rounded  badge-danger"><b>Di Tolak</b></span>


                                        @else
                                      <span class="badge rounded  badge-success"><b>Di Terima</b></span>
                                      @endif
                                    </div>
                                    @if ($item->status == 0)
                                    <p>"Pembayaran di tolak karena validasi dari pihak panitia memungkin kan bukti pembayaran / info pembayaran palsu <b>Hubungi Pihak Sekolah untuk verifikasi lebih lanjut</b>"</p>
                                        
                                    @endif
                             
                                </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>

                                @endforeach
                             
                            </div>
                          </div>
                        </div>
                  </div>
                </div>
                <div class="tab-pane fade " id="detail_pembayaran2" role="tabpanel" aria-labelledby="detail_pembayaran-tab2">
                  <center>
                    <div class="col-12 col-md-6 col-lg-6">
                      <div class="card card-{{$nilai_kurang == 0 ? 'success' : 'warning'}}">
                        <div class="card-header">
                          <h4>{{$nilai_kurang == 0 ? 'Lunas' : 'Belum Lunas'}}</h4>
                        </div>
                        <div class="card-body">
                          <div class="row">
                            <div class="col-6">
                              Biaya Pembayaran :
                            </div>
                            <div class="col-6">
                              <code> {{ 'Rp ' . number_format($data_pembayaran->nominal_pembayaran, 2, ',', '.') }}</code>
                            </div>
                          </div>
                          <div class="row">
                            <div class="col-6">
                              Total sudah di bayar :
                            </div>
                            <div class="col-6">
                              <code> {{ 'Rp ' . number_format($total_pembayaran, 2, ',', '.') }}</code>
                            </div>
                          </div>
                          <div class="row">
                            <div class="col-6">
                             Jumlah  Kurang :
                            </div>
                            <div class="col-6">
                              <code> {{ 'Rp ' . number_format($nilai_kurang, 2, ',', '.') }}</code>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </center>
                </div>
                <div class="tab-pane fade " id="info2" role="tabpanel" aria-labelledby="info-tab2">
                  <center>
                    <div class="col-12 col-md-12 col-lg-12 ">
                      <div class="card card-success  ">
                        @if ($check_gugus != null)
                            <h5 class="mt-2 justify-self-start">
                              Anda Berada di Gugus : 
                              <a href="">
                              {{$check_gugus->gugus->nama_gugus}}
  
                                </a>
                            </h5>
                          @else 
                          <h4 class="mt-2 justify-self-start">-Pembayaran anda telah lunas, Selalu check Tab Informasi untuk mengetahui di gugus mana anda di tempatkan</h4>
  
  
                        @endif
                      </div>
                    </div>
                  </center>
                </div>
           
              </div>
            </div>
          </div>
        </div>
        {{-- {{dd($pembayaran_all->isEmpty())}} --}}
        @if ($total_pembayaran !== $data_pembayaran->nominal_pembayaran)
        @if ($pembayaran_all->isEmpty() || $pembayaran_all->first()->tipePembayaran->nama_pembayaran == 'Cicilan'  || $pembayaran_all->first()->tipePembayaran->nama_pembayaran == 'Sekali Bayar' )
          <h2 class="section-title">Pilih Metode Pembayaran</h2>
          <p class="section-lead">Cukup Input Nominal dan Kirim Bukti Pembayaran, lalu tunggu hingga pembayaran terkonfirmasi</p>
          
          <div class="row scrolling-wrapper justify-content-center">
              {{-- <div class="scrolling-wrapper "> --}}
                                      @php
                                      function rupiah($angka){
          
                                          $hasil_rupiah = "Rp " . number_format($angka,2,',','.');
                                          return $hasil_rupiah;
                                      
                                      }
          
                                      @endphp
                          @foreach ($pembayaran as $list)
                                      @if ($pembayaran_all->isEmpty() == true )
                                      <div class="col-md-4 pricing pricing-highlight ">
                                        <div class="pricing-title">
                                          {{$list->nama_pembayaran}}
                                        </div>
                                        <div class="pricing-padding">
                                          <div class="pricing-price">
                                              <h2 class="mt-5">{{rupiah($list->nominal_pembayaran)}}</h2>
                                              {{-- <span></span> --}}
                                            {{-- <div>per month</div> --}}
                                          </div>
                                        
                                        </div>
                                        <div class="pricing-cta">
                                          <a href="{{route('pembayaran.casis',$list->id)}}">Bayar <i class="fas fa-arrow-right"></i></a>
                                        </div>
                                      </div>   
                                      @else 
                                      @if ($list->nama_pembayaran == $pembayaran_all->first()->tipePembayaran->nama_pembayaran)
                                      <div class="col-md-4 pricing pricing-highlight ">
                                        <div class="pricing-title">
                                          {{$list->nama_pembayaran}}
                                        </div>
                                        <div class="pricing-padding">
                                          <div class="pricing-price">
                                              <h2 class="mt-5">{{rupiah($list->nominal_pembayaran)}}</h2>
                                              {{-- <span></span> --}}
                                            {{-- <div>per month</div> --}}
                                          </div>
                                        
                                        </div>
                                        <div class="pricing-cta">
                                          <a href="{{route('pembayaran.casis',$list->id)}}">Bayar <i class="fas fa-arrow-right"></i></a>
                                        </div>
                                      </div>    
                                      @endif
                                      @endif
                                  @endforeach
          
          
          </div> 
        
        @endif
            
        @endif
             
           
             
        

  
@endsection