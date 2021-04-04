@if(isset($data))
{{ Form::hidden('our_people_translations_id_'.$locale, $trans_data?$trans_data->our_people_translations_id:'') }}
@endif

<?php
if(isset($trans_data)&&$trans_data->name){
  $name=$trans_data->name;
}else{
  $name=null;
}
?>
<div class="col-xs-12 col-sm-12 col-md-12">
  <div class="form-group">
    <strong>Name:</strong>
    {!! Form::text('name_'.$locale, $name, array('placeholder' => 'Name','class' => 'form-control')) !!}
  </div>
</div>

<div class="col-xs-12 col-sm-12 col-md-12">
  <div class="form-group">
    <strong>Title:</strong>
    <?php
    if(isset($trans_data)&&$trans_data->title){
      $title=$trans_data->title;
    }else{
      $title=null;
    }
    ?>
    {!! Form::text('title_'.$locale, $title , array('placeholder' => 'Title','class' => 'form-control')) !!}
  </div>
</div>


@if (isset($data) && $data->image)
<div class="col-xs-12 col-sm-12 col-md-12">
  <div class="form-group">
    <img src="{{url('/Uploads/our_people/'.$locale.'/'.$data->image)}}" alt="" class="img-thumbnail img_view" />
  </div>
</div>
@endif
<div class="col-xs-12 col-sm-12 col-md-12">
  <div class="form-group">
    <strong> Image :</strong>
    {!! Form::file('image_'.$locale, null, array('placeholder' => 'Image','class' => 'form-control')) !!}
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
if(isset($data)&&$data->active){
  $active=$data->active;
}else{
  $active=null;
}
?>
<div class="col-xs-12 col-sm-12 col-md-12">
  <div class="form-group ">
    <strong>active:</strong>
    {!! Form::text('active_'.$locale, $active, array('placeholder' => 'active','class' => 'form-control  ')) !!}
  </div>
</div>
