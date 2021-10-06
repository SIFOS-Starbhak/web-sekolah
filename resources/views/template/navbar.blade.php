    <header id="header" class="{{ request()->is('artikel') ? '' : 'fixed-top' }}">
        <div class="container d-flex align-items-center">
            <!-- <img src="assets/img/logotb.png" alt="" style="height: 70px; width: 70px" /> -->
            @foreach ($settings as $setting)
                @if ($setting->display_name == 'Site Logo')

                    <img src="{{ asset('storage/' . $setting->value) }}" alt="" style="height: 70px; width: 70px" />
                @endif
            @endforeach
            <!-- Uncomment below if you prefer to use an image logo -->
            <!-- <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

            <nav id="navbar" class="navbar order-last order-lg-0" style="margin-left: auto">
                <ul>
                    <li><a href="/" class="{{ request()->is('/*') ? 'active' : '' }}">Home</a></li>
                    <li><a href="/profile" class="{{ request()->is('profile*') ? 'active' : '' }}">Profile</a></li>
                    <li><a href="/kurikulum" class="{{ request()->is('kurikulum*') ? 'active' : '' }}">Kurikulum</a>
                    </li>
                    <li><a href="/hubin" class="{{ request()->is('hubin*') ? 'active' : '' }}">Hubungan Industri</a>
                    </li>
                    <li><a href="/sarpras" class="{{ request()->is('sarpras*') ? 'active' : '' }}">Sarana Pra
                            Sarana</a></li>
                    <li><a href="/kesiswaan" class="{{ request()->is('kesiswaan*') ? 'active' : '' }}">Kesiswaan</a>
                    </li>
                    <li><a href="/kontakkami" class="{{ request()->is('kontakkami*') ? 'active' : '' }}">Kontak
                            Kami</a></li>
                </ul>
                <i class="bi bi-list mobile-nav-toggle"></i>
            </nav>
            <!-- .navbar -->
        </div>
    </header>
