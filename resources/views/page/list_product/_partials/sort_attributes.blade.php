<div class="attributes" data_attributes="{{json_encode($attributes)}}">
    @if(count($attributes) == 0)
    <div class="product__filter--left__sub-item">
        <select disabled>
            <option value="">Vui lòng lựa chọn môn học</option>
        </select>
    </div>
    @else
    @foreach ($attributes as $key => $attribute)
    <div class="product__filter--left__sub-item">
        <label for="">{{$attribute->name}}</label>
        <select name="" class="sort_product_select" id="sort_by_product_evaluation-{{$attribute->id}}" data_sort="evaluation-{{$attribute->id}}">
            <option value="">-- Tất cả đánh giá ---</option>
            <option value="{{$attribute->id}}-1">Xuất sắc</option>
            <option value="{{$attribute->id}}-2">Trung bình</option>
            <option value="{{$attribute->id}}-3">Không đạt</option>
        </select>
    </div>
    @endforeach
    @endif
</div>
