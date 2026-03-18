@extends('admin.layouts.main')
@section('title')
    <title>Đánh giá sản phẩm "{{$product->name}}"</title>
@endsection
@section('content')
<div class="container">
  
  <div class="card card-custom gutter-b">
    <div class="card-header flex-wrap py-3">
      <div class="m-portlet__head">
        <div class="m-portlet__head-caption">
          <div class="m-portlet__head-title">
            <span class="m-portlet__head-icon m--hide">
              <i class="la la-gear"></i>
            </span>
            <h3 class="m-portlet__head-text">
              Đánh giá sản phẩm "{{$product->name}}"
            </h3>
          </div>
        </div>
      </div>
    </div>
    <div class="card-body">
      <!--begin: Datatable-->
      <div id="kt_datatable_wrapper" class="dataTables_wrapper dt-bootstrap4 no-footer">
        <div class="row">
          <div class="col-sm-12">
            <table class="table table-bordered table-checkable dataTable no-footer dtr-inline collapsed" id="kt_datatable" role="grid" aria-describedby="kt_datatable_info">
              <thead>
                <tr role="row">
                  <th class="sorting sorting_desc" tabindex="0" aria-controls="kt_datatable">#</th>
                  <th class="sorting" tabindex="0" aria-controls="kt_datatable"  >Tên chuẩn đầu ra</th>                  
                  <th class="sorting text-center" tabindex="0" aria-controls="kt_datatable" >Đánh giá</th>
                </tr>
              </thead>
              <tbody id="list-content">
                @foreach ($attributes as $attr)
                  <tr>
                    <td>{{$loop->iteration}}</td>  
                    <td>{{$attr->name}}</td>  
                    <td>
                      <div class="form-group">
                        <select onchange="saveAttrScore(this, {{$product->id}}, {{$attr->id}})" class="form-control">
                          @foreach (config('custom.PRODUCT_ATTR_STATUS') as $item)
                            <option @if ($attr->getProductAttrScore($product->id) == $item['key']) selected @endif value="{{$item['key']}}">{{$item['name']}}</option>    
                          @endforeach
                        </select>
                      </div>
                    </td>
                  </tr>    
                @endforeach
              </tbody>
            </table>
          </div>
        </div>
      </div>
      <!--end: Datatable-->
    </div>
  </div>
</div>
@endsection
@section('page-script')
<link href="{{asset('admin_assets')}}/vendors/custom/jquery-toast/jquery.toast.min.css" rel="stylesheet" type="text/css" />
<script src="{{asset('admin_assets')}}/vendors/custom/jquery-toast/jquery.toast.min.js" type="text/javascript"></script>
  <script>
    function saveAttrScore(e, productId, attrId){
      console.log($(e).val(), productId, attrId);
      const updateEvaluateUrl = `{{route('preview.evaluate')}}`;
      $.ajax({
        url: updateEvaluateUrl,
        method: 'post',
        dataType: 'json',
        data: {
          _token: `{{csrf_token()}}`,
          score: $(e).val(),
          product_id: productId,
          attr_id: attrId
        },
        success: function(resp){
          if(resp.success){
            openToast('success', 'Cập nhật thành công');
          }else{
            openToast('error', resp.msg);
          }
        }
      })
    }
    function openToast(state, msg){
      $.toast({
          heading: state,
          text: msg,
          showHideTransition: 'slide',
          icon: state,
          position: 'bottom-right'
      })
    }
  </script>
@endsection

