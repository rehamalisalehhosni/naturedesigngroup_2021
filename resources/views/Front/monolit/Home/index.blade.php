@extends('layouts.defaultPage')
@section('content')
<?php $locale = App::getLocale();?>
<!-- Page title -->
<!-- <div class="dynamic-title">Home Image</div> -->
<!-- Page title  end-->
<!-- content  -->
<div class="content full-height no-bg-con">

  <!-- Hero section   -->
  <div class="hero-wrap">


    <!-- hero-wrap-image-slider  -->
    <div class="hero-wrap-image-slider-holder">

      <div class="overlay"></div>
      <!-- hero-wrap-image-slider  -->
      <div class="hero-wrap-image-slider">
        @foreach ($slider as $slide)

        <div class="item">
          <div class="bg"  data-bg="{{url('/Uploads/slider/'.$locale.'/'. $slide->image)}}" data-top-bottom="transform: translateY(300px);" data-bottom-top="transform: translateY(-300px);"></div>
        </div>
        @endforeach

      </div>



    </div>
    <!-- hero-wrap-image-slider  end -->




    <div class="hero-wrap-text-slider-holder">
      <div class="hero-wrap-text-slider">
        <!-- 1  -->
        @foreach ($slider as $key=>$slide)


        <div class="item">
          <div class="hero-wrap-item center-item">
            <h2>{{$slide->title}}</h2>
            <a href="#sec{{$key}}" class="hero-link custom-scroll-link">@lanf('front.Start_exploer')</a>
          </div>
        </div>
        @endforeach


      </div>
      <!-- hero-wrap-text-slider  end -->
      <!--  navigation -->
      <div class="customNavigation fhsln">
        <a class="prev-slide transition"><i class="fa fa-angle-left"></i></a>
        <a class="next-slide transition"><i class="fa fa-angle-right"></i></a>
      </div>
      <!--  navigation end-->
    </div>
    <!-- hero-wrap-image-text-holder  end -->








  </div>
  <!-- Hero section   end -->
</div>
<!-- content end -->
<!-- content  -->
<div class="content">
  <section id="sec1">
    <!-- section number   -->
    <div class="sect-subtitle right-align-dec" data-top-bottom="transform: translateY(200px);" data-bottom-top="transform: translateY(-200px);"><span>01</span></div>
    <!-- section number  end  -->
    <!--  container  -->
    <div class="container">
      <div class="row">
        <div class="col-md-4">
          <!-- single slider  -->
          <div class="parallax-box slider-box ">
            <div class="single-slider-holder">
              <div class="single-slider">
                <!-- 1 -->
                <div class="item">
                  @if(isset($banner[0]))
                  <img src="{{url('/Uploads/pages/'.$locale.'/'. $banner[0]->image)}}" alt="">
                  @endif
                </div>
              </div>
              <!--<div class="customNavigation ssn">-->
              <!--  <a class="prev-slide transition"><i class="fa fa-angle-left"></i></a>-->
              <!--  <a class="next-slide transition"><i class="fa fa-angle-right"></i></a>-->
              <!--</div>-->
            </div>
            <!-- single slider  end -->
          </div>
        </div>
        <div class="col-md-8">
          <!-- section title  -->
          @if(isset($aboutus[0]))

          <h2 class="section-title">Welcome we <strong>   {{$aboutus[0]->title}}</strong></h2>
          @endif

          <!-- section title  end -->
          @if(isset($aboutus[0]))
          {!! $aboutus[0]->description !!}
          @endif
          <!-- <div class="process-box">
          <h3>Our process</h3>
          <ul class="creat-list">
          <li><a href="#">Idea & Start</a></li>
          <li><a href="#">Design & Crate</a></li>
          <li><a href="#">Build & Finish</a></li>
        </ul>
      </div> -->
      <!--<a href="#" class="btn anim-button fl-l"><span>@lang('front.View_Our_portfolio')</span><i class="fa fa-long-arrow-right"></i></a>-->
    </div>
  </div>
</div>
<!--  container end  -->
</section>
</div>
<!-- content  end  -->

<!-- content   -->
<div class="content dark-bg">
  <!-- section number   -->
  <div class="sect-subtitle left-align-dec" data-top-bottom="transform: translateY(-200px);" data-bottom-top="transform: translateY(200px);"><span>02</span></div>
  <!-- section number   end -->
  <!-- parallax image  -->

  <div class="parallax-inner">
    <div class="bg" data-bg="@if(isset($statistic)){{url('/Uploads/pages/'.$locale.'/'. $statistic->image)}}@endif" data-top-bottom="transform: translateY(300px);" data-bottom-top="transform: translateY(-300px);"></div>
    <div class="overlay"></div>
  </div>
  <!-- parallax image  end -->
  <section>

    <!--  container  -->
    <div class="container">
      <div class="row">
        <div class="col-md-4">
          <h2 class="section-title">@lang('front.Some_Interisting') <strong>@lang('front.Facts')  </strong></h2>
        </div>
        <div class="col-md-8">
          <p>{!! $statistic->description !!}</p>
        </div>
      </div>
      <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-8">
          <!-- facts   -->
          <div class="inline-facts-holder row">
            <!-- 1 -->
            @foreach($statisticData as $data)
            <div class="inline-facts col-md-4 ">
              <div class="milestone-counter">
                <div class="stats animaper">
                  <div class="num" data-content="{{$data->number}}" data-num="{{$data->number}}">0</div>
                </div>
              </div>
              <h6>{{$data->title}}</h6>
            </div>
            @endforeach
            <!-- 3 -->

            <!-- facts   end -->
          </div>
        </div>
      </div>
      <!--  container  end -->
    </section>
  </div>
  <!-- content  end  -->
  <!-- content   -->
  <div class="content">
    <section>
      <!-- section number     -->
      <div class="sect-subtitle right-align-dec" data-top-bottom="transform: translateY(200px);" data-bottom-top="transform: translateY(-200px);"><span>03</span></div>
      <!-- section number   end -->
      <!--  container  -->
      <div class="container">
        <!--  section title -->
        <div class="row">
          <div class="col-md-12">
            <h2 class="section-title algn-right dec-title"><span>Our featured  <strong> Works</strong></span></h2>
          </div>
        </div>
        <!--  section title end  -->
        <!--  Parallax items  -->
        <!-- 1 -->
        @foreach($ProjectsTranslation as $project)
        <div class="row project-home">
          <div class="col-md-7">
            <div class="parallax-item left-direction">
              <div class="paralax-media">
                {!! $project->description !!}
                <div class="paralax-wrap">
                  <img src="{{url('/Uploads/projects/'.$locale.'/'. $project->main_image)}}" class="respimg" alt="">
                </div>
              </div>
              <div class="parallax-deck" data-top-bottom="transform: translateY(-200px);" data-bottom-top="transform: translateY(200px);">
                <div class="parallax-deck-item">
                  <h3> <strong>{{$project->title}}</strong></h3>
                  <a href="{{route('portfolio.details',[App::getLocale(),'pro_id'=>$project->projects_translations_id])}}" class="btn anim-button fl-l"><span>@lang('front.View_Project')</span><i class="fa fa-long-arrow-right"></i></a>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-5"></div>
        </div>
        @endforeach

        <!-- custom-link-holder  end -->
      </div>
      <!--  container  end -->
    </section>
  </div>
  <!-- content end -->

</section>
@endsection
