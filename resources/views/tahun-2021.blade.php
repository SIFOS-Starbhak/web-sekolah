@extends('template.app')
@section('main')
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  
<div class="container mt-4 mb-4">
	<div class="row">
	        <div class="carousel slide article-slide" id="vpCarousel" data-interval="2000" data-ride="carousel">
      <div class="carousel-inner cont-slider">
    
        <div class="item active">
          <img src="https://rembormn.com/images/rembormn/slideshow/rem-cua-dep01.png" width="1070" height="450" alt="Chất liệu vải mềm vại, dễ vào nếp, độ cản nắng ở mức 75%">
		  	<div class="carousel-caption">
				<h2>RÈM THÔNG TẦNG SỬ DỤNG ĐỘNG CƠ</h2>
				<p>Chất liệu vải mềm vại, dễ vào nếp, độ cản nắng ở mức 75%.</p>
			</div>
        </div>
		
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
        <li class="active" data-slide-to="0" data-target="#vpCarousel">
          <img alt="RÈM THÔNG TẦNG SỬ DỤNG ĐỘNG CƠ" title="" src="https://rembormn.com/images/rembormn/slideshow/rem-dep-thumb01.png" width="76" height="40">
        </li>
      </ol>                 
    </div>
	</div>
</div>

@endsection

