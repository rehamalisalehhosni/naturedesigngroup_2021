@extends('layouts.theside')
@section('content')
<?php $locale = App::getLocale();?>
<!-- nav-holder end -->
<!--Content -->
<div class="content full-height hidden-item ">

       <!-- Hero video   -->
    <div class="media-container">
        <div class="video-mask"></div>
        <div class="video-holder">
            <!--=============== add you video id  in data-vim=""  ===============-->
           
            <div  class="background-vimeo" data-vim="34741214"> </div>
            <div class="mob-bg bg" data-bg="http://naturedesigngroup.com/web_test/public/Uploads/pages/en/11555445907.jpg"></div>
            
            
                             
        </div>
        <div class="overlay"></div>
        <div class="sec-lines"></div>
    </div>
    <!-- Hero video   end -->
    
    
</div>
<!-- content  end -->
<!-- share-wrapper-->
<div class="share-wrapper">
  <div class="close-share-btn"><i class="fal fa-long-arrow-left"></i> @lang('front.Close') </div>
  <div class="share-container fl-wrap  isShare"></div>
</div>
<!-- share-wrapper  end -->



@endsection
