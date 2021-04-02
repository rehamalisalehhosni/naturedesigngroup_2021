@extends('layouts.theside')
@section('content')
<?php $locale = App::getLocale();?>
<!--content-->
<div class="content full-height dark-bg">
    <!-- section-->
    <!-- Hero video   -->
    <div class="media-container">
        <div class="video-mask"></div>
        <div class="video-holder">
            <!--=============== add you video id  in data-vim=""  ===============-->
            @if(isset($banner))
                @if(isset($banner->video))
                   <div  class="background-vimeo" data-vim="{{ $banner->video }}"> </div>
                @endif
            <div class="mob-bg bg" data-bg="{{url('/Uploads/pages/'.$locale.'/'. $banner->image)}}"></div>
            @endif
        </div>
        <div class="overlay"></div>
        <div class="sec-lines"></div>
    </div>
    <!-- Hero video   end -->
    <div class="hero-title fl-wrap">
        <div class="container">
            <div class="section-title fl-wrap">
                <div class="pr-bg"></div>
                <h2>{{ $projectsDetails->title }}</h2>
                <p> {!! $projectsDetails->description !!} </p>
                <div class="section-title_category"><a href="#">{{ $projectsDetails->projectsCategoriesTranslate->title }} </a> </div>
            </div>
        </div>
    </div>
    <div class="hero-start-link bot-element dark-bg">
        <div class="scroll-down-wrap">
            <div class="mousey">
                <div class="scroller"></div>
            </div>
            <span>  @lang('front.Scroll_Down_to_discover')</span>
        </div>
        <a href="#sec1" class="custom-scroll-link color-bg"><i class="fal fa-long-arrow-down"></i></a>
    </div>
</div>


<div class="content">
    <!-- section-->
    <section class="no-padding-bottom" id="sec1">
        <!-- container-->
        <div class="container">
            <!-- det-wrap-->
            <div class="fl-wrap det-wrap">
                <div class="row">
                    <div class="col-md-4">
                        <div class="fixed-column fl-wrap">
                            <div class="pr-bg pr-bg-white"></div>
                            <div class="pr-title">
                                @lang('front.Project_Details')

                                {!! $projectsDetails->description !!}
                            </div>
                            @if($projectsDetails->clients||$projectsDetails->status||$projectsDetails->location)
                            <ul class="pr-list dark-bg">
                                @if($projectsDetails->clients)
                                <li><span> @lang('front.Client') :</span>  {{$projectsDetails->clients}} </li>
                                @endif
                                @if($projectsDetails->status)
                                <li><span> @lang('front.Status')  :</span>  {{$projectsDetails->status}} </li>
                                @endif
                                @if($projectsDetails->location)
                                <li><span>  @lang('front.Location') : </span>  {{$projectsDetails->location}} </li>
                                @endif
                            </ul>
                            @endif
                            <div class="fixed-column-top"><i class="fal fa-long-arrow-up"></i></div>
                        </div>
                    </div>
                    <div class="col-md-8 first-tile_load">
                        <!-- tabs-container-->
                        <div id="tabs-container">
                            <div class="tabs-counter">
                                <span>0</span>
                                <div class="tc_item">1</div>
                            </div>
                            <ul class="tabs-menu fl-wrap">
                                <li class="selectedLava"><a href="#tab-1" data-tabnum="1"><span>01.</span>@lang('front.Details')</a></li>
                                @if(isset($projectsDetails->video))
                                <li><a href="#tab-2" data-tabnum="2"><span>02.</span>@lang('front.video')</a></li>
                                @endif
                                @if(count($projectsPlans)>0)
                                <li><a href="#tab-3" data-tabnum="3"><span>03.</span>@lang('front.plan')</a></li>
                                @endif
                            </ul>
                            <!-- tab-content-->
                            <div id="tab-1" class="tab-content">
                                <h3 class="pr-subtitle  "> @lang('front.Gallery')</h3>
                                <!-- portfolio start -->
                                <div class="gallery-items min-pad  lightgallery three-column fl-wrap">
                                    <!-- gallery-item-->
                                    @foreach($projectsImages as $img)
                                    <div class="gallery-item">
                                        <div class="grid-item-holder">
                                            <a href="{{url('/Uploads/projects/project_images/'.$img->image)}}" class="fet_pr-carousel-box-media-zoom   popup-image"><i class="fal fa-search"></i></a>
                                            <img  src="{{url('/Uploads/projects/project_images/'.$img->image)}}"    alt="">
                                        </div>
                                    </div>
                                    @endforeach
                                    <!-- gallery-item end-->
                                </div>
                                <!-- portfolio end -->
                                <h3 class="pr-subtitle mar-top"> {{$projectsDetails->title}} </h3>
                                {!! $projectsDetails->description !!}
                            </div>
                            <!-- tab-content end-->
                            <!-- tab-content-->
                            @if(isset($projectsDetails->presentation))
                            <div id="tab-2" class="tab-content">
                                <h3 class="pr-subtitle"> @lang('front.Project_Presentation').</h3>
                                <p>{!! $projectsDetails->presentation !!}</p>
                                <div class="video-box fl-wrap">
                                    <img src="{{url('/Uploads/projects/'.$locale.'/'. $projectsDetails->main_image)}}" class="respimg" alt="">
                                    <a class="video-box-btn image-popup" href="{!! $projectsDetails->video !!}"><i class="fas fa-play"></i></a>
                                </div>
                            </div>
                            @endif
                            <!-- tab-content end-->
                            <!-- tab-content-->
                            @if(count($projectsPlans)>0)
                            <div id="tab-3" class="tab-content">
                                <h3 class="pr-subtitle">@lang('front.plan')</h3>
                                <div class="palns-gal fl-wrap lightgallery">

                                    <div class="plans-gal_item hov_zoom">
                                        @foreach($projectsPlans as $img)
                                        <img src="{{url('/Uploads/projects/projects_plans/'.$img->image)}}" alt="" class="respimg">
                                        <a href="{{url('/Uploads/projects/projects_plans/'.$img->image)}}" class="box-media-zoom   popup-image"><i class="fal fa-search"></i></a>

                                        @endforeach
                                    </div>
                                </div>
                            </div>
                            @endif
                        </div>
                        <!-- tabs-container end-->
                        <div class="clearfix"></div>
                        <span class="dec-border fl-wrap"></span>
                        <!-- <a href="#" class="pr-view" target="_blank">
                        View project <i class="fal fa-long-arrow-right"></i>
                    </a> -->
                </div>
            </div>
        </div>
        <!-- det-wrap end-->
    </div>
    <!-- container end -->
    <div class="clearfix"></div>
    <div class="limit-box fl-wrap"></div>
    <!--content-nav_holder-->
    <div class="content-nav_holder fl-wrap first-tile_load">
        <div class="container">
            <div class="content-nav">
                <ul>
                    @if($next)
                    <li>
                        <a href="{{route('portfolio.details',[App::getLocale(),'pro_id'=>$next->projects_translations_id])}}" class="ln ajax"><i class="fal fa-long-arrow-left"></i><span>@lang('front.next_project')</span></a>
                        <div class="content-nav_mediatooltip cnmd_leftside"><img  src="{{url('/Uploads/projects/'.$locale.'/'. $next->main_image)}}"   alt=""></div>
                    </li>
                    @endif

                    <li>
                        <a href="#" class="ajax list-folio_nav">
                            <span></span>
                        </a>
                    </li>
                    @if($prev)
                    <li>
                        <a href="{{route('portfolio.details',[App::getLocale(),'pro_id'=>$prev->projects_translations_id])}}" class="rn ajax"><span >@lang('front.prev_project')</span> <i class="fal fa-long-arrow-right"></i></a>
                        <div class="content-nav_mediatooltip cnmd_rightside"><img  src="{{url('/Uploads/projects/'.$locale.'/'. $prev->main_image)}}"   alt=""></div>
                    </li>
                    @endif
                </ul>
            </div>
        </div>
    </div>
    <!-- content-nav_holder end-->
</section>
<!-- section end-->
</div>
@endsection
