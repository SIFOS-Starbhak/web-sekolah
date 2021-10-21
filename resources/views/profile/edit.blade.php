@extends('layouts.app')
@section('main')        
        
        <section class="section">
          <div class="section-header">
            <h1>Profile</h1>
            <div class="section-header-breadcrumb">
              <div class="breadcrumb-item active"><a href="#">Dashboard</a></div>
              <div class="breadcrumb-item">Profile</div>
            </div>
          </div>
          {{-- {{
          dd($profile)

          }} --}}
          <div class="section-body">
            <h2 class="section-title">Hi, {{Str::words($profile->name,1)}}!</h2>
            <p class="section-lead">
              Ubah informasi tentang diri kamu di halaman ini .
            </p>

            <div class="row mt-sm-4">
  
              <div class="col-12 col-md-12 col-lg-12">
                <center>

                  <div class="col-12 col-md-12 col-lg-5">
                    <div class="card profile-widget">
                      <div class="profile-widget-header">
                        <img alt="image" src="{{ asset('img/avatar/avatar-1.png') }}" id="outputProfile" class="rounded-circle profile-widget w-50 h-25">
                        
                      </div>
                      <div class="profile-widget-description">
                        <div class="profile-widget-name">{{$profile->name}} <div class="text-muted d-inline font-weight-normal"><div class="slash"></div>{{$profile->kelas->nama_kelas ?? Auth::user()->role->display_name}}</div></div>
                       
                      </div>
                      
                    </div>
                  </div>
                </center>
                <div class="card">
                  <form method="post" action="{{ route('update.profile', $profile->id) }}" class="needs-validation" enctype="multipart/form-data">
                    @method('put')
                    @csrf
                    <div class="card-header">
                      <h4>Edit Profile</h4>
                    </div>
                    <div class="card-body">
                        <div class="row">
                          <div class="form-group col-md-6 col-12">
                            <label> Name</label>
                            <input type="text" class="form-control @error('name') is-invalid @enderror" value="{{old('name',$profile->name)}}" name="name">
                            @error('name')
                            <div class="invalid-feedback">
                              {{$message}}
                            </div>
                            @enderror
                           
                          </div>
                          <div class="form-group col-md-6 col-12">
                            <label>Email</label>
                            <input type="email" class="form-control @error('email') is-invalid @enderror" value="{{old('email',$profile->email)}}" name="email">
                            @error('email')
                            <div class="invalid-feedback">
                              {{$message}}
                            </div>
                            @enderror
                          </div>
                        
                        </div>
                        <div class="row">
                          <div class="form-group col-md-6 col-12">
                            <label>Password</label>
                            <input type="tel" name="password" class="form-control @error('password') is-invalid @enderror" value="{{old('password')}}" >
                            @error('password')
                            <div class="invalid-feedback">
                              {{$message}}
                            </div>
                            @enderror
                          </div>
                          @if (Auth::user()->role->name === 'siswa')
                          <div class="form-group col-md-6 col-12">
                            <label>Kelas {{Auth::user()->role->name}}</label>
                             <select name="kelas_id" id="" class="form-control @error('kelas_id') is-invalid @enderror">
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
                          <div class="form-group col-md-6 col-12">
                            <label>File Photo</label>
                            <input name="profileImg"  onchange="loadFileEdit(event)" type="file" class="form-control"  accept="image/png, image/jpeg, image/jpg" >
                          </div>
                        </div>
                        <div class="row">
                         
                         
                          {{-- <div class="form-group col-12">
                            <label>Bio</label>
                            <textarea class="form-control summernote-simple">Ujang maman is a superhero name in <b>Indonesia</b>, especially in my family. He is not a fictional character but an original hero in my family, a hero for his children and for his wife. So, I use the name as a user in this template. Not a tribute, I'm just bored with <b>'John Doe'</b>.</textarea>
                          </div> --}}
                        </div>
                        
                    </div>
                    <div class="card-footer text-right">
                      <a href="{{redirect()->getUrlGenerator()->previous()}}" class="btn btn-warning">Back</a>
                      <button  type="submit" class="btn btn-primary">Save Changes</button>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </section>

        @endsection