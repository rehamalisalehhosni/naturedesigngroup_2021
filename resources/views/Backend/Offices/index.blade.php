@extends('layouts.admin')

@section('content')
<div class="row">
	<div class="col-lg-12 margin-tb">
		<div class="pull-left">
			<h2>Offices CRUD</h2>
		</div>
		<div class="pull-right">
			<a class="btn btn-success" href="{{ route('offices.create') }}"> Create New Office</a>
		</div>
	</div>
</div>
@if ($message = Session::get('success'))
<div class="alert alert-success">
	<p>{{ $message }}</p>
</div>
@endif
<table class="table table-bordered">
	<tr>
		<th>No</th>
		<th>Title</th>
		<th>E-mail</th>
		<th>Sort</th>
		<th>Active</th>
		<th width="280px">Action</th>
	</tr>
	@foreach ($offices as $key => $item)
	<tr>
		<td>{{ ++$i }}</td>
		<td>{{ $item->title }}</td>
		<td>{{ $item->email }}</td>
		<td>{{ $item->sort }}</td>
		<td>{{ $item->active }}</td>
		<td>
			<a class="btn btn-info" href="{{ route('offices.show',$item->offices_id) }}">Show</a>
			<a class="btn btn-primary" href="{{ route('offices.edit',$item->offices_id) }}">Edit</a>
			{!! Form::open(['method' => 'DELETE','route' => ['offices.destroy', $item->offices_id],'style'=>'display:inline']) !!}
			{!! Form::submit('Delete', ['class' => 'btn btn-danger']) !!}
			{!! Form::close() !!}
		</td>
	</tr>
	@endforeach
</table>
{!! $offices->render() !!}
@endsection
