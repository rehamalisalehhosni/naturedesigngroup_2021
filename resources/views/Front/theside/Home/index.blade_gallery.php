@extends('layouts.theside')
@section('content')
<?php $locale = App::getLocale();?>
<!-- nav-holder end -->
<!--Content -->
<div class="content full-height hidden-item home-half-slider">
  <div class="hero-canvas-wrap">
    <div class="dots gallery__dots" data-dots=""></div>
  </div>
  <!-- option-panel-->
  <div class="option-panel bot-element">
    <a href="{{route('aboutUs.index',App::getLocale())}}" class="ajax start-btn color-bg"> @lang('front.Start_explore') <i class="fal fa-long-arrow-right"></i></a>
    <div class="swiper-counter">
      <div id="current">01</div>
      <div id="total"></div>
    </div>
    <div class="slide-progress-container">
      <div class="slide-progress-warp">
        <div class="slide-progress color-bg"></div>
      </div>
    </div>
  </div>
  <!--option-panel end -->
  <!-- hero-slider-wrap -->
  <div class="hero-slider-wrap fl-wrap full-height">
    <div class="hero-slider fs-gallery-wrap fl-wrap full-height">
      <div class="swiper-container">
        <div class="swiper-wrapper" >
          <!-- swiper-slide-->
          @foreach($ProjectsTranslation as $project)
            <div class="swiper-slide">
              <div class="half-hero-wrap">
                <div class="pr-bg"></div>
                <div class="rotate_text"></div>
                <h1>{{$project->title}} <br> {{$project->projectsCategoriesTranslate->title}} <br></h1>
                <h4>  {!! $project->description !!} </h4>
                <div class="clearfix"></div>
                <a href="{{route('portfolio.details',[App::getLocale(),'pro_id'=>$project->projects_translations_id])}}" class="half-hero-wrap_link ajax">@lang('front.View_Project') <i class="fal fa-long-arrow-right"></i></a>
              </div>
            </div>
          @endforeach
          <!-- swiper-slide end-->
        </div>
      </div>
    </div>
    <div class="hero-slider_control-wrap bot-element">
      <div class="hero-slider_control hero-slider-button-next"><span>@lang('front.Next')<i class="fal fa-angle-right"></i></span> </div>
      <div class="hero-slider_control hero-slider-button-prev"><span><i class="fal fa-angle-left"></i>@lang('front.Prev') </span></div>
    </div>
    <div class="hero-slider-wrap_pagination hlaf-slider-pag"></div>
  </div>
  <!-- hero-slider-wrap  end-->
  <!-- hero-slider-img-->
  <div class="hero-slider-img hero-slider-wrap_halftwo">
    <div class="sec-lines"></div>
    <div class="swiper-container">
      <div class="swiper-wrapper" >
        @foreach($ProjectsTranslation as $project)
          <!-- swiper-slide-->
          <div class="swiper-slide">
            <div class="bg"  data-bg="{{url('/Uploads/projects/'.$locale.'/'. $project->main_image)}}"></div>
            <div class="overlay"></div>
          </div>
        @endforeach

        <!-- swiper-slide end-->
      </div>
    </div>
  </div>
  <!-- hero-slider-img  end-->
</div>
<!-- content  end -->
<!-- share-wrapper-->
<div class="share-wrapper">
  <div class="close-share-btn"><i class="fal fa-long-arrow-left"></i> @lang('front.Close') </div>
  <div class="share-container fl-wrap  isShare"></div>
</div>
<!-- share-wrapper  end -->



@endsection
