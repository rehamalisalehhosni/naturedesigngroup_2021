@extends('layouts.defaultPage')
@section('content')
<?php $locale = App::getLocale();?>


<!-- Page title -->
<div class="dynamic-title">{{$projectsDetails->title}}</div>
<!-- Page title  end-->



 <!-- content  -->
                    <div class="content hor-content full-height pad-con no-bg-con no-footer">
                        <!-- portfolio  Images  -->
                        <div class="control-panel">
                            <div class="container">
                                <div class="caption"></div>
                                <a href="#" class=" btn anim-button   flat-btn   transition    show-hid-sidebar"><span>More information</span><i class="fa fa-eye"></i></a>
                                <span     class="show-thumbs vis-con-panel vis-t" data-textshow="Show thumbnails" data-texthide="Hide thumbnails"></span>
                            </div>
                        </div>
                        <div class="resize-carousel-holder lightgallery ogm smp">
                            <div id="gallery_horizontal" class="gallery_horizontal flow-gallery" data-cen="1">
                               
                               
                                @foreach($projectsImages as $img)
                                          
                                                <!-- gallery Item-->
                                    <div class="horizontal_item" data-phname="{{$projectsDetails->title}}" data-phdesc"@lang('front.Project_details')">
                                        <img src="{{url('/Uploads/projects/project_images/'.$img->image)}}" alt="">
                                        <a data-src={{url('/Uploads/projects/project_images/'.$img->image)}} class="popup-image slider-zoom">
                                        <i class="fa fa-expand"></i> 
                                        </a>
                                    </div>
                                    <!-- gallery item end-->
                                    
               
                                @endforeach
                
                               
                              
                                
                                
                                             
                            </div>
                            <!--  navigation -->
                            <div class="customNavigation fhsln">
                                <a class="prev-slide transition"><i class="fa fa-angle-left"></i></a>
                                <a class="next-slide transition"><i class="fa fa-angle-right"></i></a>
                            </div>
                            <!--  navigation end-->
                        </div>
                        <!-- portfolio  Images  end-->
                        <!-- Hidden sidebar-->
                        <div class="sb-overlay"></div>
                        <div class="hid-sidebar">
                            <div class="container small-container">
                                <div class="sidebar-wrap">
                                    <div class="sb-bg"></div>
                                    <div class="sb-inner">
                                        <div class="close-sidebar"></div>
                                        <h2 class="section-title">Portfolio Project <strong> {{$projectsDetails->title}} </strong></h2>
                                        <div class="separator"></div>
                                        <div class="clearfix"></div>
                                         <div> 
                                          {!! $projectsDetails->description !!}
                                          </div>
                                       
                                        <!--<a href="#" class=" btn anim-button   flat-btn   transition  fl-l" target="_blank"><span>View Project</span><i class="fa fa-eye"></i></a>-->
                                        <div class="content-nav">
                                            <ul>
                                                @if($next)
                                                <li><a href="{{route('portfolio.details',[App::getLocale(),'pro_id'=>$next->projects_translations_id])}}" class=" text-link">@lang('front.next_project')</a></li>
                                                @endif
                                                @if($prev)
                                                <li><a href="{{route('portfolio.details',[App::getLocale(),'pro_id'=>$prev->projects_translations_id])}}" class=" text-link">@lang('front.prev_project')</a></li>
                                                @endif
                                    
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- sidebar end -->
                    </div>
                    <!-- content end -->
                    <!-- share  -->
                    <div class="share-inner">
                        <div class="share-container  isShare"  data-share="['facebook','googleplus','twitter','linkedin']"></div>
                        <div class="close-share"></div>
                    </div>
                    <!-- share end -->
                    
                    
                    
                    
                    

@endsection
