@extends('layouts.app')
@section('main')

<section class="content">
    <div class="container-fluid">
      <div class="container">
              <div class="card ">
                    <div class="card-body  ">
                       <form action="{{route('panitia.update.penempatanKelasGugus')}}" method="POST">
                           @method('PUT')
                           @csrf
                           <div class="row">
                               <div class="col-6">
                                <label>Kelas</label>
                                <div class="form-group ">
                           
                                    <select class="form-control  @error('kelas') is-invalid @enderror"  name="kelas" >
                                       <option value="" class="text-bold" >--Pilih Kelas--</option>

                                     @foreach ($kelas as $item ) 
                                       <option value="{{$item->id}}" class="text-bold" >{{$item->nama_kelas}}</option>
                                     @endforeach

                                    {{-- @endforeach --}}
                                     
                                    
                                    </select>
                                    @error('kelas')
                                    <div class="invalid-feedback">
                                      {{$message}}
                                    </div>
                                    @enderror
                                </div>
                               </div>
                               <div class="col-6">
                                   <label>Calon Siswa</label>
                                  <div class="form-group ">
                             
                                      <select class="form-control select2 @error('user_casis') is-invalid @enderror"  name="user_casis[]" multiple="">
                                       @foreach ($user as $item ) 
                                         <option value="{{$item->id}}" >{{$item->name}}</option>
                                       @endforeach

                                      {{-- @endforeach --}}
                                       
                                      
                                      </select>
                                      @error('user_casis')
                                      <div class="invalid-feedback">
                                        {{$message}}
                                      </div>
                                      @enderror
                                  </div>
                               
                               </div>
                           </div>
                           <a href="{{route('dashboard.panitia')}}" class="btn btn-sm btn-dark">Kembali</a>
                           <button class="btn btn-sm btn-success text-dark">Submit</button>
                           
                         
                       </form>
                    </div>
              </div>
      </div>
    </div>
</section>
@endsection