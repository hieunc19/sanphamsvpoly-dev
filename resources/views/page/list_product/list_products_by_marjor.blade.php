@extends('layouts.main')
@section('title')
<title>{{$major_name}}</title>
@endsection
@section('style-page')
@endsection
@section('content')
<div class="major__page">
    <div class="loader ">
        <img class="center" src="{{ asset('frontend') }}/images/loading_001.gif" alt="">
        <p class="vertical-center">Vui lòng chờ . . .</p>
    </div>
    <div class="container">
        <div class="major__content__title">
            <div class="content__title__left">
                <span class="title__home">{{$major_name}}</span>
            </div>
        </div>
        <div id="wrap_content">
            <div class="product__filter--left">
                <div class="product__filter--left__icon">
                    <button class="btn__filter">
                        <i class="fas fa-filter"></i>
                        <span>Bộ lọc</span>
                    </button>
                </div>
                <div class="product__filter--left__items">
                    <div class="product__filter--left__item">
                        <label for="">Môn học </label>
                        <select name="" class="sort_product_select" id="sort_by_subject" data_sort="subject">
                            <option value="">--- Chọn môn học ---</option>
                            @foreach ($subjectsByMajor as $subject)
                            <option value="{{$subject->code}}">{{$subject->name}}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="product__filter--left__item">
                        <label for="">Tiêu chí </label>
                        <div class="product__filter--left__sub-items">
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
                        </div>
                    </div>
                    <div class="product__filter--left__item">
                        <label for="">Sắp xếp </label>
                        <select name="" class="sort_product_select" id="sort_by_any" data_sort="sort">
                            <option value="">--- Sắp xếp ---- </option>
                            <option value="view_desc">Sắp xếp lượt xem nhiều </option>
                            <option value="view_asc">Sắp xếp theo xem thấp </option>
                            <option value="name_asc">Sắp xếp theo tên a-z </option>
                            <option value="name_desc">Sắp xếp theo tên z-a </option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="product__list--right">
                @if($responseMessage)
                    <p class="response-message">{{$responseMessage}}</p>
                @endif
                <div class="product_list">
                    @foreach ($products as $productItem)
                    <div class="product-item">
                        <div class="inner">
                            <a href="{{route('detail.product.view',['token'=> $productItem->token])}}">
                                @if (!isset($productItem->product_gallery[0]->url_image_small) == null)
                                <img src="{{ $productItem->product_gallery[0]->url_image_small }}" style="max-height: 400px; min-height: 200px;" />
                                @else
                                <img src="{{ asset('image-hold.png') }}" style="max-height: 400px; min-height: 200px;" />
                                @endif
                                <p>{{ $productItem->name }}.</p>
                                <div class="custom-1">
                                    <div class="user">
                                        @if (!isset($productItem->user_product->avatar) == null)
                                        <img src="{{ $productItem->user_product->avatar }}" alt="">
                                        @endif
                                        @if (!isset($productItem->user_product->avatar) == null)
                                        <p>{{ $productItem->user_product->name }}</p>
                                        @endif
                                    </div>
                                </div>
                                <div class="custom-2">
                                    <div class="star">
                                        @for ($i = 0; $i < floor($productItem->avgStarTotal($productItem->id)); $i++)
                                            <i class="fas fa-heart" style="font-size: 13px !important; color: #e81224;"></i>
                                            @endfor
                                            @if (round($productItem->avgStarTotal($productItem->id),1)-floor($productItem->avgStarTotal($productItem->id))>= 0.5)
                                            <i class="fas fa-heart-broken" style="font-size: 13px !important; color: #e81224;"></i>
                                            @endif
                                            @for ($i = 0; $i < 5-round($productItem->avgStarTotal($productItem->id)); $i++)
                                                <i class="far fa-heart" style="font-size: 13px !important; color: #e81224;"></i>
                                                @endfor
                                                <span>{{round($productItem->avgStarTotal($productItem->id),1)}}/5</span>
                                    </div>
                                    <i class="far fa-eye"> {{$productItem->view}}</i>
                                </div>
                            </a>
                        </div>
                    </div>
                    @endforeach
                </div>
                @if (count($products)==0)
                    <img src="{{asset('frontend')}}/images/no-result.png"  class="img-notfound" alt="">
                    @endif
                {{ $products->links() }}
            </div>
        </div>
    </div>
</div>
@endsection
@section('page-script')
<script>
    // Script UI
    const btnFilter = document.querySelector(".btn__filter");
    const showFilter = document.querySelector(".show__filter__right");
    const loader = $('.loader');
    btnFilter.addEventListener("click", (e) => {
        showFilter.classList.toggle("action");
    })
    $(window).on('load', function(event) {
        $(".home-page .home-content").fadeIn();
        $(".home-page .slider").fadeIn();
        $(".home-page .content-wrap").fadeIn();
        $('.loader').delay(500).fadeOut('fast');
    });

    // Script ajax request
    // active navbar
    $('.navbar .link_nav').each(
        function(index, element) {
            if (element.href == "{{url()->current()}}") {
                $(this).addClass('active');
            }
        }
    );
    // active theo param
    function activeParamSelect(keyParam) {
        var params = (new URL(document.location)).searchParams;
        return params.get(keyParam);
    }

    activeParamSelect("subject") && $("#sort_by_subject").val(activeParamSelect("subject"));
    activeParamSelect("sort") && $("#sort_by_any").val(activeParamSelect("sort"));

    function ajax_rerender_products(keySort, valSort, appendElement) {
        loader.show();

        var urlParam = new URL(window.location);
        if (keySort === 'subject' && valSort != urlParam.searchParams.get('subject')) {
            window.history.pushState({}, '', `?${keySort}=${valSort}`);
        } else {
            urlParam.searchParams.set(encodeURIComponent(keySort), valSort);
            window.history.pushState({}, '', urlParam);
        }
        var params = window.location.search;
        let data = {
            param: params,
            pathname: window.location.pathname,
            _token: "{{csrf_token()}}"
        };
        $.ajax({
            url: "{{route('ajax-product-by-major')}}",
            method: "post",
            data: data,
            dataType: "json",
            success: function(resp) {
                loader.hide();

                if (resp.success) {
                    $(appendElement).html(resp.data);
                    if (resp.attributesView) {
                        $('.product__filter--left__sub-items').html(resp.attributesView);
                        if (resp.attributes.length) {
                            resp.attributes.forEach(item => {
                                activeParamSelect(`evaluation-${item.id}`) && $(`#sort_by_product_evaluation-${item.id}`).val(activeParamSelect(`evaluation-${item.id}`));
                            });
                        }
                    } else {
                        $('.product__filter--left__sub-items').html(
                            `<div class="product__filter--left__sub-item">
                                <select disabled>
                                    <option value="">Vui lòng chọn môn học có tiêu chí đánh giá</option>
                                </select>
                            </div>`
                        );
                    }

                    $('.response-message').html(resp.responseMessage);
                }
            },
            error: function(err) {
                loader.hide();
                console.log("lỗi", err)
            }
        })
    }
    $(document).ready(function() {
        var data_attributes = JSON.parse($('.attributes').attr('data_attributes'));
        if (data_attributes.length) {
            data_attributes.forEach(item => {
                activeParamSelect(`evaluation-${item.id}`) && $(`#sort_by_product_evaluation-${item.id}`).val(activeParamSelect(`evaluation-${item.id}`));
            });
        }

        $('.product__filter--left__items').on('change', '.sort_product_select', function(e) {
            var data_sort = e.target.getAttribute("data_sort");
            ajax_rerender_products(data_sort, $(this).val(), '.product__list--right');
        });
    });
</script>
@endsection
