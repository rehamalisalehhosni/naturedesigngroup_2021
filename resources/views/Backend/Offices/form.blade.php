@if(isset($data))
{{ Form::hidden('offices_translations_id_'.$locale, $trans_data?$trans_data->offices_translations_id:'') }}
@endif
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


<?php
if(isset($trans_data)&&$trans_data->address){
  $address=$trans_data->address;
}else{
  $address=null;
}
?>
<div class="col-xs-12 col-sm-12 col-md-12">
  <div class="form-group">
    <strong>address:</strong>
    {!! Form::textarea('address_'.$locale, $address, array('placeholder' => 'Address','class' => 'form-control tinymce','style'=>'height:100px')) !!}
  </div>
</div>

<?php
if(isset($data)&&$data->phone){
  $phone=$data->phone;
}else{
  $phone=null;
}
?>
<div class="col-xs-12 col-sm-12 col-md-12">
  <div class="form-group ">
    <strong>phone:</strong>
    {!! Form::text('phone_'.$locale, $phone, array('placeholder' => 'phone','class' => 'form-control  ')) !!}
  </div>
</div>

<?php
if(isset($data)&&$data->fax){
  $fax=$data->fax;
}else{
  $fax=null;
}
?>
<div class="col-xs-12 col-sm-12 col-md-12">
  <div class="form-group ">
    <strong>fax:</strong>
    {!! Form::text('fax_'.$locale, $fax, array('placeholder' => 'fax','class' => 'form-control  ')) !!}
  </div>
</div>

<?php
if(isset($data)&&$data->email){
  $email=$data->email;
}else{
  $email=null;
}
?>
<div class="col-xs-12 col-sm-12 col-md-12">
  <div class="form-group ">
    <strong>email:</strong>
    {!! Form::text('email_'.$locale, $email, array('placeholder' => 'email','class' => 'form-control  ')) !!}
  </div>
</div>

<?php
if(isset($data)&&$data->lat){
  $lat=$data->lat;
}else{
  $lat=null;
}
?>
<div class="col-xs-12 col-sm-12 col-md-12">
  <div class="form-group ">
    <strong>lat:</strong>
    {!! Form::text('lat_'.$locale, $lat, array('placeholder' => 'lat','class' => 'form-control  ')) !!}
  </div>
</div>

<?php
if(isset($data)&&$data->lng){
  $lng=$data->lng;
}else{
  $lng=null;
}
?>
<div class="col-xs-12 col-sm-12 col-md-12">
  <div class="form-group ">
    <strong>lng:</strong>
    {!! Form::text('lng_'.$locale, $lng, array('placeholder' => 'lng','class' => 'form-control  ')) !!}
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