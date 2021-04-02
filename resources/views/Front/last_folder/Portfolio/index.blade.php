@extends('layouts.defaultPage')
@section('content')
<?php $locale = App::getLocale();?>

<div class="dynamic-title">{{$maincat->title}}</div>
@if($maincat->theme=='1')
<!-- Page title -->
<!-- Page title  end-->
<!-- content  -->
<div class="content hor-content full-height pad-con no-bg-con">
    <!-- filter  -->
    <div class="filter-holder round-filter">
        <div class="gallery-filters hid-filter">
            <a href="#" class="gallery-filter transition2 @if($filter_id==0) gallery-filter_active @endif" data-filter="*">All</a>
            @foreach($subCat as $sub)
                <a href="#" class="gallery-filter transition2 @if($filter_id==$sub->projects_category_id) gallery-filter_active @endif" data-filter=".{{$sub->projects_category_id}}">{{$sub->title}}</a>
            @endforeach
        </div>
        <div class="clearfix"></div>
        <div class="filter-button">@lang('front.Filter')</div>
        <div class="count-folio round-counter">
            <div class="num-album"></div>
            <div class="all-album"></div>
        </div>
    </div>
    <!-- filter end -->
    <!--=============== portfolio holder ===============-->
    <div class="resize-carousel-holder hpw">
        <div class="p_horizontal_wrap">
            <div id="portfolio_horizontal_container" class="two-ver-columns">
                <!-- portfolio item -->
                 @foreach($subCat as $sub)
                    @foreach($projects as $project)
                        @if($sub->projects_category_id==$project->projects_category_id)
                        <div class="portfolio_item {{ $project->projects_category_id }} " style=" ">
                            <img  src="{{url('/Uploads/projects/'.$locale.'/'. $project->main_image)}}"    alt="">
                            <div class="port-desc-holder">
                                <div class="port-desc">
                                    <div class="grid-item">
                                        <h3><a href="{{route('portfolio.details',[App::getLocale(),'pro_id'=>$project->projects_translations_id])}} ">{{$project->title}}</a></h3>
                                        <span> {{ $maincat->title }} / {{ $sub->title }}</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        @endif
                    @endforeach
                    @endforeach
                    
                <!-- portfolio item end -->
            </div>
            <!--portfolio_horizontal_container  end-->
        </div>
        <!--p_horizontal_wrap  end-->
    </div>
</div>
<!-- content end -->
@elseif($maincat->theme=='2')

<div class="content  hor-content    pad-con no-bg-con">
    <div class="filter-holder round-filter">
        <div class="gallery-filters hid-filter">
            <a href="#" class="gallery-filter transition2 @if($filter_id==0) gallery-filter_active @endif" data-filter="*">All</a>
            @foreach($subCat as $sub)
                <a href="#" class="gallery-filter transition2 @if($filter_id==$sub->projects_category_id) gallery-filter_active @endif" data-filter=".{{$sub->projects_category_id}}">{{$sub->title}}</a>
            @endforeach
        </div>
        <div class="clearfix"></div>
        <div class="filter-button">@lang('front.Filter')</div>
        <div class="count-folio round-counter">
            <div class="num-album"></div>
            <div class="all-album"></div>
        </div>
    </div>

    <!-- filter end-->
    <!--=============== portfolio holder ===============-->
    <div class="gallery-items   four-columns grid-small-pad  mob-pa">
        <!-- 1 -->
                 @foreach($subCat as $sub)
                    @foreach($projects as $project)
                        @if($sub->projects_category_id==$project->projects_category_id)

            <div class="gallery-item   {{ $project->projects_category_id }}"  style="">
                <div class="grid-item-holder">
                    <img  src="{{url('/Uploads/projects/'.$locale.'/'. $project->main_image)}}"    alt="">
                    <div class="port-desc-holder">
                        <div class="port-desc">
                            <div class="grid-item bb">
                                <h3><a href="{{route('portfolio.details',[App::getLocale(),'pro_id'=>$project->projects_translations_id])}} ">{{$project->title}}</a></h3>
                                <span> {{ $maincat->title }} / {{ $sub->title }}</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
           @endif
          @endforeach
      @endforeach

    </div>
    <!-- end gallery items -->
</div>

@elseif($maincat->theme=3)

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
                            <li><a href="#">@lang('front.Portfolio')</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<!-- content end -->
<div class="content">
    <section>
        <div class="container">
            <!-- filter -->
            <div class="filter-holder inline-filter">
                <div class="gallery-filters ">
                    <a href="#" class="gallery-filter transition2 @if($filter_id==0) gallery-filter_active @endif" data-filter="*">All</a>
                    @foreach($subCat as $sub)
                        <a href="#" class="gallery-filter transition2 @if($filter_id==$sub->projects_category_id) gallery-filter_active @endif" data-filter=".{{$sub->projects_category_id}}">{{$sub->title}}</a>
                    @endforeach
                </div>
                <div class="count-folio">
                    <div class="num-album"></div>
                    <div class="all-album"></div>
                </div>
            </div>
            <!-- filter end-->
            <!--=============== portfolio holder ===============-->
            <div class="gallery-items   three-columns grid-small-pad ">

                 @foreach($subCat as $sub)
                    @foreach($projects as $project)
                        @if($sub->projects_category_id==$project->projects_category_id)
                        <div class="gallery-item   {{ $sub->projects_category_id }}"  style="  ">
                            <div class="grid-item-holder">
                                <img  src="{{url('/Uploads/projects/'.$locale.'/'. $project->main_image)}}"    alt="">
                                <div class="port-desc-holder">
                                    <div class="port-desc">
                                        <div class="grid-item">
                                            <h3><a href="{{route('portfolio.details',[App::getLocale(),'pro_id'=>$project->projects_translations_id])}} ">{{$project->title}}</a></h3>
                                            <span> {{ $maincat->title }} / {{ $sub->title }}</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
           @endif
          @endforeach
      @endforeach
      </div>
            <!-- end gallery items -->
        </div>
    </section>
</div>




@endif
@endsection
