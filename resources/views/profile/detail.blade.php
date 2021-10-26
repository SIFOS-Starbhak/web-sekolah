@extends('layouts.app')
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css" />
@section('main')        


<div class="row">
    <div class="col-12 col-sm-12 col-lg-12">
      <div class="card author-box card-primary">
        <div class="card-body">
          <div class="author-box-left">
            @if (File::exists(public_path($profile->avatar)))
                <img alt="image" src="{{asset($profile->avatar) }}" class="rounded-circle author-box-picture">
                        @else 
                <img alt="image" src="{{ asset('img/avatar/avatar-1.png') }}" class="rounded-circle author-box-picture">
            @endif
            
            @if ($profile->detailUser == null || $profile->detailUser->cv == null )
            <div class="clearfix mt-2"><button class="btn btn-danger " disabled>Belum ada CV</button></div>
            
            @else
            <div class="clearfix mt-2"><a href="{{route('download.cv',$profile->id)}}" class="btn btn-danger ">download CV</a></div>


            @endif
            
          </div>
          <div class="author-box-details">
            {{-- <div class="profile-widget-header">
                <div class="profile-widget-items">
                  <div class="profile-widget-item">
                    <div class="profile-widget-item-label">Email</div>
                    <div class="profile-widget-item-value">{{$profile->email}}</div>
                  </div>
                  <div class="profile-widget-item">
                    <div class="profile-widget-item-label">Followers</div>
                    <div class="profile-widget-item-value">6,8K</div>
                  </div>
                  <div class="profile-widget-item">
                    <div class="profile-widget-item-label">Following</div>
                    <div class="profile-widget-item-value">2,1K</div>
                  </div>
                </div>
            </div> --}}
            <div class="author-box-name">
                <div class="card mb-2 " >
                    <div class="row" >
                        <div class="col-4"  >
                            <h6>Nama</h6>
                        </div>
                        <div class="col-4"  >
                            <h6>Nomor Telpon</h6>
                        </div>
                        <div class="col-4"  >
                            <h6>Email</h6>
                        </div>
    
                    </div>
                </div>
                <div class="row">
                    <div class="col-4">
                        <a>{{$profile->name}}</a>
                    </div>
                    <div class="col-4">
                        @if ($profile->detailUser == null || $profile->detailUser->no_telpon == null)
                             <a style="color: rgb(169, 168, 166)">Tidak ada No telpon</a>
                             @else
                            <a>{{$profile->detailUser->no_telpon}}</a>

                        @endif
                    </div>
                    <div class="col-4">
                        <a>{{$profile->email}}</a>
                    </div>

                </div>
            </div>
            <div class="author-box-job mt-2">Kelas : {{$profile->kelas->nama_kelas}}</div>
            <div class="author-box-description">
              {{-- <p>{{$profile->detailUser->bio}}</p> --}}

              @if (empty($profile->detailUser->bio))
              <h6 style="font-weight: 100" class="d-flex justify-content-center" >Tidak ada bio</h6>
            @else
            {{-- <label for="">Bio : </label> --}}
            <div class="card ">
                <h2 class="section-title">Bio</h2>
                    "{{$profile->detailUser->bio}}"
                </div>
            @endif

            </div>
            <div class="mb-2 mt-3"><div class=" font-weight-bold">Skill</div></div>

            @if (empty($yourSkill) || $profile->detailUser->skill == null )
            <h5>Belum ada keahlian</h5>
          @else
            @foreach ($yourSkill as $item)
            <a style="cursor: pointer;" class=" badge badge-primary">{{$item->nama_skill}}</a>

            @endforeach
      
          @endif
            {{-- <a href="#" class="btn btn-social-icon mr-1 btn-facebook">
              <i class="fab fa-facebook-f"></i>
            </a>
            <a href="#" class="btn btn-social-icon mr-1 btn-twitter">
              <i class="fab fa-twitter"></i>
            </a>
            <a href="#" class="btn btn-social-icon mr-1 btn-github">
              <i class="fab fa-github"></i>
            </a>
            <a href="#" class="btn btn-social-icon mr-1 btn-instagram">
              <i class="fab fa-instagram"></i> --}}
            </a>
            <div class="w-100 d-sm-none"></div>
            <div class="float-right mt-sm-0 mt-3">
              <a href="{{redirect()->getUrlGenerator()->previous()}}" class="btn btn-warning"><i class="fas fa-chevron-left"></i> &nbsp; Back </a>
            </div>
          </div>
        </div>
      </div>
  
    </div>
 
  </div>

@endsection
