@extends('layouts.admin')

@section('content')
	<div class="row">
	    <div class="col-lg-12 margin-tb">
	        <div class="pull-left">
	            <h2> Show Offices</h2>
	        </div>
	        <div class="pull-right">
	            <a class="btn btn-primary" href="{{ route('offices.index') }}"> Back</a>
	        </div>
	    </div>
	</div>
	<div class="row">
		<div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                <strong>Title:</strong>
                {{ $item->title }}
                <strong>Address:</strong>
                {{ $item->address }}
                <strong>Phone:</strong>
                {{ $item->phone }}
                <strong>Fax:</strong>
                {{ $item->fax }}
                <strong>E-mail:</strong>
                {{ $item->email }}																
            </div>
        </div>

	</div>
@endsection
