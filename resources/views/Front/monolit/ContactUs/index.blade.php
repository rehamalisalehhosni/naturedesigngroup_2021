@extends('layouts.defaultPage')
@section('content')
<?php // print_r(Session::get('locale'));die();?>
<?php $locale = App::getLocale();?>

<!-- Page title -->
@if(isset($banner[0]))    
<div class="dynamic-title">{{$banner[0]->title}} </div>
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

						<h2>  <strong>  {{$banner[0]->title}} </strong></h2>
						@endif

					</div>
					<div class="col-md-6">
						<ul class="creat-list">
							<li><a href="{{route('index',App::getLocale())}}">@lang('front.home')</a></li>
							<li><a href="{{ route('contactUs.index',App::getLocale()) }}">@lang('front.contact')</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>
</div>
<!-- content end -->
<!-- content  -->
<div class="content">
	<section>
		<div class="container">
			<div class="row">
				<div class="col-md-8">
					<h2 class="section-title"> @lang('front.Where_to')<strong> @lang('front.Find_us') </strong></h2>
					<p>	{!! $setting->description !!} </p>
				</div>
			</div>
			<div class="map-box">
				<div  id="map-canvas"></div>
			</div>
			<div class="row">
				<div class="col-md-8">
					<div class="contact-details">
						<div class="row">
							<div class="col-md-4">
								<h3 class="bold-title">@lang('front.Contact_details') : </h3>
							</div>
							<div class="col-md-4">
								<h4>  @lang('front.Office')</h4>
								<ul>
									<li><a href="#">{{$setting->address}}</a></li>
									<li><a href="tel:{{$setting->tel1}}">{{$setting->tel}}</a></li>
									<li><a href="tel:{{$setting->tel2}}">{{$setting->tel2}}</a></li>
								</ul>
							</div>
							<div class="col-md-4">
								<h4> @lang('front.Find_Us_On') : </h4>
								<ul>
									@foreach ($social as $item)
									<li><a href="{{$item->link}}" target="_blank" >{{$item->title}}</a></li>
									@endforeach
								</ul>
							</div>
						</div>
					</div>
					<!-- contact form -->
					<div class="contact-form-holder">
						<div id="contact-form">
							<div id="message"></div>

							@if ($message = Session::get('success'))
							<div class="alert alert-success mt-5">
								<p>   @lang('front.succesMsg') </ p>
								</div>
								@else
								{!! Form::open(array('route' => ['contactUs.store',App::getLocale()],'method'=>'POST','novalidate' => 'novalidate','files' => true)) !!}

								<div class="row mb-2">
									<div class="col-md-4 form-group">
										{!! Form::text('name', null, array('placeholder' => trans('front.name') ,'class' => '',"onClick"=>"this.select()" )) !!}
										<div class="form-control-feedback {{ $errors->first('name') ?'':'d-none' }}"> {{ $errors->first('name') }}  </div>
									</div>
									<div class="col-md-4 form-group">
										{!! Form::text('email', null, array('placeholder' => trans('front.email') ,'class' => '',"onClick"=>"this.select()" )) !!}
										<div class="form-control-feedback {{ $errors->first('email') ?'':'d-none' }}"> {{ $errors->first('email') }}  </div>
									</div>
									<div class="col-md-4 form-group">
										{!! Form::text('phone', null, array('placeholder' =>  trans('front.phone'),'class' => '',"onClick"=>"this.select()" )) !!}
										<div class="form-control-feedback {{ $errors->first('phone') ?'':'d-none' }}"> {{ $errors->first('phone') }}  </div>
									</div>
								</div>
								<div class="row mb-2">
									<div class="form-group col-12">
										{!! Form::textarea('message',null,['class' => 'form-control','placeholder'=> trans('front.message'),"rows"=>'4']) !!}
										<div class="form-control-feedback {{ $errors->first('message') ?'':'d-none' }}"> {{ $errors->first('message') }}  </div>
									</div>
								</div>
								<div class="text-center row">
									<button role="button" type="submit" class="btn m-auto btn-primary min-wdth ">@lang('front.send') </button>
								</div>
								{!! Form::close() !!}
								@endif

							</div>
						</div>
						<!-- contact form  end-->
					</div>
				</div>
			</div>
		</section>
	</div>

	@endsection
