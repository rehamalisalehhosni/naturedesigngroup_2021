@extends('layouts.admin')

@section('content')
	<div class="row">
	    <div class="col-lg-12 margin-tb">
	        <div class="pull-left">
	            <h2> Show Our People</h2>
	        </div>
	        <div class="pull-right">
	            <a class="btn btn-primary" href="{{ route('ourPeople.index') }}"> Back</a>
	        </div>
	    </div>
	</div>
	<div class="row">
		<div class="col-xs-12 col-sm-12 col-md-12">
        @php $trans_data = $item->translations( 'en',$item->our_people_id); @endphp
            <div class="form-group">
                <strong>Title:</strong>
                {{ $trans_data->title }}
                <br>
                <strong>Name:</strong>
                {{ $trans_data->name }}																
            </div>
        </div>

	</div>
@endsection
