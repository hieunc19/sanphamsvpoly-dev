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
					Sửa Thông Tin Môn Học
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
							<input type="text" id="name"  class="form-control @error('name') is-invalid @enderror" name="name" value="{{$subject->name}}" >
							@error('name')
								<div class="alert text-danger">{{ $message }}</div>
							@enderror
						</div>
						<div class="form-group">
							<label for="code">Mã Môn</label>
							<input type="text" id="code"  class="form-control @error('code') is-invalid @enderror" name="code" value="{{$subject->code}}">
							@error('code')
								<div class="alert text-danger">{{ $message }}</div>
							@enderror
						</div>
						<div class="form-group">
							<label for="major_id">Bộ Môn</label>
							<select name="major_id" id="major_id" class="form-control">
								@foreach ($major as $m)
										<option @if ($m->id==$subject->major_id)
											selected
										@endif value="{{$m->id}}">{{$m->name}}</option>
										@endforeach
							</select>
							<span class="form-message"></span>
						</div>
					</div>
				</div>
				<div class="col-md-6 pr-5">
					<h3 class="card-title">
						Chuẩn đầu ra
					</h3>
					<div id="outcome_list">
						<table class="table table-stripped">
							<thead>
								<th>#</th>
								<th>Chuẩn đầu ra</th>
								<th width="100">
									<button onclick="openCreateAttribute()" type="button" class="btn btn-sm btn-success">
										<i class="fa fa-plus"></i>
									</button>
								</th>
							</thead>
							<tbody>
								@foreach ($subject->attributes as $item)
									<tr row_id="{{$item->id}}">
										<td>{{$loop->iteration}}</td>
										<td>{{$item->name}}</td>
										<td>
											<button onclick="openEditAttribute({{$item->id}})" type="button" class="btn btn-info btn-sm">
												<i class="fas fa-pen"></i>
											</button>
											<button onclick="removeAttr({{$item->id}})" type="button" class="btn btn-danger btn-sm">
												<i class="fas fa-trash"></i>
											</button>
										</td>
									</tr>
								@endforeach
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<div class="m-portlet__foot m-portlet__foot--fit">
			<div class="m-form__actions">
				<button type="submit" class="btn-add btn btn-primary" id="form-upload">
                    <i class="fas fa-save"></i>
                    Cập Nhật
                </button>
			</div>
		</div>
	</form>
	

	<!--end::Form-->
</div>
<!-- Modal -->
<div class="modal fade" id="attribute_form" tabindex="-1">
	<div class="modal-dialog">
	  <div class="modal-content">
		<div class="modal-header">
		  	<h5 class="modal-title">Chuẩn đầu ra của môn học</h5>
		  	<span style="cursor: pointer;" onclick="attributeModal.hide()">
				<i class="fas fa-times"></i>
			</span>			
		</div>
		<div class="modal-body">
			<form id="attr_form">
				<div class="form-group">
					<label for="">Tên chuẩn đầu ra</label>
					<input type="text" name="attr_name" class="form-control">
				</div>
				<input type="hidden" value="" name="attr_id">
			</form>
		</div>
		<div class="modal-footer">
		  <button type="button" onclick="attributeModal.hide()" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
		  <button type="button" onclick="submitAttribute()" class="btn btn-primary">Save changes</button>
		</div>
	  </div>
	</div>
</div>
        
@endsection

@section('page-script')
	<script>
		const subject_id = {{$subject->id}};
		const attributeModal = new bootstrap.Modal(document.getElementById('attribute_form'), {})

		$('#attr_form').validate({
			rules: {
				attr_name: {
					required: true,
					remote: {
						url: `{{route('subject_attribute.check_name')}}`,
						type: "post",
						dataType: 'json',
						data: {
							_token: function(){
								return `{{csrf_token()}}`
							},
							name: function() {
								return $(`[name="attr_name"]`).val();
							},
							id: function(){
								return $(`[name="attr_id"]`).val();
							},
							subject_id: function(){
								return {{$subject->id}}
							}
						},
						dataFilter: function(resp){
							var json = JSON.parse(resp);
							return json.success == 0;
						}
					}
				},
			},
			messages: {
				attr_name: {
					required: 'Nhập chuẩn đầu ra',
					remote: "Chuẩn đầu ra bị trùng"					
				},
			}
		});

		function openCreateAttribute(){
			$(`[name="attr_name"]`).val('');
			$(`[name="attr_id"]`).val('');
			attributeModal.show();
		}

		function openEditAttribute(attrId){
			const getAttrUrl = `{{route('subject_attribute.find_by_id')}}`;
			$.ajax({
				url: getAttrUrl,
				method: 'get',
				data: {
					id: attrId
				},
				dataType: 'json',
				success: function(resp){
					console.log(resp);
					if(resp.success){
						$(`[name="attr_name"]`).val(resp.data.name);
						$(`[name="attr_id"]`).val(resp.data.id);
						attributeModal.show();
					}else{
						alert(resp.msg);
					}
				}
			})
		}

		function submitAttribute(){
			const saveAttributeUrl = `{{route('subject_attribute.save')}}`;
			if($('#attr_form').valid()){
				$.ajax({
					url: saveAttributeUrl,
					method: 'post',
					dataType: 'json',
					data: {
						_token: `{{csrf_token()}}`,
						id: $(`[name="attr_id"]`).val(),
						name: $(`[name="attr_name"]`).val(),
						subject_id: {{$subject->id}}
					},
					success: function(resp){
						if(resp.success){
							if($(`tr[row_id="${resp.data.id}"]`).length == 0){
								let rowNo = $('tr:last').find('td:first').text().toString();
								if(rowNo === ''){
									rowNo = 0;
								}
								rowNo = parseInt(rowNo) + 1;
								const row = `
										<tr row_id="${resp.data.id}">
											<td>${rowNo}</td>
											<td>${resp.data.name}</td>
											<td>
												<button onclick="openEditAttribute(${resp.data.id})" type="button" class="btn btn-info btn-sm">
													<i class="fas fa-pen"></i>
												</button>
												<button onclick="removeAttr(${resp.data.id})" type="button" class="btn btn-danger btn-sm">
													<i class="fas fa-trash"></i>
												</button>
											</td>
										</tr>
								`;
								$('tbody').append(row);
							}else{
								$(`tr[row_id="${resp.data.id}"]>td:eq(1)`).text(resp.data.name);
							}
							
							attributeModal.hide();						
						}else{
							attributeModal.hide();
							alert(resp.msg);
						}
					}
				})
			}
		}

		function removeAttr(attrId){
			let decision = confirm("Bạn có đồng ý xóa chuẩn đầu ra này?");
			const removeAttrUrl = `{{route('subject_attribute.remove')}}`;
			if(decision){
				$.ajax({
					url: removeAttrUrl,
					method: 'post',
					dataType: 'json',
					data: {
						_token: `{{csrf_token()}}`,
						id: attrId
					},
					success: function(resp){
						if(resp.success){
							$(`tr[row_id="${resp.data.id}"]`).remove();
						}else{
							alert(resp.msg)
						}
					}
				})
			}
			return;
		}
	</script>
@endsection