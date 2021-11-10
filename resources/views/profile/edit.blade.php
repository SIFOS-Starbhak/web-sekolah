        @extends('layouts.app')
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css" />
        @section('main')        
                
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
                              @if (Auth::user()->role->name == "perusahaan")
                                      @if (empty($profile->detailUser->bio))
                                      <h6 style="font-weight: 100" class="d-flex justify-content-center" >Tidak ada deskripsi perusahaan</h6>
                                    @else
                                    <h6 class="d-flex justify-content-center">
                                      {{$profile->detailUser->bio}}
                                    </h6> 
                                      @endif

                             @elseif(Auth::user()->role->name == "admin" && Auth::user()->spesifc_role == "admin")

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
                               
                              @elseif(Auth::user()->role->name == "admin" && Auth::user()->spesifc_role == "admin")


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
                          
                            @elseif(Auth::user()->role->name == "admin" && Auth::user()->spesifc_role == "admin")


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

                                      @elseif(Auth::user()->role->name == "admin" && Auth::user()->spesifc_role == "admin")



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
                                        @if (Auth::user()->role->name == "admin" && Auth::user()->spesifc_role == "admin")
                                            
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

                                      @elseif(Auth::user()->role->name == "admin" && Auth::user()->spesifc_role == "admin")

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
                                  
                                  @elseif(Auth::user()->role->name == "admin" && Auth::user()->spesifc_role == "admin")


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
                                <a href="{{redirect()->getUrlGenerator()->previous()}}" class="btn btn-warning">Back</a>
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
                @endsection
        {{-- @stack('name') --}}
        @section('script')
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