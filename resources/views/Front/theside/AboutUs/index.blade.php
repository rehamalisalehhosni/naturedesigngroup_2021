@extends('layouts.theside')
@section('content')
<?php $locale = App::getLocale(); ?>
<!-- content  -->
<div class="content">
    <!--fixed-column-wrap-->
    @if(isset($banner[0]))
    <div class="fixed-column-wrap">
        <div class="pr-bg"></div>
        <!--fixed-column-wrap-content-->
        <div class="fixed-column-wrap-content">
            <div class="scroll-nav-wrap color-bg">
                <div class="carnival">@lang('front.Scroll_down')</div>
                <div class="snw-dec">
                    <div class="mousey">
                        <div class="scroller"></div>
                    </div>
                </div>
            </div>
            <div class="bg" data-bg="{{url('/Uploads/pages/'.$locale.'/'. $banner[0]->image)}}"></div>
            <div class="overlay"></div>
            <div class="progress-bar-wrap bot-element">
                <div class="progress-bar"></div>
            </div>
            <!--fixed-column-wrap_title-->
            <div class="fixed-column-wrap_title first-tile_load">
                <h2>{{$banner[0]->title}}</h2>
                <p>{!! $banner[0]->description !!}</p>
            </div>
            <!--fixed-column-wrap_title end-->
            <div class="fixed-column-dec"></div>
        </div>
        <!--fixed-column-wrap-content end-->
    </div>
    @endif

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
            @if($aboutUs[0])
            <section id="sec1" class="small-padding">
                <div class="container">
                    <div class="split-sceen-content_title fl-wrap">
                        <div class="pr-bg pr-bg-white"></div>
                        <h3>{{$banner[0]->title}}</h3>
                        <!--<p>{!! $aboutUs[0]->description !!} </p>-->
                    </div>
                    <div class="column-wrap-content fl-wrap">
                        <div class="column-wrap-media fl-wrap">
                            <div class="pr-bg pr-bg-white"></div>
                            <img src="{{url('/Uploads/aboutus/image/'.$locale.'/'. $aboutUs[0]->image)}}"  class="respimg" alt="">
                            @if(isset($aboutUs[0]->video))
                            <a href="{{$aboutUs[0]->video}}" class="column-wrap-media_btn color-bg image-popup">
                                {{$banner[0]->title}} <i class="fas fa-play"></i>
                                <div class="pr-bg pr-bg-white"></div>
                            </a>
                            @endif
                    </div>
                    <div class="column-wrap-text">
                        <div class="row">
                            <div class="col-md-4">
                                <h3 class="pr-subtitle">
                                    {{$aboutUs[0]->title}}
                                    <div class="pr-bg pr-bg-white"></div>
                                </h3>
                            </div>
                            <div class="col-md-8">
                                <div class="pr-bg pr-bg-white"></div>
                                {!! $aboutUs[0]->description !!}
                            </div>
                        </div>
                    </div>
                </div>
                <div class="section-number right_sn">
                    <div class="pr-bg pr-bg-white"></div>
                    <span>0</span>1.
                </div>
            </div>
        </section>
        @endif
        <!--section end-->
        <div class="section-separator"></div>
        <!--section -->
        <section   class="no-padding">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="inline-facts-container fl-wrap">
                            <div class="pr-bg pr-bg-white"></div>
                            <!-- inline-facts -->
                            @foreach($statisticData as $data)
                            <div class="inline-facts-wrap">
                                <div class="inline-facts">
                                    <div class="milestone-counter">
                                        <div class="stats animaper">
                                            <div class="num" data-content="{{$data->number}}" data-num="{{$data->number}}">0</div>
                                        </div>
                                    </div>
                                    <h6>{{$data->title}}</h6>
                                </div>
                            </div>
                            @endforeach
                            <!-- inline-facts end -->
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--section end-->
        <div class="section-separator"></div>
        <!--section-->

        @if(count($aboutUs)>1&&$aboutUs[1])
        <section id="sec2" class="small-padding">
            <div class="container">
                <div class="split-sceen-content_title fl-wrap">
                    <div class="pr-bg pr-bg-white"></div>
                    <h3> {{$aboutUs[1]->title}}</h3>
                    <!--<p>{!! $aboutUs[1]->description !!} </p>-->
                </div>
                <div class="column-wrap-content fl-wrap">
                    <div class="column-wrap-media fl-wrap">
                        <div class="pr-bg pr-bg-white"></div>
                        <img src="{{url('/Uploads/aboutus/image/'.$locale.'/'. $aboutUs[1]->image)}}"  class="respimg" alt="">
                        @if($aboutUs[1]->video)
                        <a href="{{$aboutUs[1]->video}}" class="column-wrap-media_btn color-bg image-popup">
                             {{$aboutUs[1]->title}} <i class="fas fa-play"></i>
                            <div class="pr-bg pr-bg-white"></div>
                        </a>
                        @endif
                </div>
                <div class="column-wrap-text">
                    <div class="row">
                        <div class="col-md-4">
                            <h3 class="pr-subtitle">
                                {{$aboutUs[1]->title}}
                                <div class="pr-bg pr-bg-white"></div>
                            </h3>
                        </div>
                        <div class="col-md-8">
                            <div class="pr-bg pr-bg-white"></div>
                            {!! $aboutUs[1]->description !!}
                        </div>
                    </div>
                </div>
            </div>
            <div class="section-number right_sn">
                <div class="pr-bg pr-bg-white"></div>
                <span>0</span>2.
            </div>
        </div>
    </section>
    @endif
    <!--section end-->
</div>
<!--column-wrap-container end-->
</div>
<!--column-wrap end-->
<div class="limit-box fl-wrap"></div>
</div>
@endsection
