@extends('admin.layouts.main')
@section('content')
<div class="m-portlet m-portlet--tab" style="width:100%;">
	<div class="m-portlet__head">
		<div class="m-portlet__head-caption">
			<div class="m-portlet__head-title">
				<span class="m-portlet__head-icon m--hide">
					<i class="la la-gear"></i>
				</span>
				<h3 class="m-portlet__head-text">
					Thêm Môn Học
				</h3>
			</div>
		</div>
	</div>

	<!--begin::Form-->
	<form class="m-form m-form--fit m-form--label-align-right" action="" method="POST" enctype="multipart/form-data">
        @csrf
		<div class="m-portlet__body">
			<div class="row">
				<div class="col-md-6">
					<h3 class="card-title" style="margin-left: 25px;">
						Thông tin cơ bản
					</h3>
					@if(session()->has('message'))
					<div class="alert alert-success">
						{{ session()->get('message') }}
					</div>
					@endif
					@if(session()->has('error'))
						<div class="alert alert-danger">
							{{ session()->get('error') }}
						</div>
					@endif
					<div class="form-group1 m-form__group">
					
						<div class="form-group">
							<label for="name">Tên Môn</label>
							<input type="text" id="name"  class="form-control @error('name') is-invalid @enderror" value="{{old('name')}}" name="name" >
							@error('name')
								<div class=" text-danger">{{ $message }}</div>
							@enderror
						</div>
						<div class="form-group">
							<label for="code">Mã Môn</label>
							<input type="text" id="code"  class="form-control @error('code') is-invalid @enderror" value="{{old('code')}}" name="code" >
							@error('code')
								<div class=" text-danger">{{ $message }}</div>
							@enderror
						</div>
						<div class="form-group">
							<label for="major_id">Bộ Môn</label>
							<select name="major_id" id="major_id" class="form-control">
								@foreach ($major as $m)
								<option  value="{{$m->id}}">{{$m->name}}</option>
								@endforeach
							</select>
							<span class="form-message"></span>
						</div>
					</div>
				</div>
				<div class="col-md-6 pr-5">
					<h3 class="card-title">
						Chuẩn đầu ra
						<button onclick="addAttribute()" type="button" class="btn btn-success btn-sm">
							<i class="fa fa-plus"></i>
						</button>
					</h3>
					<div id="outcome_list">
						<div class="input-group mb-3">
							<input type="text" class="form-control @error('attr.0') is-invalid @enderror" value="{{old('attr.0')}}" placeholder="VD: G1.1 Tổng quan PHP,..." name="attr[]">
							<button onclick="removeAttr(this)" class="btn btn-sm btn-danger" type="button">
								<i class="fa fa-trash"></i>
							</button>							
						</div>
						@error('attr.0')
							<div class="text-danger">{{$message}}</div>
						@enderror
						@if(old('total_attr', 1) > 1)
							@for($i = 1; $i < old('total_attr', 1); $i++)
							@php
								$attrNumber = "attr.$i";
							@endphp
							<div class="input-group mb-3">
								<input type="text" class="form-control @error('attr.' . $i) is-invalid @enderror" value="{{old($attrNumber)}}" placeholder="VD: G1.1 Tổng quan PHP,..." name="attr[]">
								<button onclick="removeAttr(this)" class="btn btn-sm btn-danger" type="button">
									<i class="fa fa-trash"></i>
								</button>
							</div>
							@error('attr.' . $i)
								<div class="text-danger">{{$message}}</div>
							@enderror
							@endfor
						@endif
					</div>
					<input type="hidden" name="total_attr" value="{{old('total_attr', 1)}}">
				</div>
			</div>
		</div>
		<div class="m-portlet__foot m-portlet__foot--fit">
			<div class="m-form__actions">
				<button type="submit" class="btn-add btn btn-primary" id="form-upload">
                    <i class="fas fa-save"></i>
                    Thêm Môn
                </button>
			</div>
		</div>
	</form>
	

	<!--end::Form-->
</div>
@endsection
@section('page-script')
	<script>
		function addAttribute(){
			const content = `
					<div class="input-group mb-3">
						<input type="text" class="form-control" placeholder="VD: G1.1 Tổng quan PHP,..." name="attr[]">
						<button onclick="removeAttr(this)" class="btn btn-sm btn-danger" type="button">
							<i class="fa fa-trash"></i>
						</button>
					</div>
			`;
			let total_attr = parseInt($('[name="total_attr"]').val());
			total_attr++;
			$('[name="total_attr"]').val(total_attr);
			$('#outcome_list').append(content);
		}

		function removeAttr(e){
			if($(`[name="attr[]"]`).length > 1){
				$(e).parent().remove();
				let total_attr = parseInt($('[name="total_attr"]').val());
				total_attr--;
				$('[name="total_attr"]').val(total_attr);
			}
			
		}
	</script>
@endsection