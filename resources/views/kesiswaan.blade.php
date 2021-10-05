@include('template.navbar')
@include('template.background')

<div class="container mt-5 mb-5">
<nav>
  <div class="nav nav-tabs" id="nav-tab" role="tablist">
    <button class="nav-link active fw-bold" id="nav-home-tab" data-bs-toggle="tab" data-bs-target="#osis" type="button" role="tab" aria-controls="nav-home" aria-selected="true">Kegiatan OSIS</button>

  </div>
</nav>
<div class="tab-content" id="nav-tabContent">
  <div class="tab-pane fade show active" id="osis" role="tabpanel" aria-labelledby="nav-home-tab">
    <div class="container" data-aos="fade-up">
        @foreach ($kegiatan_osis as $ko)
        {!! $ko->body !!}
        @endforeach

    </div>
  </div>
</div>
</div>
</div>
<br>

@include('template.footer')

