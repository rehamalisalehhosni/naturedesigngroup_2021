@extends('layouts.theside')
@section('content')
<?php $locale = App::getLocale();?>

<div class="content full-height hidden-item no-footer">
   <div  class='cat-main-details'>
      <div class='details'>
         {!!  $maincat->description !!}
      </div>
      @if($parent==0)
          <a href="{{route('portfolio.index',[App::getLocale(),'cat_id'=>$cat_id])}}" class="  start-btn color-bg"> View All Projects <i class="fal fa-long-arrow-right"></i></a>
          <a href="{{route('portfolio.index',[App::getLocale(),'cat_id'=>$cat_id])}}" class="  start-btn-on-mobile"> View All Projects <i class="fal fa-long-arrow-right"></i></a>
      @else
          <a href="{{route('portfolio.index',[App::getLocale(),'cat_id'=>$cat_id,'parent'=>$parent])}}" class="  start-btn color-bg"> View All Projects <i class="fal fa-long-arrow-right"></i></a>
          <a href="{{route('portfolio.index',[App::getLocale(),'cat_id'=>$cat_id,'parent'=>$parent])}}" class="  start-btn-on-mobile"> View All Projects <i class="fal fa-long-arrow-right"></i></a>

      @endif
      
   </div>
   <div class='hero-canvas-wrap-home'>
      <div class="hero-canvas-wrap">
         <div class="dots gallery__dots" data-dots=""></div>
      </div>
   </div>
   <!--00-->
   <div class="rev_slider_wrapper">
      <div id="rev_slider" class="rev_slider tp-overflow-hidden fullscreenbanner">
         <ul>
            @foreach($projects as $project)
            <?php
                $title = explode(' ',$project->title);
                $len=count($title)/2;
            ?>
            <li data-transition="slotzoom-horizontal" data-slotamount="7" data-masterspeed="1000" data-fsmasterspeed="1000">
               <img src="{{url('/Uploads/projects/'.$locale.'/'. $project->main_image)}}" data-bgparallax="5" alt="" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" class="rev-slidebg ">
               <div class='n-half-hero-wrap'>
                 
                  <div class="tp-caption tp-shape tp-shapewrapper  tp-resizeme" data-x="['left']" data-hoffset="['102']" data-y="['middle','middle','middle','middle']" data-voffset="['-201']" data-width="270" data-height="5" data-whitespace="nowrap" data-type="shape" data-responsive_offset="on" data-frames='[{"from":"x:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;","speed":1000,"to":"o:1;","delay":0,"ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"to":"opacity:0;","ease":"nothing"}]' data-textAlign="['left','left','left','left']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" > </div>
                                 <div class="tp-caption tp-shape tp-shapewrapper  tp-resizeme" data-x="['left']" data-hoffset="['370']" data-y="['middle','middle','middle','middle']" data-voffset="['19']" data-width="5" data-height="444" data-whitespace="nowrap" data-type="shape" data-responsive_offset="on" data-frames='[{"from":"y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;","speed":1000,"to":"o:1;","delay":600,"ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"to":"opacity:0;","ease":"nothing"}]' data-textAlign="['left','left','left','left']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" > </div>
                                 <div class="tp-caption tp-shape tp-shapewrapper  tp-resizeme" data-x="['left']" data-hoffset="['100']" data-y="['middle','middle','middle','middle']" data-voffset="['239']" data-width="270" data-height="5" data-whitespace="nowrap" data-type="shape" data-responsive_offset="on" data-frames='[{"from":"x:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;","speed":1000,"to":"o:1;","delay":1200,"ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"to":"opacity:0;","ease":"nothing"}]' data-textAlign="['left','left','left','left']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" > </div>
                                 <div class="tp-caption tp-shape tp-shapewrapper  tp-resizeme" data-x="['left']" data-hoffset="['100']" data-y="['middle','middle','middle','middle']" data-voffset="['19']" data-width="5" data-height="444" data-whitespace="nowrap" data-type="shape" data-responsive_offset="on" data-frames='[{"from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;","speed":1000,"to":"o:1;","delay":1800,"ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"to":"opacity:0;","ease":"nothing"}]' data-textAlign="['left','left','left','left']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" > </div>
                                
                                
                                
                  <div class="slider-title tp-caption tp-resizeme" data-x="['left']" data-hoffset="['156']" data-y="['middle','middle','middle','middle']" data-voffset="['-30']" data-textAlign="['left']" data-fontsize="['72', '63','57','50']" data-lineheight="['72','68', '62','54']" data-height="none" data-whitespace="nowrap" data-transform_idle="o:1;" data-transform_in="x:[-155%];z:0;rX:0deg;rY:0deg;rZ:0deg;sX:1;sY:1;skX:0;skY:0;s:2000;e:Power2.easeInOut;" data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" data-mask_in="x:50px;y:0px;s:inherit;e:inherit;" data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;" data-start="500" data-splitin="chars" data-splitout="none" data-responsive_offset="on" data-elementdelay="0.05" style="font-weight:600; letter-spacing:-0.05em;">
                     <?php $flag=false ?>
                     @foreach($title as $key=>$proj)
                        {{$proj}}
                         @if($key>=(int)$len-1 && !$flag)
                           <?php $flag=true?>
                           <br/>
                        @endif
                     @endforeach
                  </div>
                  <div class="slider-title tp-caption" data-x="['left']" data-hoffset="['156']" data-y="['middle','middle','middle','middle']" data-voffset="['-170']" data-textAlign="['left']" data-fontsize="['18']" data-lineheight="['20']" data-height="none" data-whitespace="nowrap" data-transform_idle="o:1;" data-transform_in="x:[155%];z:0;rX:0deg;rY:0deg;rZ:0deg;sX:1;sY:1;skX:0;skY:0;s:2000;e:Power2.easeInOut;" data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" data-mask_in="x:50px;y:0px;s:inherit;e:inherit;" data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;" data-start="1000" data-splitin="chars" data-splitout="none" data-responsive_offset="on" data-elementdelay="0.05" style="font-weight:600; letter-spacing:0.1em; text-transform:uppercase;">Urban Design</div>
                  <div class="slider-title tp-caption" data-x="['left']" data-hoffset="['156']" data-y="['middle','middle','middle','middle']" data-voffset="['170']" data-textAlign="['left']" data-fontsize="['18']" data-lineheight="['20']" data-height="none" data-whitespace="nowrap" data-transform_idle="o:1;" data-transform_in="x:[-105%];z:0;rX:0deg;rY:0deg;rZ:0deg;sX:1;sY:1;skX:0;skY:0;s:2000;e:Power2.easeInOut;" data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" data-mask_in="x:50px;y:0px;s:inherit;e:inherit;" data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;" data-start="1500" data-splitin="none" data-splitout="none" data-responsive_offset="on" data-elementdelay="0.05" style="font-weight:600;">
                     <a href="{{route('portfolio.details',[App::getLocale(),'pro_id'=>$project->projects_translations_id])}}" class="go-project-listing ajax">@lang('front.View_Project') <i class="fal fa-long-arrow-right"></i></a>
                  </div>
               </div>
            </li>
            @endforeach
         </ul>
      </div>
   </div>
   
    <div class="hero-slider_control-wrap bot-element">
                <div class="slider-next hero-slider-button-next hero-slider_control hero-slider-button-next"><span>Next<i class="fal fa-angle-right"></i></span> </div>
                <div class="slider-prev prev hero-slider_control hero-slider-button-prev"><span><i class="fal fa-angle-left"></i>Prev </span></div>
    </div>
                         
   <div class="option-panel explore-projects bot-element" >
      @if($parent==0)
            <a href="{{route('portfolio.index',[App::getLocale(),'cat_id'=>$cat_id])}}" class="  start-btn color-bg"> @lang('front.Start_explore') <i class="fal fa-long-arrow-right"></i></a>
      @else
            <a href="{{route('portfolio.index',[App::getLocale(),'cat_id'=>$cat_id,'parent'=>$parent])}}" class="  start-btn color-bg"> @lang('front.Start_explore') <i class="fal fa-long-arrow-right"></i></a>

      @endif

   </div>
   <!--end oo-->
</div>

@endsection
