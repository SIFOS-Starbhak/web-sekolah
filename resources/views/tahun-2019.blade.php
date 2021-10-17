@extends('template.app')
@section('main')
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  
<div class="container mt-4 mb-4 p-3">
	<div class="row">
    
    <div class="carousel slide article-slide" id="vpCarousel" data-interval="3000" data-ride="carousel">
      <div class="carousel-inner cont-slider">
        @foreach($card2019 as $key => $card)
          <div class="item {{ $key == 0 ? 'active' : '' }}">
            <img src="{{ asset('storage/' . $card->image) }}" width="1200" height="450" alt="Gallery 2021">
          </div>
        @endforeach
          
          <!-- Controls -->
          <a class="left carousel-control" href="#vpCarousel" role="button" data-slide="prev">
            <i class="fa fa-chevron-left"></i><span class="sr-only">Previous</span>
          </a>
          <a class="right carousel-control" href="#vpCarousel" role="button" data-slide="next">
            <i class="fa fa-chevron-right"></i><span class="sr-only">Next</span>
          </a>
          
        </div>
        
        <!-- Indicators -->
        <ol class="carousel-indicators visible-lg visible-md">
          @foreach($card2019 as $key => $card)
          <li class="{{ $key == 0 ? 'active' : '' }}" data-slide-to="{{ $key }}" data-target="#vpCarousel">
            <img alt="Gallery 2021" title="" src="{{ asset('storage/' . $card->image) }}" width="76" height="40">
          </li>
          @endforeach
          
        </ol>                 
      </div>
	</div>
</div>

@endsection

