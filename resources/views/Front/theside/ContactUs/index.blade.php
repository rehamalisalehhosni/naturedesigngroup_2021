@extends('layouts.theside')
@section('content')
<?php // print_r(Session::get('locale'));die();?>
<?php $locale = App::getLocale();?>
<div class="content">
	<!--fixed-column-wrap-->
	<div class="fixed-column-wrap">
		<div class="pr-bg"></div>
		<div class="fixed-column-wrap-content map-mobile">
			<div class="scroll-nav-wrap color-bg">
				<div class="carnival">@lang('front.Scroll_down')</div>
				<div class="snw-dec">
					<div class="mousey">
						<div class="scroller"></div>
					</div>
				</div>
			</div>
			<div class="progress-bar-wrap bot-element">
				<div class="progress-bar"></div>
			</div>
			<div class="map-container mc_big">

				<div id="map-single" class="map"  class="map" data-latlog="[{{$setting->lat}} , {{$setting->long}}]" data-popuptext="{{$setting->company_name}}"></div>
			</div>
		</div>
		<!--fixed-column-wrap-content end-->
	</div>
	<!--fixed-column-wrap end-->
	<!--column-wrap-->
	<div class="column-wrap">
		<!--column-wrap-container -->
		<div class="column-wrap-container fl-wrap">
			<div class="col-wc_dec">
				<div class="pr-bg pr-bg-white"></div>
			</div>
			<div class="col-wc_dec col-wc_dec2">
				<div class="pr-bg pr-bg-white"></div>
			</div>
			<!--section-->
			<section id="sec1" class="small-padding">
				<div class="container">
					<div class="split-sceen-content_title fl-wrap">
						<div class="pr-bg pr-bg-white"></div>
						<h3> @lang('front.Contact_details') : </h3>
						{!! $banner[0]->description !!} 
					</div>
					<div class="column-wrap-content fl-wrap">
						<div class="column-wrap-media fl-wrap">
							<div class="pr-bg pr-bg-white"></div>
							@if(isset($banner[0]))

							<img src="{{url('/Uploads/pages/'.$locale.'/'. $banner[0]->image)}}"  class="respimg" alt="">
							@endif

							<div class="cont-det-wrap dark-bg">
								<div class="pr-bg pr-bg-white"></div>
								<ul>
									<li><strong>01.</strong><span> @lang('front.Write'): </span> <a href="mailto:{{$setting->email}}">{{$setting->email}}</a></li>
									<li><strong>02.</strong><span> @lang('front.Call')  :</span> <a href="tel:{{$setting->tel}}">{{$setting->tel}}</a></li>
									<li><strong>03.</strong><span>  @lang('front.Visit') :</span> <a href="#">{{$setting->address}}</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="section-number right_sn"><span>0</span>1.</div>
				</div>
			</section>
			<!--section end-->
			<div class="section-separator"></div>
			<!--section-->
			<section id="sec2" class="small-padding">
				<div class="container">
					<div class="split-sceen-content_title fl-wrap">
						<div class="pr-bg pr-bg-white"></div>
						<h3>@lang('front.Get_In_Touch')</h3>
						@if(isset($banner[0]))
						<h2>  <strong>  {!! $setting->description !!} </strong></h2>
						@endif
					</div>
					<div id="contact-form">
						<div class="pr-bg pr-bg-white"></div>


						@if ($message = Session::get('success'))
						<div if="message" class="alert alert-success mt-5">
							<p>   @lang('front.succesMsg') </ p>
							</div>
							@else
							{!! Form::open(array('route' => ['contactUs.store',App::getLocale()],'method'=>'POST','class'=>'custom-form','novalidate' => 'novalidate','files' => true)) !!}
							<fieldset>
								<div class="row">
									<div class="col-md-6">
										{!! Form::text('name', null, array('placeholder' => trans('front.name') ,'class' => '',"onClick"=>"this.select()" )) !!}
										<div class="form-control-feedback {{ $errors->first('name') ?'':'d-none' }}"> {{ $errors->first('name') }}  </div>
									</div>
									<div class="col-md-6">
										{!! Form::text('email', null, array('placeholder' => trans('front.email') ,'class' => '',"onClick"=>"this.select()" )) !!}
										<div class="form-control-feedback {{ $errors->first('email') ?'':'d-none' }}"> {{ $errors->first('email') }}  </div>
									</div>
									<div class="col-md-6">
										{!! Form::text('phone', null, array('placeholder' =>  trans('front.phone'),'class' => '',"onClick"=>"this.select()" )) !!}
										<div class="form-control-feedback {{ $errors->first('phone') ?'':'d-none' }}"> {{ $errors->first('phone') }}  </div>
									</div>
									<div class="col-md-6">
										<select name="subject" id="subject" data-placeholder="Subject" class="chosen-select sel-dec">
											<option>Subject</option>
											<option value="Order Project">Order Project</option>
											<option value="Support">Support</option>
											<option value="Other Question">Other Question</option>
										</select>
									</div>
								</div>
								{!! Form::textarea('message',null,['class' => 'form-control','placeholder'=> trans('front.message'),"rows"=>'4']) !!}
								<div class="form-control-feedback {{ $errors->first('message') ?'':'d-none' }}"> {{ $errors->first('message') }}  </div>

								<div class="clearfix"></div>
								<button class="btn float-btn flat-btn color-bg" id="submit">@lang('front.send')  <i class="fal fa-long-arrow-right"></i></button>




							</fieldset>

							{!! Form::close() !!}
							@endif
						</div>
						<!-- contact form  end-->
						<div class="section-number right_sn">
							<div class="pr-bg pr-bg-white"></div>
							<span>0</span>2.
						</div>
					</div>
				</section>
				<!--section end-->
			</div>
			<!--column-wrap-container end-->
		</div>
		<!--column-wrap end-->
		<div class="limit-box fl-wrap"></div>
	</div>

	@endsection
