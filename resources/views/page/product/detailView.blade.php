@extends('layouts.main')
@section('title')
<title>{{$product->name}}</title>
@endsection
@section('style-page')
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
@endsection
@section('content')
<main>
    <div class="detail">
        <div class="container">
            <div class="detail__product">
                <div class="detail__product__view">
                    <div class="detail__product_img">
                        <div class="slideshow_gallery">
                            <div class="slider">
                                @if ($url_video)
                                <div class="mySlides video">
                                    <iframe src="{{$url_video}}" width="100%" allow="autoplay"></iframe>
                                </div>
                                @endif
                                @foreach ($product->product_gallery as $item)
                                <div class="mySlides">
                                    <img src="{{$item->url_image}}" alt="{{$product->name}}" style="width:100%">
                                </div>
                                @endforeach
                            </div>
                            <div class="img-small">
                                @if ($url_video)
                                <div class="column">
                                    <img class="demo cursor" src="{{asset('frontend')}}/images/iconvideos001.png" style="width: 100%;  object-fit: cover; " alt="imgage">
                                </div>
                                @endif
                                @foreach ($product->product_gallery as $item)
                                <div class="column">
                                    <img class="demo cursor" src="{{$item->url_image_small}}" style="width:100%" alt="{{$product->name}}">
                                </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                    <div class="detail__product__infor">
                        <div class="detail__product__name">
                            <h4>{{$product->name}}</h4>
                        </div>
                        <div class="detail__product__appraise">
                            <div class="detail__product__appraise__star">
                                @for ($i = 0; $i < floor($avgStar); $i++) <i class="fas fa-heart"></i>
                                    @endfor
                                    @if (round($avgStar,1)-floor($avgStar)>= 0.5)
                                    <i class="fas fa-heart-broken"></i>
                                    @endif
                                    @for ($i = 0; $i < 5-round($avgStar); $i++) <i class="far fa-heart"></i>
                                        @endfor
                                        <span>{{round($avgStar,1)}}/5</span>
                            </div>
                            <div class="detail__product__appraise__info">
                                <p>Đánh Giá</p>
                                <span class="element_count_rating">{{count($product->star_obj)}}</span>
                            </div>
                            <div class="detail__product__appraise__view">
                                <i class="far fa-eye">{{$product->view}}</i>
                            </div>
                            @if ($product->document_url)
                            <button id="bnt_show_document" class="btn-view-document" data_document="{{$product->document_url}}">Xem tài liệu</button>
                            @endif
                        </div>
                        <div class="detail__product__scores">
                            <p>Điểm:</p>
                            <span>{{$product->score}}</span>
                        </div>
                        <div class="detail__product__published">
                            <p>Kỳ học:</p>
                            <span>{{$product->semester_obj->name}}</span>
                        </div>
                        <div class="detail__product__subject-code">
                            <p>Môn học:</p>
                            <span>{{$product->subject_obj->name}} - {{$product->subject_obj->code}}</span>
                        </div>
                        <div class="detail__product__specialized">
                            <p>Loại sản phẩm:</p>
                            <span>{{$product->product_type->name}}</span>
                        </div>
                        <div class="detail__product__teacher">
                            <p>Giảng viên hướng dẫn:</p>
                            <span>{{$teacher->name}}</span>
                        </div>

                        <div class="detail__product__member">
                            <p>Thành viên:</p>
                            <div>
                                <ul class="teams">
                                    @foreach ($product->member_obj as $member)
                                    <li class="teams__member">{{$member->full_name}} - {{$member->student_code}}</li>
                                    @endforeach
                                </ul>
                            </div>
                        </div>

                        <div class="evaluation-criteria">
                            <p>Đáp ứng tiêu chí:</p>
                            <table class="table table-stripped">
                                <thead>
                                    <th>#</th>
                                    <th>Tên tiêu chí</th>
                                    <th>Đánh giá</th>
                                </thead>
                                <tbody>
                                    @foreach ($evaluates as $item)
                                    <tr>
                                        <td>{{$loop->iteration}}</td>
                                        <td>{{$item->attribute_name}}</td>
                                        <td>
                                            @switch($item->evaluate_score)
                                                @case(1)
                                                    Xuất sắc
                                                @break
                                                @case(2)
                                                    Trung bình
                                                @break
                                                @case(3)
                                                    Không đạt
                                                @break

                                                @default
                                                    Xuất sắc
                                            @endswitch
                                        </td>
                                    </tr>
                                    @endforeach

                                    <!-- <tr>
                                                <td>1</td>
                                                <td>Bố cục website</td>
                                                <td>Xuất sắc</td>
                                            </tr> -->
                                </tbody>
                            </table>
                        </div>


                    </div>
                </div>
                <div class="detail__product__custom">
                    <div class="btn-slide">
                        <h4 class="btnDescription active">Mô tả</h4>
                        <h4 class="btnComments">Đánh giá (<span class="element_count_rating">{{count($product->star_obj)}}</span>)</h4>
                    </div>
                    <div class="detail__product__slides tab_description">
                        {!! $product->descript_detail!!}
                    </div>
                    <div class="detail__product__slides tab_comments">
                        <div class="detail__product__comment">
                            <h5>Bình luận</h5>
                            <div class="box-detail__product__comment">
                                @if (count($product->comment_obj) == 0)
                                <p id="comment_empty">hiện tại chưa có bình luận nào.</p>
                                @else
                                @foreach ($product->comment_obj as $item)
                                <div class="detail__product__comment__user">
                                    <div class="user">
                                        <img src="{{$item->user_product->avatar}}" alt="">
                                        <div class="user__name">
                                            <p>{{$item->user_product->name}} - {{\Carbon\Carbon::parse($item->created_at)->format('d/m/Y H:i:s')}}</span></p>
                                            <div class="user__rating">
                                                @if ($item->star_obj($item->user_product->id))
                                                @for ($i = 0; $i < $item->star_obj($item->user_product->id)->point; $i++)
                                                    <i class="fas fa-heart"></i>
                                                    @endfor
                                                    @for ($i = 0; $i < 5-$item->star_obj($item->user_product->id)->point; $i++)
                                                        <i class="far fa-heart"></i>
                                                        @endfor
                                                        @else
                                                        <i class="rating_empty">(Chưa có đánh giá)</i>
                                                        @endif
                                            </div>
                                        </div>
                                    </div>
                                    <div class="comment">
                                        <p>{{$item->comment }}</p>
                                    </div>
                                </div>
                                @endforeach
                                @endif
                            </div>
                        </div>

                        <div class="detail__product__comment__form">
                            <h5>Đánh giá sản phẩm</h5>
                            @if (Auth::check())
                            <div class="box-rating">
                                @if (isset($myStar))
                                <div class="box-show-rating">
                                    <div class="heart">
                                        @for ($i = 0; $i < $myStar->point; $i++)
                                            <i class="fas fa-heart"></i>
                                            @endfor
                                            @for ($i = 0; $i < 5-$myStar->point; $i++)
                                                <i class="far fa-heart"></i>
                                                @endfor
                                    </div>
                                    <p>Bạn đã đánh giá {{$myStar->created_at->format('d/m/Y')}}</p>
                                </div>
                                @else
                                <label>Đánh giá của bạn</label>
                                <div class="rating">
                                    <input type="radio" name="rating" id="r1" class="modalButton" data-popup="popupOne">
                                    <label for="r1"></label>
                                    <input type="radio" name="rating" id="r2" class="modalButton" data-popup="popupOne">
                                    <label for="r2"></label>
                                    <input type="radio" name="rating" id="r3" class="modalButton" data-popup="popupOne">
                                    <label for="r3"></label>
                                    <input type="radio" name="rating" id="r4" class="modalButton" data-popup="popupOne">
                                    <label for="r4"></label>
                                    <input type="radio" name="rating" id="r5" class="modalButton" data-popup="popupOne">
                                    <label for="r5"></label>
                                </div>
                                @endif
                            </div>
                            <div class="comment-form-item">
                                <label for="">Bình luận của bạn</label><br>
                                <textarea name="" class="" id="val_comment" cols="30" rows="5" placeholder="Nhập bình luận . . ."></textarea><br>
                                <span id="messger_error"></span>
                                <button type="button">Bình luận</button>
                            </div>
                            @else
                            <div class="btn-account">
                                <p>Bạn hãy đăng nhập để đánh giá sản phẩm.</p>
                                <div class="sign-in">
                                    <a href="{{route("login")}}">Đăng nhập</a>
                                </div>
                            </div>
                            @endif
                        </div>
                    </div>
                </div>
                <div class="detail__related__product">
                    <div class="detail__related__product__heading">
                        <div class="line"></div>
                        <h4>Sản phẩm liên quan</h4>
                        <div class="line"></div>
                    </div>
                    <div id="wrap_content">
                        <div class="product_list">
                            @foreach ($similarProduct as $item)
                            <div class="product-item">
                                <div class="inner">
                                    <a href="/san-pham/{{$item->token}}/view">
                                        @if (!isset($item->product_gallery[0]->url_image_small) == null)
                                        <img src="{{ $item->product_gallery[0]->url_image_small }}" style="max-height: 400px; min-height: 200px;" />
                                        @else
                                        <img src="{{ asset('image-hold.png') }}" style="max-height: 400px; min-height: 200px;" />
                                        @endif
                                        <p>{{ $item->name }}.</p>
                                        <div class="custom-1">
                                            <div class="user">
                                                @if (!isset($item->user_product->avatar) == null)
                                                <img src="{{ $item->user_product->avatar }}" alt="">
                                                @endif
                                                @if (!isset($item->user_product->avatar) == null)
                                                <p>{{ $item->user_product->name }}</p>
                                                @endif
                                            </div>
                                        </div>
                                        <div class="custom-2">
                                            <div class="star">
                                                @for ($i = 0; $i < floor($item->avgStar($item->id)); $i++)
                                                    <i class="fas fa-heart" style="font-size: 13px !important; color: #e81224;"></i>
                                                    @endfor
                                                    @if (round($item->avgStar($item->id),1)-floor($item->avgStar($item->id))>= 0.5)
                                                    <i class="fas fa-heart-broken" style="font-size: 13px !important; color: #e81224;"></i>
                                                    @endif
                                                    @for ($i = 0; $i < 5-round($item->avgStar($item->id)); $i++)
                                                        <i class="far fa-heart" style="font-size: 13px !important; color: #e81224;"></i>
                                                        @endfor
                                                        <span>{{round($item->avgStar($item->id),1)}}/5</span>
                                            </div>
                                            <i class="far fa-eye"> {{$item->view}}</i>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            @endforeach
                        </div>
                        @if (count($similarProduct)==0)
                        <img src="{{asset('frontend')}}/images/no-result.png"  class="img-notfound" alt="">
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="box-modal">
        <section class="modal modalWindow" id="popupOne">
            <section class="modalWrapper">
                <h2>Xác nhận đánh giá</h2>
                <div class="content-rating">
                    <p class="show_confirm-rating"></p>
                    <span id="summary_rating"></span>

                </div>
                <div class="box-bnt-modal">
                    <button class="bnt-modal bnt-confirm-modal bnt-success" id="confirm-modal">Xác nhận</button>
                    <button class="bnt-modal bnt-close-modal closeBtn">Đóng</button>
                </div>
            </section>
            <span class="closeBtn"><i class="fas fa-times-circle"></i></a>
        </section>
        <section class="modal overlay">
    </div>
    </div>
</main>
@endsection
@section('page-script')
<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<script>
    // ---- SCRIPT UI ------//
    //slideshow_gallery
    $('.slider').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: false,
        fade: true,
        asNavFor: '.img-small'
    });
    $('.img-small').slick({
        slidesToShow: 3,
        slidesToScroll: 1,
        asNavFor: '.slider',
        centerMode: true,
        focusOnSelect: true,
        arrows: false,
        responsive: [{
                breakpoint: 1024,
                settings: {
                    slidesToShow: 3,
                    slidesToScroll: 1,
                    infinite: true,
                }
            },
            {
                breakpoint: 960,
                settings: {
                    slidesToShow: 4,
                    slidesToScroll: 1,
                    infinite: true,
                }
            },
            {
                breakpoint: 480,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 1
                }
            },
            {
                breakpoint: 300,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1
                }
            }
        ]
    });


    $('.btnDescription').click(function(e) {
        $('.btnDescription').addClass('active');
        $('.btnComments').removeClass('active');
        $('.tab_comments').hide()
        $('.tab_description').show()
    });
    $('.btnComments').click(function(e) {
        $('.btnDescription').removeClass('active');
        $('.btnComments').addClass('active');
        $('.tab_comments').show();
        $('.tab_description').hide();

    });
    const qSelect = document.querySelector.bind(document);
    const qSelectAll = document.querySelectorAll.bind(document);
    // bắt sự kiện khi đánh giá hiện lên modal
    qSelectAll('.box-rating .modalButton').forEach((element, index) => {
        element.addEventListener('click', e => {
            var heart_rating = "";
            for (let i = 0; i < 5 - index; i++) {
                heart_rating += "❤️";
            }
            for (let i = 0; i < index; i++) {
                heart_rating += "🤍";
            }
            qSelect('.box-modal .content-rating .show_confirm-rating').innerHTML = heart_rating;
            qSelect("#summary_rating").innerHTML = `(${5-index}/5 Tim)`;
            qSelect('#confirm-modal').value = (5 - index);
        })
    });
    //   bắt sự kiện xác nhận đánh giá và gửi dữ liệu bằng ajax
    qSelect('#confirm-modal').addEventListener('click', e => {
        const rating_heart = qSelect('#confirm-modal').value;
        var heart_rating = "";
        const dataPost = {
            token: "{{$token}}",
            star: rating_heart
        }
        for (let i = 0; i < parseInt(rating_heart); i++) {
            heart_rating += "<i class='fas fa-heart'></i>";
        }
        for (let i = 0; i < 5 - parseInt(rating_heart); i++) {
            heart_rating += "<i class='far fa-heart'></i>";
        }
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': "{{ csrf_token() }}"
            }
        });
        $.ajax({
            type: "post",
            url: "{{route('rating.product')}}",
            data: dataPost,
            dataType: "JSON",
            success: function(response) {
                qSelect('.box-modal .content-rating').innerHTML = `<div class="success-notify"><img src="{{asset('frontend')}}/images/success001.gif" alt=""><span>Cảm ơn bạn đã đánh giá.</span></div>`;
                qSelect('.box-modal .box-bnt-modal').innerHTML = "";
                qSelect('.detail__product__comment__form .box-rating').innerHTML = `<div class="box-show-rating"><div class="heart">${heart_rating}</div><p>Cảm ơn bạn đã đánh giá !</p></div>`;
                qSelectAll(".element_count_rating").forEach(item => {
                    item.innerHTML = Math.floor(response.countRating);
                });
                setTimeout(() => {
                    $(".modal").fadeOut();
                }, 3000);
            }
        });
    });
    // validate
    function validateComment(value) {
        var boolean = true;
        if (value == "") {
            qSelect('#val_comment').classList.add("error");
            qSelect('#messger_error').innerText = "Không được để trống !";
            boolean = false;
        } else if (value.trim().length >= 250) {
            qSelect('#val_comment').classList.add("error");
            qSelect('#messger_error').innerText = "Bình luận quá dài (nhỏ hơn 250 ký tự)";
            boolean = false;
        } else {
            qSelect('#val_comment').classList.remove("error");
            qSelect('#messger_error').innerText = "";
            boolean = true;
        }
        return boolean;
    }
    qSelect('#val_comment') && qSelect('#val_comment').addEventListener('input', e => {
        validateComment(e.target.value.trim());
    });
    //    bắt sự kiện khi nhấn bình luận và gửi dữ liệu bằng ajax
    qSelect('.comment-form-item button') && qSelect('.comment-form-item button').addEventListener('click', e => {
        if (validateComment(qSelect('#val_comment').value.trim())) {
            const comment_item = (avatar, userName, comment, star) => {
                var heart_rating = "";
                if (star) {
                    for (let i = 0; i < parseInt(star); i++) {
                        heart_rating += "<i class='fas fa-heart'></i> ";
                    }
                    for (let i = 0; i < 5 - parseInt(star); i++) {
                        heart_rating += " <i class='far fa-heart'></i>";
                    }
                } else {
                    heart_rating = "<i class='rating_empty'>(Chưa có đánh giá)</i>";
                }
                return `
            <div class="detail__product__comment__user">
                <div class="user">
                    <img src="${avatar}" alt="">
                    <div class="user__name">
                        <p>${userName}</p>
                        <div class="user__rating">${heart_rating}</div>
                    </div>
                </div>
                <div class="comment">
                    <p>${comment}</p>
                </div>
            </div>`;
            }

            const dataPost = {
                token: "{{$token}}",
                comment: qSelect('#val_comment').value.trim()
            }
            qSelect('#val_comment').value = "";
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': "{{ csrf_token() }}"
                }
            });
            $.ajax({
                type: "post",
                url: "{{route('comment.product')}}",
                data: dataPost,
                dataType: "JSON",
                success: function(response) {
                    if (qSelect("#comment_empty")) {
                        qSelect("#comment_empty").innerHTML = "";
                    }
                    var star = response.star ? response.star.point : null;
                    qSelect('.box-detail__product__comment').insertAdjacentHTML('afterbegin', comment_item(response.user.avatar, response.user.name, response.comment, star));
                },
                error: function(err) {
                    qSelect('#messger_error').innerText = "Không thể bình luận";
                }
            });
        }
    });

    // tăng lượt view
    setTimeout(() => {
        $.ajax({
            type: "get",
            url: "{{route('increase_view.product')}}",
            data: {
                token: "{{$token}}"
            },
            dataType: "JSON"
        });
    }, 7000);
</script>
@endsection
