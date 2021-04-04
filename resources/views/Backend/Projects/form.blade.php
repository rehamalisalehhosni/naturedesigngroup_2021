@if(isset($data))
  {{ Form::hidden('projects_translations_id_'.$locale, $data->projects_translations_id) }}
@endif
<div class="col-xs-12 col-sm-12 col-md-12">
  <div class="form-group">
    <strong>Title:</strong>
    <?php
    if(isset($data)&&$data->title){
      $title=$data->title;
    }else{
      $title=null;
    }
    ?>
    {!! Form::text('title_'.$locale, $title , array('placeholder' => 'Title','class' => 'form-control')) !!}
  </div>
</div>
<div class="col-xs-12 col-sm-12 col-md-12">
  <div class="form-group">
    <strong>Video:</strong>
    <?php
    if(isset($data)&&$data->video){
      $video=$data->video;
    }else{
      $video=null;
    }
    ?>
    {!! Form::text('video_'.$locale, $video , array('placeholder' => 'Video','class' => 'form-control')) !!}
  </div>
</div>
<div class="col-xs-12 col-sm-12 col-md-12">
  <div class="form-group">
    <strong>Client:</strong>
    <?php
    if(isset($data)&&$data->clients){
      $clients=$data->clients;
    }else{
      $clients=null;
    }
    ?>
    {!! Form::text('clients_'.$locale, $clients , array('placeholder' => 'Client','class' => 'form-control')) !!}
  </div>
</div>
<div class="col-xs-12 col-sm-12 col-md-12">
  <div class="form-group">
    <strong>Status:</strong>
    <?php
    if(isset($data)&&$data->status){
      $status=$data->status;
    }else{
      $status=null;
    }
    ?>
    {!! Form::text('status_'.$locale, $status , array('placeholder' => 'Status','class' => 'form-control')) !!}
  </div>
</div>
<div class="col-xs-12 col-sm-12 col-md-12">
  <div class="form-group">
    <strong>Location:</strong>
    <?php
    if(isset($data)&&$data->location){
      $location=$data->location;
    }else{
      $location=null;
    }
    ?>
    {!! Form::text('location_'.$locale, $location , array('placeholder' => 'Location','class' => 'form-control')) !!}
  </div>
</div>

@if (isset($data) && $data->main_image)
  <div class="col-xs-12 col-sm-12 col-md-12">
    <div class="form-group">
      <img src="{{url('/Uploads/projects/'.$locale.'/'.$data->main_image)}}" alt="" class="img-thumbnail img_view" />
    </div>
  </div>
@endif
<div class="col-xs-12 col-sm-12 col-md-12">
  <div class="form-group">
    <strong> Main Image :</strong>
    {!! Form::file('main_image_'.$locale, null, array('placeholder' => 'Image','class' => 'form-control')) !!}
  </div>
</div>
@if (isset($data) && $data->logo)
  <div class="col-xs-12 col-sm-12 col-md-12">
    <div class="form-group">
      <img src="{{url('/Uploads/projects/logo/'.$locale.'/'.$data->logo)}}" alt="" class="img-thumbnail img_view" />
    </div>
  </div>
@endif
<div class="col-xs-12 col-sm-12 col-md-12">
  <div class="form-group">
    <strong> Logo	 :</strong>
    {!! Form::file('logo_'.$locale, null, array('placeholder' => 'Logo','class' => 'form-control')) !!}
  </div>
</div>
<div class="col-xs-12 col-sm-12 col-md-12">
  <div class="form-group">
    <strong>Logo Title:</strong>
    <?php
    if(isset($data)&&$data->logo_title){
      $logo_title=$data->logo_title;
    }else{
      $logo_title=null;
    }
    ?>
    {!! Form::text('logo_title_'.$locale, $logo_title , array('placeholder' => 'Logo Tile','class' => 'form-control')) !!}
  </div>
</div>
<div class="col-xs-12 col-sm-12 col-md-12">
  <div class="form-group">
    <strong>Logo Sub Title:</strong>
    <?php
    if(isset($data)&&$data->logo_subtitle){
      $logo_subtitle=$data->logo_subtitle;
    }else{
      $logo_subtitle=null;
    }
    ?>
    {!! Form::text('logo_subtitle_'.$locale, $logo_subtitle, array('placeholder' => 'Logo Sub Title','class' => 'form-control')) !!}
  </div>
</div>
<div class="col-xs-12 col-sm-12 col-md-12">
  <div class="form-group">
    <strong>Owner	:</strong>
    <?php
    if(isset($data)&&$data->owner){
      $owner=$data->owner	;
    }else{
      $owner=null;
    }
    ?>
    {!! Form::text('owner_'.$locale, $owner	 , array('placeholder' => 'Owner','class' => 'form-control')) !!}
  </div>
</div>
<div class="col-xs-12 col-sm-12 col-md-12">
  <div class="form-group">
    <strong>Year:</strong>
    <?php
    if(isset($data)&&$data->year){
      $year=$data->year	;
    }else{
      $year=null;
    }
    ?>
    {!! Form::text('year_'.$locale, $year, array('placeholder' => 'Year','class' => 'form-control')) !!}
  </div>
</div>
<div class="col-xs-12 col-sm-12 col-md-12">
  <div class="form-group">
    <strong>Build up:</strong>
    <?php
    if(isset($data)&&$data->build_up){
      $build_up=$data->build_up	;
    }else{
      $build_up=null;
    }
    ?>
    {!! Form::text('build_up_'.$locale, $year	 , array('placeholder' => 'Build up','class' => 'form-control')) !!}
  </div>
</div>
<div class="col-xs-12 col-sm-12 col-md-12">
  <div class="form-group">
    <strong>Area:</strong>
    <?php
    if(isset($data)&&$data->area){
      $area=$data->area	;
    }else{
      $area=null;
    }
    ?>
    {!! Form::text('area_'.$locale, $area	 , array('placeholder' => 'Area','class' => 'form-control')) !!}
  </div>
</div>

<?php
if(isset($data)&&$data->sort){
  $sort=$data->sort;
}else{
  $sort=null;
}
?>

<div class="col-xs-12 col-sm-12 col-md-12">
  <div class="form-group ">
    <strong>Sort:</strong>
    {!! Form::text('sort_'.$locale, $sort, array('placeholder' => 'Sort','class' => 'form-control  ')) !!}
  </div>
</div>

<?php
if(isset($data)&&$data->description){
  $description=$data->description;
}else{
  $description=null;
}
?>
<div class="col-xs-12 col-sm-12 col-md-12">
  <div class="form-group">
    <strong>Description:</strong>
    {!! Form::textarea('description_'.$locale, $description, array('placeholder' => 'Description','class' => 'form-control tinymce','style'=>'height:100px')) !!}
  </div>
</div>

<?php
if(isset($data)&&$data->presentation){
  $presentation=$data->presentation;
}else{
  $presentation=null;
}
?>
<div class="col-xs-12 col-sm-12 col-md-12">
  <div class="form-group">
    <strong>Presentation:</strong>
    {!! Form::textarea('presentation_'.$locale, $presentation, array('placeholder' => 'Description','class' => 'form-control tinymce','style'=>'height:100px')) !!}
  </div>
</div>
<div class="col-xs-12 col-sm-12 col-md-12">
  <div class="form-group">
    <?php
    if(isset($data)&&$data->publish){
      $publish="checked";
    }else{
      $publish=null;
    }
    ?>

    <strong>Publish:</strong>
    {!! Form::checkbox('publish_'.$locale, 1,null, array('checked'=>$publish)) !!}
  </div>
</div>
<div class="col-xs-12 col-sm-12 col-md-12">
  <div class="form-group">
    <?php
    if(isset($data)&&$data->show_home){
      $show_home="checked";
    }else{
      $show_home=null;
    }
    ?>
    <strong>show Home:</strong>
    {!! Form::checkbox('show_home_'.$locale, 1 ,null, array('checked'=>$show_home)) !!}
  </div>
</div>
<div class="col-xs-12 col-sm-12 col-md-12">
  <div class="form-group">
    <?php
    if(isset($data)&&$data->gallary){
      $gallary="checked";
    }else{
      $gallary=null;
    }
    ?>
    <strong>show Gallary:</strong>
    {!! Form::checkbox('gallary_'.$locale, 1 ,null, array('checked'=>$gallary)) !!}
  </div>
</div>
<div class="col-xs-12 col-sm-12 col-md-12">
  <div class="form-group">
    <?php
    if(isset($data)&&$data->projects_category_id){
      $projects_category_id=$data->projects_category_id;
    }else{
      $projects_category_id=null;
    }
    ?>
    <strong> Projects Category :</strong>
    {!! Form::select('projects_category_id_'.$locale, $projectsCategory,$projects_category_id,['class' => 'form-control']) !!}
  </div>
</div>
