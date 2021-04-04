@extends('layouts.admin')

@section('content')
<div class="row">
	<div class="col-lg-12 margin-tb">
		<div class="pull-left">
			<h2>OurPeople CRUD</h2>
		</div>
		<div class="pull-right">
			<a class="btn btn-success" href="{{ route('ourPeople.create') }}"> Create New OurPeople</a>
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
		<th>Name</th>
		<th>Title</th>
		<th>Sort</th>
		<th>Active</th>
		<th width="280px">Action</th>
	</tr>
	@foreach ($ourPeoples as $key => $item)
	@php $trans_data = $item->translations( 'en',$item->our_people_id); @endphp
	<tr>
		<td>{{ ++$i }}</td>
		<td>{{ $trans_data->name }}</td>
		<td>{{ $trans_data->title }}</td>
		<td>{{ $item->sort }}</td>
		<td>{{ $item->active }}</td>
		<td>
			<a class="btn btn-info" href="{{ route('ourPeople.show',$item->our_people_id) }}">Show</a>
			<a class="btn btn-primary" href="{{ route('ourPeople.edit',$item->our_people_id) }}">Edit</a>
			{!! Form::open(['method' => 'DELETE','route' => ['ourPeople.destroy', $item->our_people_id],'style'=>'display:inline']) !!}
			{!! Form::submit('Delete', ['class' => 'btn btn-danger']) !!}
			{!! Form::close() !!}
		</td>
	</tr>
	@endforeach
</table>
{!! $ourPeoples->render() !!}
@endsection
