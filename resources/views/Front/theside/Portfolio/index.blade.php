@extends('layouts.theside')
@section('content')
<?php $locale = App::getLocale();?>

<div class="dynamic-title">{{$maincat->title}}</div>
@if($maincat->theme=='1')
<!-- content  -->

<div class="content dark-bg no-footer">
    <div class="fixed-filter-panel bot-element in-filter_mobpanel">
        <div class="fixed-filter-panel_title color-bg">
            @lang('front.Works_Filter') <i class="fal fa-long-arrow-right"></i>
        </div>
        <div class="gallery-filters">
            <a href="#" class="gallery-filter @if($filter_id==0) gallery-filter_active @endif "  data-filter="*">@lang('front.All_Works')</a>
            @foreach($subCat as $sub)
            <a href="#" class="gallery-filter  @if($filter_id==$sub->projects_category_id) gallery-filter_active @endif" data-filter=".{{$sub->projects_category_id}}">{{$sub->title}}</a>
            @endforeach
        </div>
        <div class="folio-counter">
            <div class="num-album"></div>
            <div class="all-album"></div>
        </div>
    </div>
    <!-- portfolio start -->
    <div class="gallery-items min-pad   four-column fl-wrap ff_panel-conainer">
        <!-- gallery-item-->

        @foreach($subCat as $sub)
        @foreach($projects as $project)
        @if($sub->projects_category_id==$project->projects_category_id)
        <div class="gallery-item {{ $project->projects_category_id }}">
            <div class="grid-item-holder">
                <img  src="{{url('/Uploads/projects/'.$locale.'/'. $project->main_image)}}"    alt="">
                <div class="grid-det">
                    <div class="grid-det_category"><a href="#"> {{ $maincat->title }} </a> <a href="#"> {{ $sub->title }}</a></div>
                    <div class="grid-det-item">
                        <a href="{{route('portfolio.details',[App::getLocale(),'pro_id'=>$project->projects_translations_id])}} " class="ajax grid-det_link">{{$project->title}} <i class="fal fa-long-arrow-right"></i></a>
                    </div>
                </div>
            </div>
            <div class="pr-bg"></div>
        </div>
        @endif
        @endforeach
        @endforeach
        <!-- gallery-item end-->
    </div>
    <!-- portfolio end -->
</div>
<!-- content end -->
@elseif($maincat->theme=='2')
<div class="content dark-bg no-footer">
    <div class="fixed-filter-panel bot-element fw-panel hor-mob-filter">
        <div class="fixed-filter-panel_title color-bg hor-mob-filter_btn">
            Works Filter <i class="fal fa-long-arrow-right"></i>
        </div>
        <div class="gallery-filters">
            <a href="#" class="gallery-filter @if($filter_id==0) gallery-filter_active @endif "  data-filter="*">@lang('front.All_Works')</a>
            @foreach($subCat as $sub)
            <a href="#" class="gallery-filter @if($filter_id==$sub->projects_category_id) gallery-filter_active @endif" data-filter=".{{$sub->projects_category_id}}">{{$sub->title}}</a>
            @endforeach
        </div>
        <div class="count-folio round-counter">
            <div class="num-album"></div>
            <div class="all-album"></div>
        </div>
        <div class="scroll-down-wrap">
            <div class="mousey">
                <div class="scroller"></div>
            </div>
            <span>Scroll or  Swipe</span>
        </div>
    </div>
    <div class="horizontal-grid-wrap  fl-wrap  ">
        <!-- portfolio start -->
        <div   id="portfolio_horizontal_container" class="one-ver-columns">
            <!-- portfolio_item-->

            @foreach($subCat as $sub)
            @foreach($projects as $project)
            @if($sub->projects_category_id==$project->projects_category_id)
            <div class="portfolio_item {{ $project->projects_category_id }}">
                <div class="grid-item-holder">
                    <img  src="{{url('/Uploads/projects/'.$locale.'/'. $project->main_image)}}"    alt="">
                    <div class="carousel-title-wrap">
                        <h2><a href="{{route('portfolio.details',[App::getLocale(),'pro_id'=>$project->projects_translations_id])}}" class="ajax">{{$project->title}} <i class="fal fa-long-arrow-right"></i></a></h2>
                        <p>{!! $project->description !!}</p>
                    </div>
                </div>
                <div class="pr-bg"></div>
            </div>
            @endif
            @endforeach
            @endforeach

            <!-- portfolio_item end-->
        </div>
        <!-- portfolio end -->
    </div>
</div>

@elseif($maincat->theme==3)
<div class="content dark-bg no-footer">

    <div class="fixed-filter-panel bot-element fw-panel hor-mob-filter">
        <div class="fixed-filter-panel_title color-bg hor-mob-filter_btn">
            Works Filter <i class="fal fa-long-arrow-right"></i>
        </div>
        <div class="gallery-filters">
            <a href="#" class="gallery-filter @if($filter_id==0)  gallery-filter_active   @endif"  data-filter="*">All Works</a>
            @foreach($subCat as $sub)
            <a href="#" class="gallery-filter @if($filter_id==$sub->projects_category_id) gallery-filter_active @endif " data-filter=".{{$sub->projects_category_id}}">{{$sub->title}}</a>
            @endforeach
        </div>
        <div class="count-folio round-counter">
            <div class="num-album"></div>
            <div class="all-album"></div>
        </div>
        <div class="scroll-down-wrap">
            <div class="mousey">
                <div class="scroller"></div>
            </div>
            <span>Scroll or  Swipe</span>
        </div>
    </div>
    <!-- fixed-filter-panelend -->
    <!--horizontal-grid   -->
    <div class="horizontal-grid-wrap  fl-wrap  ">
        <!-- portfolio start -->
        <div   id="portfolio_horizontal_container" class="two-ver-columns">
            <!-- portfolio_item-->

            @foreach($subCat as $sub)
            @foreach($projects as $project)
            @if($sub->projects_category_id==$project->projects_category_id)
            <div class="portfolio_item {{ $project->projects_category_id }}">
                <div class="grid-item-holder">
                    <img  src="{{url('/Uploads/projects/'.$locale.'/'. $project->main_image)}}"    alt="">
                    <div class="grid-det">
                        <div class="grid-det_category"><a href="#">{{ $maincat->title }}  </a> <a href="#">{{ $sub->title }}</a></div>
                        <div class="grid-det-item">
                            <a href="{{route('portfolio.details',[App::getLocale(),'pro_id'=>$project->projects_translations_id])}}" class="ajax grid-det_link">{{$project->title}} <i class="fal fa-long-arrow-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="pr-bg"></div>
            </div>
            @endif
            @endforeach
            @endforeach
            <!-- portfolio_item end-->

            <!-- portfolio_item end-->
        </div>
        <!-- portfolio end -->
    </div>
</div>

@endif
@endsection
