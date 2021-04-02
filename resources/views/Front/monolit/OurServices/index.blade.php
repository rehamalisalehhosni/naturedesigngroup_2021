@extends('layouts.defaultPage')
@section('content')
<?php $locale = App::getLocale();?>
<!-- Page title -->
<div class="dynamic-title">@lang('front.services')</div>
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
                        <h2>  <strong>{{$banner[0]->title}}</strong></h2>
                    @endif
                    </div>
                    <div class="col-md-6">
                        <ul class="creat-list">
                            <li><a href="{{route('index',App::getLocale())}}"> @lang('front.home')</a></li>
                            <li><a href="{{route('ourServices.index',App::getLocale())}}"> @lang('front.services')</a></li>
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
         @if(isset($banner[0]))    
            {!! $banner[0]->description !!}
        @endif
            <div class="services-holder">
                @foreach($services as $key=>$item)
                <a class="serv-item" href="#ser{{$key}}">
                    <div class="serv-item-inner">
                        <img  src="{{url('/Uploads/services/'.$locale.'/'. $item->image)}}"   alt="">
                        <div class="ser-title">
                            <h3>{{$item->title}}</h3>
                        </div>
                    </div>
                </a>
                @endforeach

            </div>
            <div class="row">
                <div class="col-md-6">
                    <!-- serv-post  -->
                    <div class="serv-post">
                        <!-- 1 -->
                        @foreach($services as $key=>$item)
                        <div id="ser{{$key}}" class="serv-details">
                            {!! $item->description !!}
                        </div>
                        @endforeach
                    </div>
                    <!-- serv-post end-->
                </div>
                <div class="col-md-6"></div>
            </div>
        </div>
    </section>
</div>
<!-- content end -->


@endsection
