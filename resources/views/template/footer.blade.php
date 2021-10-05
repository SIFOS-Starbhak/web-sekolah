    <footer class="counts section-bg" style="background-color: #095b90;">
        <div class="container text-white">
            <div class="row counters mt-4">
                <div class="col-md-2" style="font-family: poppins">
                    @foreach ($settings as $setting)
                        @if ($setting->display_name == 'Site Logo')

                            <img src="{{ asset('storage/' . $setting->value) }}" alt=""
                                style="width: 95px; height: 95px" />
                        @endif
                    @endforeach
                </div>
                <div class="col-md-4 mt-3">
                    <p style="font-size: 20px">
                        <b>
                            YAYASAN SETYA BHAKTI <br />
                            SMK TARUNA BHAKTI
                        </b>
                    </p>
                    <p style="font-size: 13px; font-weight: lighter">
                        Jalan Pekapuran Kel.Curug <br />
                        Kec.Cimanggis , Kota Depok <br />
                        Propinsi Jawa Barat <br />
                        <br />
                        Telpon : (021) 874 4810
                    </p>
                </div>
                <div class="col-md-6 mt-3">
                    <p style="font-size: 20px"><b> Admission Information</b></p>
                    <br />
                    <p style="font-size: 13px; font-weight: lighter">
                        Email : taruna@smktarunabhakti.net <br />
                        Format: name, address, phone number, <br />
                        majors, and description
                    </p>
                </div>
                <hr class="mt-4" style="height: 2.5px" />
                <section>
                    <div class="text-center" style="margin-bottom: -15%">
                        <p style="font-size: 13px; font-weight: lighter">
                            Copyright SMK Taruna Bhakti <br />
                            Design by Software Engineering SMK Taruna Bhakti
                        </p>
                    </div>
                </section>
            </div>
        </div>
    </footer>
