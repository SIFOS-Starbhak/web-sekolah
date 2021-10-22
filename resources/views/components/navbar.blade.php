

<div class="navbar-bg"></div>
<nav class="navbar navbar-expand-lg main-navbar">
    <ul class="navbar-nav mr-auto">
        <img alt="icon" src="{{ asset('img/logo.svg') }}" style="width: 76px">
    </ul>
    <ul class="navbar-nav navbar-right">
        </li>
        <li class="dropdown"><a href="#" data-toggle="dropdown"
                class="nav-link dropdown-toggle nav-link-lg nav-link-user">
                    @if (File::exists(public_path(Auth::user()->avatar)))
                <img alt="image" src='{{ asset(Auth::user()->avatar)}}' class="rounded-circle mr-1">
                        @else 
                <img alt="image" src='{{asset('img/avatar/avatar-1.png')}}' class="rounded-circle mr-1">
                        
                        
                    @endif
                <div class="d-sm-none d-lg-inline-block">{{ JWTAuth::user()->name }}</div>
            </a>
            <div class="dropdown-menu dropdown-menu-right">
                <div class="dropdown-title">Logged in 5 min ago</div>
                 @if (Auth::guard('api')->user()->role->name === "guru")
                 <a href="{{route('edit.profileGuru', JWTAuth::user()->id)}}" class="dropdown-item has-icon">
                    <i class="far fa-user"></i> Profile
                </a>
                 @elseif(Auth::guard('api')->user()->role->name === "manager")
                 <a href="{{route('edit.profileManager', JWTAuth::user()->id)}}" class="dropdown-item has-icon">
                     <i class="far fa-user"></i> Profile
                 </a>
                 @else 
                 <a href="{{route('edit.profileSiswa', JWTAuth::user()->id)}}" class="dropdown-item has-icon">
                     <i class="far fa-user"></i> Profile
                 </a>
                 @endif
                {{-- <a href="features-activities.html" class="dropdown-item has-icon">
                    <i class="fas fa-bolt"></i> Activities
                </a>
                <a href="features-settings.html" class="dropdown-item has-icon">
                    <i class="fas fa-cog"></i> Settings
                </a>  --}}
                <div class="dropdown-divider"></div>
                <form method="POST" action="{{ route('logout') }}">
                    @csrf

                </form>
                <a class="dropdown-item" id="frmlogout">Logout</a>
            </div>
        </li>
    </ul>
</nav>
<nav class="navbar navbar-secondary navbar-expand-lg">
    <div class="container">
        <div class="text-dark my-auto">
            <h3 class="my-0">
                <span class="text-primary">{{ $greetings }}</span>
            </h3>
        </div>
    </div>
</nav>