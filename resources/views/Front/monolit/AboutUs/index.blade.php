@extends('layouts.defaultPage')
@section('content')
<?php $locale = App::getLocale();?>

<!-- Page title -->
        @if(isset($banner[0]))    

<div class="dynamic-title"> {{$banner[0]->title}} </div>
        @endif   

<!-- Page title  end-->
<!-- content  -->
<div class="content">
	<section class="parallax-section">
		<div class="parallax-inner">
        @if(isset($banner[0]))    
			<div class="bg" data-bg="{{url('/Uploads/pages/'.$locale.'/'. $banner[0]->image)}}" data-top-bottom="transform: translateY(300px);" data-bottom-top="transform: translateY(-300px);"></div>
        @endif   

			<div class="overlay"></div>
		</div>
		<div class="container">
			<div class="page-title">
				<div class="row">
					<div class="col-md-6">
		            @if(isset($banner[0]))    
						<h2> <strong> {{$banner[0]->title}} </strong></h2>
			        @endif   
					</div>
					<div class="col-md-6">
						<ul class="creat-list">
							<li><a href="{{route('index',App::getLocale())}}">@lang('front.home')</a></li>
							<li><a href="{{route('aboutUs.index',App::getLocale())}} ">@lang('front.aboutUs')</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>
</div>
<!-- content end -->
<!-- content  -->
@foreach($aboutUs as $key=>$about)
<div class="content">
    
	<section id="sec{{$key+1}}">
		<div class="sect-subtitle right-align-dec" data-top-bottom="transform: translateY(200px);" data-bottom-top="transform: translateY(-200px);"><span>0{{$key+1}}</span></div>
		<div class="container">
			<div class="row">
				<div class="col-md-8">
				    <h2 class="section-title">  <strong> {{$about->title}}</strong></h2>
					{!! $about->description !!}
				</div>
			   <div class="col-md-4">
				<div class="parallax-box">
				<img src="{{url('/Uploads/aboutus/image/'.$locale.'/'. $about->image)}}" class="respimg" alt="">
			</div>
		</div> 
	</div>
</div>
</section>

</div>
@endforeach
<!-- content end -->
<!-- content  -->

@endsection
