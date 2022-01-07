@extends('dashboard.dashboard')
@section('content_casis')
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
                <div class="col-12 col-md-4 col-lg-4">
                    <div class="pricing pricing-highlight">
                      <div class="pricing-title">
                        {{$list->nama_pembayaran}}
                      </div>
                      <div class="pricing-padding">
                        <div class="pricing-price mt-5">
                          <h4>{{rupiah($list->nominal_pembayaran)}}</h4>
                          {{-- <div>per month</div> --}}
                        </div>
                        {{-- <div class="pricing-details">
                          <div class="pricing-item">
                            <div class="pricing-item-icon"><i class="fas fa-check"></i></div>
                            <div class="pricing-item-label">5 user agent</div>
                          </div>
                          <div class="pricing-item">
                            <div class="pricing-item-icon"><i class="fas fa-check"></i></div>
                            <div class="pricing-item-label">Core features</div>
                          </div>
                          <div class="pricing-item">
                            <div class="pricing-item-icon"><i class="fas fa-check"></i></div>
                            <div class="pricing-item-label">10GB storage</div>
                          </div>
                          <div class="pricing-item">
                            <div class="pricing-item-icon"><i class="fas fa-check"></i></div>
                            <div class="pricing-item-label">10 Custom domain</div>
                          </div>
                          <div class="pricing-item">
                            <div class="pricing-item-icon"><i class="fas fa-check"></i></div>
                            <div class="pricing-item-label">24/7 Support</div>
                          </div>
                        </div> --}}
                      </div>
                      <div class="pricing-cta">
                        <a href="{{route('pembayaran.casis',$list->id)}}">Bayar <i class="fas fa-arrow-right"></i></a>
                      </div>
                    </div>
                  </div>
                
                @endforeach
    {{-- </div>   --}}
 
 
</div>   
@endsection