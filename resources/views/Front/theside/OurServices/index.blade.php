@extends('layouts.theside')
@section('content')
<?php $locale = App::getLocale();?>
<!-- Page title -->

<div class="content">
    <!--fixed-column-wrap-->
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
            @if(isset($banner[0]))
               <div class="bg" data-bg="{{url('/Uploads/pages/'.$locale.'/'. $banner[0]->image)}}"></div>
            @endif

            <div class="overlay"></div>
            <div class="progress-bar-wrap bot-element">
                <div class="progress-bar"></div>
            </div>
            <!--fixed-column-wrap_title-->
            <div class="fixed-column-wrap_title first-tile_load">
                <h2>
                    @if(isset($banner[0]))
                     {{ $banner[0]->title }}
                    @endif
                </h2>
                @if(isset($banner[0]))
                {!! $banner[0]->description !!}
                @endif
            </div>
            <!--fixed-column-wrap_title end-->
            <div class="fixed-column-dec"></div>
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
            @foreach($services as $key=>$item)
            <section   class="small-padding">
                <div class="container">
                    <div class="split-sceen-content_title fl-wrap">
                        <div class="pr-bg pr-bg-white"></div>
                        <h3>{{ $item->title }}</h3>
                        <!--<p>{!! $item->description !!}  </p>-->
                    </div>
                    <div class="column-wrap-content fl-wrap">
                        <div class="column-wrap-media fl-wrap">
                            <div class="pr-bg pr-bg-white"></div>
                            <img src="{{url('/Uploads/services/'.$locale.'/'. $item->image)}}"  class="respimg" alt="">
                            <!-- <div class="cont-det-wrap dark-bg">
                                <div class="pr-bg pr-bg-white"></div>
                                <ul>
                                    <li><strong>01.</strong><span>Cras lacinia  : </span> <a href="#">ADIPISCING ELIT</a></li>
                                    <li><strong>02.</strong><span>molestie faucibus:</span> <a href="#">dolor sit ame</a></li>
                                    <li><strong>03.</strong><span> Donec auctor :</span> <a href="#"> Cras lacinia</a></li>
                                </ul>
                            </div> -->
                        </div>
                        <div class="serv-text fl-wrap">
                            <div class="pr-bg pr-bg-white"></div>
                            <div class="row">
                                <div class="col-md-8">
                                    {!! $item->description !!}
                                </div>
                                <!-- <div class="col-md-4">
                                    <div class="serv-price-wrap dark-bg"><span>Price</span>$1250-$3350</div>
                                </div> -->
                            </div>
                        </div>
                    </div>
                    <div class="section-number right_sn">
                        <div class="pr-bg pr-bg-white"></div>
                        <span>0</span>{{$key+1}}.
                    </div>
                </div>
            </section>

            <div class="section-separator"></div>
            @endforeach
            <!--section end-->

            <!--section end-->
            <div class="clearfix"></div>
            <div class="container">
                <div class="order-wrap dark-bg fl-wrap">
                    <div class="pr-bg pr-bg-white"></div>
                    <h4>  @lang('front.Ready_to_order_Your_Project') ? </h4>

                    <a href="{{ route('contactUs.index',App::getLocale()) }}" class="ajax">@lang('front.Get_In_Touch')  <i class="fal fa-envelope"></i></a>
                </div>
            </div>
        </div>
        <!--column-wrap-container end-->
    </div>
    <!--column-wrap end-->
    <div class="limit-box fl-wrap"></div>
</div>
<!--content end -->

@endsection
