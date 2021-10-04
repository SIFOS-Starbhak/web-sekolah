@include('template.navbar')
@include('template.background')
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<div class="container mt-5 mb-5">
<a href="/kurikulum" class="col-12 mb-2" style="font-size: 17px;"><i class="fas fa-arrow-left"></i> Kembali</a>
<section class="our-webcoderskull padding-lg">
  <div class="container">
    <div class="row heading heading-icon">
      <h2 class="text-primary">{{ $kategori->nama_kategori }}</h2>
    </div>
    <ul class="row">
      @foreach ($foto as $ft)
      <li class="col-12 col-md-6 col-lg-3">
          <div class="cnt-block equal-hight text-center" style="height: 349px;">
            <img src="{{ asset('storage/'. $ft->foto) }}" class="img-responsive" alt="" style="width:200px;height:200px;">
            <h3 style="margin-top:10%;"><a href="http://www.webcoderskull.com/">{{ $ft->nama_guru }}</a></h3>
          </div>
        </li>
        @endforeach
    </ul>
  </div>
</section>
    
</div>
@include('template.footer')