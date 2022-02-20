@extends('dashboard.dashboard')
@section('content_casis')
<h2 class="section-title">Form  Pembayaran</h2>
<p class="section-lead">Cukup Input Nominal dan Kirim Bukti Pembayaran, lalu tunggu hingga pembayaran terkonfirmasi</p>

<div class="row  justify-content-center">
    <div class="card-body " style="background-color: rgb(255, 255, 255); border-radius: 10px;">
        <form action="{{route('pembayaran.casisStore')}}" method="POST" enctype="multipart/form-data">
          @csrf
          @method('POST') 
            <div class="container justify-content-center">
              <input type="hidden" id="pembayaran" name="tipe_cicilan" value="{{$pembayaran->id}}">
                <div class="form-group col-12" >
                    @php
                        function rupiah($angka){

                            $hasil_rupiah = "Rp " . number_format($angka,2,',','.');
                            return $hasil_rupiah;
                         
                        }
                        
                        @endphp
                        {{-- {{dd($pembayaran->nama_pembayaran)}} --}}
                                @if ($pembayaran->nama_pembayaran == "Sekali Bayar")
                                <label for="" style="font-size: 20px;">1 .{{$pembayaran->nama_pembayaran}}</label>
                                <div class="row gutters-sm ml-5">
                                    <div class="col-6 col-sm-3">
                                      <label class="imagecheck mb-4">
                                        <input name="pembayaran_nominal" type="radio" value="{{$pembayaran->nominal_pembayaran}}" class="imagecheck-input" @if(old('pembayaran_nominal')  ==  "$pembayaran->nominal_pembayaran" ? "selected" : "" ) checked  @endif  />
                                        <figure class="imagecheck-figure" style="width: 200px;">
                                          <h6 class="ml-4 mt-2"  style="font-size: 20px;">{{rupiah($pembayaran->nominal_pembayaran)}}</h6>
                                        </figure>
                                      </label>
                                    </div>
                                  </div>
                                @else
                                <label for="" style="font-size: 20px;">1 .{{$pembayaran->nama_pembayaran}}</label>

                                <div class="row gutters-sm ml-5">
                                    <div class="col-6 col-sm-3">
                                      <label class="imagecheck mb-4">
                                        <input name="pembayaran_nominal" type="radio" value="100000" class="imagecheck-input"  @if(old('pembayaran_nominal')  ==  "100000" ? "selected" : "" ) checked  @endif />
                                        <figure class="imagecheck-figure" style="width: 200px;">
                                          <h6 class="ml-4 mt-2"  style="font-size: 20px;">{{rupiah(100000)}}</h6>
                                        </figure>
                                      </label>
                                    </div>
                                    <div class="col-6 col-sm-3">
                                      <label class="imagecheck mb-4">
                                        <input name="pembayaran_nominal" type="radio" value="200000" class="imagecheck-input"  @if(old('pembayaran_nominal')  ==  "200000" ? "selected" : "" ) checked  @endif />
                                        <figure class="imagecheck-figure" style="width: 200px;">
                                          <h6 class="ml-4 mt-2"  style="font-size: 20px;">{{rupiah(200000)}}</h6>
                                        </figure>
                                      </label>
                                    </div>
                                    <div class="col-6 col-sm-3">
                                      <label class="imagecheck mb-4">
                                        <input name="pembayaran_nominal" type="radio" value="300000" class="imagecheck-input"  @if(old('pembayaran_nominal')  ==  "300000" ? "selected" : "" ) checked  @endif />
                                        <figure class="imagecheck-figure" style="width: 200px;">
                                          <h6 class="ml-4 mt-2"  style="font-size: 20px;">{{rupiah(300000)}}</h6>
                                        </figure>
                                      </label>
                                    </div>
                                    <div class="col-6 col-sm-3">
                                      <label class="imagecheck mb-4">
                                        <input name="pembayaran_nominal" type="radio" value="400000" class="imagecheck-input"  @if(old('pembayaran_nominal')  ==  "400000" ? "selected" : "" ) checked  @endif />
                                        <figure class="imagecheck-figure" style="width: 200px;">
                                          <h6 class="ml-4 mt-2"  style="font-size: 20px;">{{rupiah(400000)}}</h6>
                                        </figure>
                                      </label>
                                    </div>
                                    <div class="col-6 col-sm-3">
                                      <label class="imagecheck mb-4">
                                        <input name="pembayaran_nominal" type="radio" value="500000" class="imagecheck-input"  @if(old('pembayaran_nominal')  ==  "500000" ? "selected" : "" ) checked  @endif />
                                        <figure class="imagecheck-figure" style="width: 200px;">
                                          <h6 class="ml-4 mt-2"  style="font-size: 20px;">{{rupiah(500000)}}</h6>
                                        </figure>
                                      </label>
                                    </div>
                                    <div class="col-6 col-sm-3">
                                      <label class="imagecheck mb-4">
                                        <input name="pembayaran_nominal" type="radio" value="600000" class="imagecheck-input"  @if(old('pembayaran_nominal')  ==  "600000" ? "selected" : "" ) checked  @endif />
                                        <figure class="imagecheck-figure" style="width: 200px;">
                                          <h6 class="ml-4 mt-2"  style="font-size: 20px;">{{rupiah(600000)}}</h6>
                                        </figure>
                                      </label>
                                    </div>
                                    <div class="col-6 col-sm-3">
                                      <label class="imagecheck mb-4">
                                        <input name="pembayaran_nominal" type="radio" value="700000" class="imagecheck-input"  @if(old('pembayaran_nominal')  ==  "700000" ? "selected" : "" ) checked  @endif />
                                        <figure class="imagecheck-figure" style="width: 200px;">
                                          <h6 class="ml-4 mt-2"  style="font-size: 20px;">{{rupiah(700000)}}</h6>
                                        </figure>
                                      </label>
                                    </div>
                                    <div class="col-6 col-sm-3">
                                      <label class="imagecheck mb-4">
                                        <input name="pembayaran_nominal" type="radio" value="800000" class="imagecheck-input"  @if(old('pembayaran_nominal')  ==  "800000" ? "selected" : "" ) checked  @endif />
                                        <figure class="imagecheck-figure" style="width: 200px;">
                                          <h6 class="ml-4 mt-2"  style="font-size: 20px;">{{rupiah(800000)}}</h6>
                                        </figure>
                                      </label>
                                    </div>
                                    <div class="col-6 col-sm-3">
                                      <label class="imagecheck mb-4">
                                        <input name="pembayaran_nominal" type="radio" value="900000" class="imagecheck-input"  @if(old('pembayaran_nominal')  ==  "900000" ? "selected" : "" ) checked  @endif />
                                        <figure class="imagecheck-figure" style="width: 200px;">
                                          <h6 class="ml-4 mt-2"  style="font-size: 20px;">{{rupiah(900000)}}</h6>
                                        </figure>
                                      </label>
                                    </div>
                                    <div class="col-6 col-sm-3">
                                      <label class="imagecheck mb-4">
                                        <input name="pembayaran_nominal" type="radio" value="100000" class="imagecheck-input"  @if(old('pembayaran_nominal')  ==  "100000" ? "selected" : "" ) checked  @endif />
                                        <figure class="imagecheck-figure" style="width: 200px;">
                                          <h6 class="ml-4 mt-2"  style="font-size: 20px;">{{rupiah(1000000)}}</h6>
                                        </figure>
                                      </label>
                                    </div>
                                  </div>
                                  @error('pembayaran_nominal')
                                  <div class="text-danger">{{ $message }}</div>
                                 @enderror
                                @endif
                                
                              

                                <label for="" style="font-size: 20px;">2 .Metode Pembayaran</label>
                                <div class="selectgroup w-100  mb-4">
                                    <label class="selectgroup-item">
                                        <input type="radio" name="metode_bayar" value="BANK" class="selectgroup-input" @if(old('metode_bayar') == "BANK" ?  "selected" : "")  checked @endif>
                                        <span class="selectgroup-button" style="font-size: 20px;">BANK</span>
                                    </label>
                                    <label class="selectgroup-item">
                                        <input type="radio" name="metode_bayar" value="CASH" class="selectgroup-input" @if(old('metode_bayar') == "CASH" ?  "selected" : "") checked @endif>
                                        <span class="selectgroup-button" style="font-size: 20px;">CASH</span>
                                    </label>
                                </div>
                                @error('metode_bayar')
                                <div class="text-danger">{{ $message }}</div>
                               @enderror
                            
                                <label for="" style="font-size: 20px;">3 .Bukti Pembayaran</label>
                                <div >
                                        <input name="bukti_pembayaran" type="file" class="form-control" onchange="readURL(this);">
                                        @error('bukti_pembayaran')
                                         <div class="text-danger">{{ $message }}</div>
                                        @enderror
            
                                </div>
                                
                                <div class="mt-3">
                                    <center>
                                        <img id="blah" class="d-none"  src="" alt="your image" style="border-radius: 15px; width: 450px; height: 250px;" />
                                    </center>
                                </div>
                            </div>
         
            </div>
            <div class="row">
                <div class="container">
                    <div class="justify-content-end">
                        <a href="{{route('dashboard.casis')}}" class="btn btn-primary">Kembali</a>
                        <button  class="btn btn-success">Submit</button>
                    </div>

                </div>
            </div>
        </form>
    </div>
 
 
</div>   
@endsection

<script>
       function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#blah').removeClass('d-none').attr('src', e.target.result);
            }

            reader.readAsDataURL(input.files[0]);
        }
    }
</script>