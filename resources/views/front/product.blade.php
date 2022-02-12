@extends('layouts.front')
@section('title')
    @lang('site.home')

@endsection
@section('content')
    <!-----start  --->
    <br><br>
    <style>
        .justify-content-center .form-check {
            padding: 0 !important;
        }

        @media (min-width: 0px) and (max-width: 570px) {
            .modal1 {
                top: 50px !important;
                padding-top: 85px
            }

            .close1 {
                top: 35px !important;
            }

            .h-img {
                height: 60vh;
            }

            .carousel {
                margin-top: 0 !important;
            }
        }

        @media (min-width: 768px) and (max-width: 989px) {
            .modal-content1 {
                max-width: 500px;
            }

            .modal1 {
                padding-top: 0 !important;
            }
        }

        .column1 {
            float: left;
            width: 25%;
        }

        /* The Modal (background) */
        .modal1 {
            display: none;
            position: fixed;
            z-index: 1;
            /* padding-top: 100px; */
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: black;
        }

        /* Modal Content */
        .modal-content1 {
            position: relative;
            background-color: #fefefe;
            margin: auto;
            padding: 0;
            width: 90%;
            max-width: 600px;
        }

        /* The Close Button */
        .close1 {
            color: white;
            position: absolute;
            top: 10px;
            right: 25px;
            font-size: 35px;
            font-weight: bold;
        }

        .close1:hover,
        .close1:focus {
            color: #999;
            text-decoration: none;
            cursor: pointer;
        }

        .mySlides1 {
            display: none;
        }

        .cursor1 {
            cursor: pointer;
        }

        /* Next & previous buttons */
        .prev1,
        .next1 {
            cursor: pointer;
            position: absolute;
            top: 50%;
            width: auto;
            padding: 16px;
            margin-top: -50px;
            color: rgb(32, 137, 223);
            font-weight: bold;
            font-size: 20px;
            transition: 0.6s ease;
            border-radius: 0 3px 3px 0;
            user-select: none;
            -webkit-user-select: none;
        }

        /* Position the "next button" to the right */
        .next1 {
            right: 0;
            border-radius: 3px 0 0 3px;
        }

        /* On hover, add a black background color with a little bit see-through */
        .prev1:hover,
        .next1:hover {
            background-color: rgba(0, 0, 0, 0.8);
        }

        /* Number text (1/3 etc) */
        .numbertext1 {
            color: #f2f2f2;
            font-size: 12px;
            padding: 8px 12px;
            position: absolute;
            top: 0;
        }



        .demo1 {
            opacity: 0.6;
        }

        .active,
        .demo:hover {
            opacity: 1;
        }

        img.hover-shadow {
            transition: 0.3s;
        }

        .hover-shadow:hover {
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        }

    </style>
    <div class="container">
        <div class="row dir-rtl">
            <div class="col-md-5 product pad-0">
                {{-- <div class="  heart "> --}}
                {{-- <i class="far fa-heart "></i></div> --}}

                {{-- <div class="   "> --}}
                {{-- <a href="#" class="heart addToWishList text-white" data-product-id="{{ $product->id }}">
                    <i class="far fa-heart "></i>
                </a> --}}
                {{-- </div><!----> --}}


                <div id="carouselExampleIndicators" class="carousel slide carousel1 " data-ride="carousel">
                    <div class="carousel-inner prod">
                        <div class="carousel-item active">


                            <img src="{{ asset('/storage/' . $product->img) }}" class="d-block w-100 h-img"
                                style="cursor: zoom-in" alt="..." onclick="openModal();currentSlide(0)">
                        </div>


                        @if ($product->images->count() > 0)
                            @foreach ($product->images as $img)
                                <div class="carousel-item">
                                    <img src="{{ asset($img->img) }}" class="d-block w-100 h-img" style="cursor: zoom-in"
                                        alt="..." onclick="openModal();currentSlide({{ $img->id }})">

                                </div>
                            @endforeach
                        @endif


                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev"
                        style="bottom: 25%!important">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">@lang('site.previous')</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next"
                        style="bottom: 25%!important">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">@lang('site.next')</span>
                    </a>
                </div>

                <ol class=" position-relative navbar"
                    style="width:100%;margin-top:10px;list-style: none;justify-content:center">
                    <br>



                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="">
                        <img src=" {{ asset('/storage/' . $product->img) }}" class="img">
                    </li><br>
                    {{-- <li data-target="#carouselExampleIndicators" data-slide-to="1" class=""> --}}
                    {{-- <img src=" {{asset('/storage/'.$product->height_img)}}"  class="img"> --}}
                    {{-- </li><br> --}}
                    @if ($product->images->count() > 0)
                        @foreach ($product->images as $img)

                            <li data-target="#carouselExampleIndicators" data-slide-to="{{ $loop->index + 1 }}"
                                class="">
                                <img src="{{ asset($img->img) }}" class="img">
                            </li><br>
                        @endforeach
                    @endif
                </ol>

                {{-- <div class="owl-carousel owl-theme">
                    <div class="item" data-target="#carouselExampleIndicators" data-slide-to="0"><h4>
                        <img src=" {{ asset('/storage/' . $product->img) }}" class="img">
                        </h4></div>
                        @if ($product->images->count() > 0)
                        @foreach ($product->images as $img)
                    <div class="item" data-target="#carouselExampleIndicators" data-slide-to="{{ $loop->index + 1 }}"><h4>
                        <img src="{{ asset($img->img) }}" class="img">
                                            </h4></div>
                                            @endforeach
                                            @endif

                </div> --}}

            </div>

            <div class="col-sm-5 ml-auto product-dir">
                {{-- <nav class="navbar navbar-expand pad-0 " > --}}
                {{-- <ul class="navbar-nav"> --}}
                {{-- <li class="nav-item "><a class="nav-link "style="margin-left: -7px" href="{{route('/')}}">HOME  /</a></li> --}}
                {{-- <li class="nav-item "><a class="nav-link " href="{{route('category' , [1 , $product->basic_category->id])}}"> --}}
                {{-- @if (Lang::locale() == 'ar') --}}
                {{-- {{ $product->basic_category->name_ar}}  / --}}

                {{-- @else --}}
                {{-- {{ $product->basic_category->name_en}}  / --}}


                {{-- @endif --}}

                {{-- </a></li> --}}
                {{-- <li class="nav-item "><a class="nav-link " href="{{route('category' , [2 , $product->category->id])}}"> --}}

                {{-- @if (Lang::locale() == 'ar') --}}
                {{-- {{ $product->category->name_ar}} --}}

                {{-- @else --}}
                {{-- {{ $product->category->name_en}} --}}


                {{-- @endif --}}

                {{-- </a></li> --}}
                {{-- </ul> --}}
                {{-- </nav> --}}
                <h2 class="text-dir"><a href="" class="cursor-no">

                        @if (Lang::locale() == 'ar')
                            {{ $product->basic_category->name_ar }}
                            @if ($product->category_id != 0)
                                -
                                {{ $product->category->name_ar }}
                            @endif
                        @else

                            {{ $product->basic_category->name_en }}

                            @if ($product->category_id != 0)
                                -
                                {{ $product->category->name_en }}
                            @endif
                        @endif

                    </a></h2>
                {{-- <div class="is-divider"></div> --}}
                <br>
                <h6 class="text-dir  h6-product">
                    @if (Lang::locale() == 'ar')
                        {{ $product->title_ar }}
                    @else
                        {{ $product->title_en }}
                    @endif


                </h6>
                <br>
                <h6 class="text-dir" style="font-size: 17px">
                    @if (Lang::locale() == 'ar')
                        {{ $product->description_ar }}
                    @else
                        {{ $product->description_en }}
                    @endif

                </h6>
                {{-- <div class="is-divider"></div> --}}
                <br>
                {{-- <a href="{{asset('front/img/size.jpeg')}}"> <img src="{{asset('front/img/size.jpeg')}}" --}}
                {{-- onerror="this.onerror=null;this.src='{{asset('front/img/5.jpg')}}'" --}}
                {{-- class="w-100">  </a> --}}
                <h6 class="text-dir h6-product">

                    @guest()
                        @if (Cookie::get('name'))
                            {{ number_format($product->price / App\Country::find(Cookie::get('name'))->currency->rate, 2) }}
                            @if (Lang::locale() == 'en')
                                {{ App\Country::find(Cookie::get('name'))->currency->code }}
                            @else
                                {{ App\Country::find(Cookie::get('name'))->currency->code_ar }}
                            @endif

                        @else
                            {{ $product->price }}
                            @lang('site.kwd')
                        @endif

                    @else
                        {{ Auth::user()->getPrice($product->price) }}
                        @if (Lang::locale() == 'en')
                            {{ Auth::user()->country->currency->code }}
                        @else
                            {{ Auth::user()->country->currency->code_ar }}
                        @endif @endguest
                    </h6>


                    <br>
                    {{-- @if ($product->is_order == 1)
                        @include('front.includes.custom_sizes')



                    @else
                        <div id="colors">
                            <div id="s" class="color-blocks" style="">
                                <span>@lang('site.size') :</span>

                                @if ($product->product_sizes->count() > 0)
                                    <div class="d-flex rtl-margin">
                                        @foreach ($product->product_sizes as $size)

                                            <div class="radio-inline color">
                                                <input type="radio" name="size" value="{{ $size->id }}"
                                                    id="size-{{ $size->id }}">
                                                <label for="size-{{ $size->id }}">{{ $size->size->name }}</label>
                                            </div>


                                        @endforeach
                                    </div>
                                @else
                                    المنتج غير متوفر
                                @endif
                            </div>
                        </div>
                    @endif --}}


                    {{-- @if (Lang::locale() == 'en')
                        <div id="heights" style="margin-bottom: 15px; margin-top: -25px;">
                        @else

                            <div id="heights">

                    @endif

                </div> --}}

                    {{-- <br>
                <h6 style="font-weight:600 " class="textarea-dir" >@lang('site.note')</h6>

                <textarea  class="w-100  " rows="5"></textarea> --}}

                    {{-- @if ($product->colors->count() > 0)
                    @if (Lang::locale() == 'ar')
                        <br>
                        <br>
                    @endif
                    <div id="colors" class="mb-2 d-inline">
                        <div id="s" class="color-blocks" style="">
                            <span class="">@lang('site.color') :</span>


                            <div class="d-flex rtl-margin">

                                <select class="form-control" id="color_val" name="color">
                                    @foreach ($product->colors as $color)
                                        <option value="{{ $color->id }}">{{ $color->color->name_en }}</option>
                                    @endforeach
                                </select>
                            </div>

                        </div>
                    </div>
                    <br><br>
                @endif --}}

                    <form class=" product-count float-right d-none">
                        <a rel="nofollow" class="btn btn-default btn-minus" href="#" title="Subtract">&ndash;</a>
                        <input type="text" disabled="" size="2" readonly autocomplete="off"
                            class="cart_quantity_input form-control grey count" value="1" name="quantity">
                        <a rel="nofollow" class="btn btn-default btn-plus" href="#" title="Add" style="margin: -9px;">+</a>
                    </form>

                    <a id="add_cart" class="btn bg-main " style="width: 100%;background: #000000 !important;margin-top:10px"
                        is_order="{{ $product->is_order }}">@lang('site.add_to_cart')</a>
                    <div class="row">
                        <a class="btn bg-main addToWishList" data-product-id="{{ $product->id }}"
                            style="margin:10px 0px;width: 70%;background: rgb(32, 137, 223)  !important;">@lang('site.add_to_wishlist')</a>
                        <span id="bn-click"
                            style="cursor: pointer;margin:10px;padding: 8px;width: 20%;background: #67ced7 !important;color: #fff;border-radius: 5%;">@lang('site.share')
                            <i class="fas fa-share"></i></span>
                    </div>
                    <a class="btn bg-main " style="width: 100%;background: #000000 !important;margin-top:10px" target="_blank"
                        href="https://wa.me/{{ $my_setting->whatsapp }}/?text=https://safat.openshoop.com/ar/product/{{ $product->id }}">@lang('site.connect')</a>
                    <a class="btn bg-main " style="width: 100%;background: rgb(32, 137, 223) !important;margin-top:10px"
                        onclick="copyToClipboard({{ $product->id }})">@lang('site.copy_link')</a>

                </div>


            </div>

        </div>

        <!--- end  --->
        @if (count($product->property) > 0)
            <div class="product-collateral dir-rtl text-dir">
                <dl id="collateral-tabs" class="collateral-tabs">
                    <div class="tab-content">
                        <div class="row">
                            <div class="col-sm-6">
                                <h2>@lang('site.prod_prop')</h2>
                                <table class="table table-hover product-attribute-specs-table">
                                    <colgroup>
                                        <col width="25%">
                                        <col>
                                    </colgroup>
                                    <tbody>
                                        @foreach ($product->property as $item)
                                            <tr>
                                                <th class="label text-uppercase">
                                                    {{ $item['prop_name_' . app()->getLocale()] }}
                                                </th>
                                                <td class="data">{!! $item['prop_value_' . app()->getLocale()] !!}</td>
                                            </tr>
                                        @endforeach


                                    </tbody>
                                </table>
                            </div>

                        </div>
                    </div>
                </dl>
            </div>
        @endif

        <div class="container ">

            <h3 class="text-center ">@lang('site.related_products')
            </h3>
            <br>

            <div class="row text-dir dir-rtl">

                <div class="col-12">
                    <ul class="tablinks  row  mr-0 pad-0 text-center justify-content-center">
                        <div class="swiper mySwiper">
                            <div class="swiper-wrapper">
                                @if (\App\BasicCategory::find($product->basic_category_id)->products->count() > 0)
                                    @foreach (\App\BasicCategory::find($product->basic_category_id)->products as $p)
                                        @if ($p->id != $product->id && $p->appearance == 1)
                                            <div class="swiper-slide" data-swiper-autoplay="2000">
                                                <div class=" product relative">
                                                    {{-- <div class="  heart ">
                                                    <a href="#" class="addToWishList text-white"
                                                        data-product-id="{{ $p->id }}">
                                                        <i class="far fa-heart "></i>
                                                    </a>

                                                </div> --}}
                                                    <div style="flex-direction: column;display: flex">
                                                        <div>
                                                            <a href="{{ route('product', $p->id) }}"
                                                                class="test image-hover">

                                                                <img src="{{ asset('/storage/' . $p->img) }}"
                                                                    onerror="this.onerror=null;this.src='{{ asset('front/img/3.jpg') }}'"
                                                                    width="100%" class="show-img ">

                                                                @if ($img = App\ProdImg::where('product_id', $p->id)->first())
                                                                    <img src="{{ asset($img->img) }}" width="100%"
                                                                        class="hide-img">
                                                                    <div class="middle">
                                                                        <div class="btn btn-danger">@lang('site.add_to_cart')
                                                                        </div>
                                                                    </div>
                                                                @else
                                                                    <img src="{{ asset('/storage/' . $p->img) }}"
                                                                        width="100%" class="hide-img">
                                                                    <div class="middle">
                                                                        <div class="btn btn-danger">@lang('site.add_to_cart')
                                                                        </div>
                                                                    </div>
                                                                @endif
                                                            </a>
                                                        </div>

                                                        <div class="text-center">
                                                            <p class="mr-0">
                                                                <a href="{{ route('product', $p->id) }}">
                                                                    @if (Lang::locale() == 'ar')
                                                                        {{ $p->title_ar }}

                                                                    @else

                                                                        {{ $p->title_en }}
                                                                    @endif


                                                                </a>
                                                            </p>
                                                            <h6><a href="{{ route('product', $p->id) }}">


                                                                    @if (Lang::locale() == 'ar')
                                                                        {{-- {{$p->basic_category->name_ar}}
                                                -
                                                {{$p->category->name_ar}} --}}
                                                                        <?php $pieces = explode(' ', $p->description_ar);
                                                                        $first_part = implode(' ', array_splice($pieces, 0, 4)); ?>
                                                                        {{ $first_part }}
                                                                    @else

                                                                        {{-- {{$p->basic_category->name_en}}
                                                -
                                                {{$p->category->name_en}} --}}
                                                                        <?php $pieces = explode(' ', $p->description_en);
                                                                        $first_part = implode(' ', array_splice($pieces, 0, 4)); ?>
                                                                        {{ $first_part }}
                                                                    @endif


                                                                </a></h6>
                                                            <h5 class="dir-rtl">


                                                                @auth()
                                                                    {{ Auth::user()->getPrice($p->price) }}
                                                                    @if (Lang::locale() == 'en')
                                                                        {{ Auth::user()->country->currency->code }}
                                                                    @else
                                                                        {{ Auth::user()->country->currency->code_ar }}
                                                                    @endif
                                                                @endauth
                                                                @guest()
                                                                    @if (Cookie::get('name'))
                                                                        {{ number_format($p->price / App\Country::find(Cookie::get('name'))->currency->rate, 2) }}
                                                                        @if (Lang::locale() == 'en')
                                                                            {{ App\Country::find(Cookie::get('name'))->currency->code }}
                                                                        @else
                                                                            {{ App\Country::find(Cookie::get('name'))->currency->code_ar }}
                                                                        @endif
                                                                    @else
                                                                        {{ $p->price }}
                                                                        @lang('site.kwd')
                                                                    @endif
                                                                @endguest

                                                            </h5>
                                                            </h5>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                        @endif
                                    @endforeach
                            </div>

                        </div>
                    @else
                        لا يوجد
                        @endif

                    </ul>
                </div>
            </div>
            <br><br>
        </div>

        <!-- Button trigger modal -->


        <!-- Modal -->
        {{-- <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog"
            aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">

                    <div class="modal-body">
                        <img src="{{ asset('/storage/' . $product->size_guide->image_url) }}" class="d-block w-100 h-img"
                            style="object-fit: contain" alt="..." data-toggle="modal" data-target="#staticBackdrop">
                    </div>

                </div>
            </div>
        </div> --}}
        <!--- end  --->




        {{-- New modal --}}
        <div id="myModal1" class="modal1">
            <span class="close1 cursor1" onclick="closeModal()">&times;</span>
            <div class="modal-content1">

                <div class="mySlides1">
                    {{-- <div class="numbertext1">1 / 4</div> --}}
                    <img src="{{ asset('/storage/' . $product->img) }}" style="width:100%">
                </div>
                @if ($product->images->count() > 0)
                    @foreach ($product->images as $img)
                        <div class="mySlides1">
                            {{-- <div class="numbertext1">2 / 4</div> --}}
                            <img src="{{ asset($img->img) }}" style="width:100%">
                        </div>
                    @endforeach
                @endif



                <a class="prev1" onclick="plusSlides(-1)">&#10094;</a>
                <a class="next1" onclick="plusSlides(1)">&#10095;</a>




                <div class="column1">
                    <img class="demo1 cursor1" src="{{ asset('/storage/' . $product->img) }}" style="width:100%"
                        onclick="currentSlide(0)">
                </div>
                @if ($product->images->count() > 0)
                    @foreach ($product->images as $img)
                        <div class="column1">
                            <img class="demo1 cursor1" src="{{ asset($img->img) }}" style="width:100%"
                                onclick="currentSlide({{ $img->id }})" alt="Snow">
                        </div>
                    @endforeach
                @endif

            </div>
        </div>

        {{-- New modal End --}}



    @endsection
    @section('script')
        <script>
            var lang = $('html').attr('lang');
            console.log(lang);

            function copyToClipboard(element) {
                var $temp = $("<input>");
                var $link = "https://safat.openshoop.com/"
                var $id = "{{ $product->id }}"
                $("body").append($temp);
                $temp.val($link + $id).select();
                // console.log($link+$id);
                document.execCommand("copy");
                $temp.remove();
                if (lang == "ar") {
                    Swal.fire({
                        icon: '?',
                        title: 'تم نسخ رابط المنتج بنجاح',
                        confirmButtonColor: '#000',
                        position: 'bottom-start',
                        showCloseButton: true,
                    })
                } else {
                    Swal.fire({
                        icon: '?',
                        title: 'Product link copied successfully',
                        confirmButtonColor: '#000',
                        position: 'bottom-start',
                        showCloseButton: true,
                    })
                }

            }


            let shareData = {
                url: window.location.href,
            }

            document.querySelector('#bn-click').addEventListener('click', () => {
                navigator.share(shareData);
            });

            function openModal() {
                document.getElementById("myModal1").style.display = "block";
            }

            function closeModal() {
                document.getElementById("myModal1").style.display = "none";
            }

            var slideIndex = 1;
            showSlides(slideIndex);

            function plusSlides(n) {
                showSlides(slideIndex += n);
            }

            function currentSlide(n) {
                console.log(n);
                showSlides(slideIndex = n + 1);
            }

            function showSlides(n) {
                var i;
                var slides = document.getElementsByClassName("mySlides1");
                var dots = document.getElementsByClassName("demo1");
                var captionText = document.getElementById("caption1");
                if (n > slides.length) {
                    slideIndex = 1
                }
                if (n < 1) {
                    slideIndex = slides.length
                }
                for (i = 0; i < slides.length; i++) {
                    slides[i].style.display = "none";
                }
                for (i = 0; i < dots.length; i++) {
                    dots[i].className = dots[i].className.replace(" active1", "");
                }
                slides[slideIndex - 1].style.display = "block";
                dots[slideIndex - 1].className += " active1";
                captionText.innerHTML = dots[slideIndex - 1].alt;
            }
        </script>

        <script>
            var lang = $('html').attr('lang');

            $(document).ready(function() {
                $('#heights').hide();
                let sizeVal;

                $('input[name="size"]').on('click', function() {

                    $('#heights').hide();
                    // console.log($(this).val())
                    //TODO :: ON CLICK IF CHECKED VIEW THE HEIGHTS ELSE MAKE CONTAINER HIDDEN

                    if ($('input[name=size]').is(':checked')) {
                        var card_type = $("input[name=size]:checked").val();
                        sizeVal = card_type;
                        getHeights(sizeVal);
                    }
                });
                //TODO :: GET #S ->CONTENT
                $('#add_cart').on('click', function() {
                    console.log(lang);
                    console.log("ok");

                    //GET PRODUCT ID
                    //GET QUANTITY
                    //GET SIZE ID
                    //GET HEIGHT ID


                    let size = 0;
                    let height = 0;
                    let product = '{{ $product->id }}';
                    let quantity = $("input[name=quantity]").val();
                    let color = $('#color_val').find(":selected").val();
                    let is_order = $(this).attr('is_order');

                    // if order
                    let height_order = $("input[name=height_order]").val();
                    let order_size = $('input[name="order_size"]:checked').val();

                    // console.log(order_size );
                    let shoulder = $("input[name=shoulder]").val();
                    let chest = $("input[name=chest]").val();
                    let the_front = $('#the_front').find(":selected").val();
                    let veil_size = $('#veil_size').find(":selected").val();
                    let note = $('#note').val();
                    let hole_sleeve = $("input[name=hole_sleeve]").val();
                    let sleeve_length = $("input[name=sleeve_length]").val();
                    let is_bs_ca = $("input[name=is_bs_ca]").val();
                    //TODO :: IF NOT SELECTED HEIGHT OR SIZE ASK TO CHOOSE


                    if ($('input[name=size]').is(':checked')) {
                        size = $("input[name=size]:checked").val();
                    }

                    if ($('input[name=height]').is(':checked')) {
                        height = $("input[name=height]:checked").val();
                    }
                    // if (is_order == 0) {



                    // if ((size == 0) || (height == 0)) {
                    //     Swal.fire({
                    //         icon: '?',
                    //         title: 'يرجي تحديد الخيارات ',
                    //         confirmButtonColor: '#000',
                    //         position: 'bottom-start',
                    //         showCloseButton: true,
                    //     })
                    // } else {
                    addToCart(product, quantity, height, size, color);
                    // }
                    // } else {
                    //     //  console.log(order_size );

                    //     if ((height_order == '') || (order_size == null)) {
                    //         Swal.fire({
                    //             icon: '?',
                    //             title: 'يرجي تحديد الخيارات ',
                    //             confirmButtonColor: '#000',
                    //             position: 'bottom-start',
                    //             showCloseButton: true,
                    //         })
                    //     } else {
                    //         addToCart_order(product, quantity, height_order, color, the_front, veil_size, note,
                    //             order_size);
                    //     }
                    // }

                });

                function addToCart(productId, quantity, heightId, sizeId, color) {
                    $.ajaxSetup({
                        headers: {
                            'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
                        }
                    });

                    $.ajax({
                        url: "{{ route('add.to.cart') }}",
                        method: 'post',
                        data: {
                            _token: "{{ csrf_token() }}",
                            quantity: quantity,
                            product_id: productId,
                            product_size_id: sizeId,
                            color: color,
                            product_height_id: heightId,
                        },
                        success: function(result) {
                            //CHECK SIZE VALUES
                            //CHECK HEIGHTS VALUE
                            if (result.success == false) {
                                Swal.fire({
                                    toast: true,
                                    icon: 'warning',
                                    title: result.message,
                                    animation: false,
                                    position: 'bottom-start',
                                    showConfirmButton: false,
                                    timer: 3000,
                                    timerProgressBar: true,
                                    didOpen: (toast) => {
                                        toast.addEventListener('mouseenter', Swal.stopTimer)
                                        toast.addEventListener('mouseleave', Swal.resumeTimer)
                                    }
                                });
                            } else {
                                Swal.fire({
                                    toast: true,
                                    icon: 'success',
                                    title: result.message,
                                    animation: false,
                                    position: 'bottom-start',
                                    showConfirmButton: false,
                                    timer: 3000,
                                    timerProgressBar: true,
                                    didOpen: (toast) => {
                                        toast.addEventListener('mouseenter', Swal.stopTimer)
                                        toast.addEventListener('mouseleave', Swal.resumeTimer)
                                    }
                                });
                            }

                            // console.log(result);

                            // location.reload();
                            setTimeout(function() {
                                location.reload();
                            }, 2000);

                        },
                        error: function(error) {


                            console.log(error);

                            Swal.fire({
                                title: 'لم تكتمل العمليه ',
                                icon: '?',
                                confirmButtonColor: '#000',
                                position: 'bottom-start',
                                showCloseButton: true,
                            })
                            // Swal.fire({
                            //         title: 'لم تكتمل العمليه ',
                            //         icon: '؟',
                            //         iconHtml: '؟',
                            //         confirmButtonText: 'ok',
                            //         showCancelButton: false,
                            //         showCloseButton: true
                            //         })
                        }
                    });
                }

                function addToCart_order(productId, quantity, height_order, color, the_front, veil_size, note,
                    order_size) {
                    $.ajaxSetup({
                        headers: {
                            'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
                        }
                    });

                    $.ajax({
                        url: "{{ route('add.to.cart') }}",
                        method: 'post',
                        data: {
                            _token: "{{ csrf_token() }}",
                            quantity: quantity,
                            product_id: productId,
                            color: color,
                            height_order: height_order,
                            the_front: the_front,
                            veil_size: veil_size,
                            note: note,
                            order_size: order_size

                        },
                        success: function(result) {
                            //CHECK SIZE VALUES
                            //CHECK HEIGHTS VALUE
                            Swal.fire({
                                toast: true,
                                icon: 'success',
                                title: 'تمت الإضافه الي السله',
                                animation: false,
                                position: 'bottom-start',
                                showConfirmButton: false,
                                timer: 3000,
                                timerProgressBar: true,
                                didOpen: (toast) => {
                                    toast.addEventListener('mouseenter', Swal.stopTimer)
                                    toast.addEventListener('mouseleave', Swal.resumeTimer)
                                }
                            });
                            // console.log(result);

                            // location.reload();
                            setTimeout(function() {
                                location.reload();
                            }, 3000);


                        },
                        error: function(error) {


                            console.log(error);
                            Swal.fire({
                                title: 'لم تكتمل العمليه ',
                                icon: '?',
                                confirmButtonColor: '#000',
                                position: 'bottom-start',
                                showCloseButton: true,
                            })
                            // Swal.fire({
                            //         title: 'لم تكتمل العمليه ',
                            //         icon: '؟',
                            //         iconHtml: '؟',
                            //         confirmButtonText: 'ok',
                            //         showCancelButton: false,
                            //         showCloseButton: true
                            //         })
                        }
                    });
                }

                function getHeights(sizeId) {
                    $.ajaxSetup({
                        headers: {
                            'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
                        }
                    });

                    $.ajax({
                        url: "{{ route('get.heights') }}",
                        method: 'get',
                        data: {
                            size_id: sizeId
                        },
                        success: function(result) {
                            //CHECK SIZE VALUES
                            //CHECK HEIGHTS VALUE
                            // console.log(result);
                            $('#heights').html(result);
                            $('#heights').show();
                        }
                    });
                }
                //TODO :: WHEN CHOOSE SIZE SHOW HEIGHT
                //TODO :: REFRESH CHECKOUT CART
                //TODO :: ADD & REMOVE FROM CART
            })

            $(document).on('click', '.addToWishList', function(e) {
                var lang = $('html').attr('lang');
                // console.log(lang);
                e.preventDefault();
                @guest()
                    // $('.not-loggedin-modal').css('display','block');
                    // console.log('You are guest'

                    Swal.fire({
                    icon: '?',
                    title:'Login first!',
                    confirmButtonColor: '#000',
                    position:'bottom-start',
                    showCloseButton: true,
                    })
                @endguest
                @auth
                    $.ajax({
                    type: 'get',
                    url:"{{ route('wishlist.store') }}",
                    data:{
                    'productId':$(this).attr('data-product-id'),
                    },
                    success:function (data) {
                    if (data.message){
                    if (lang=="ar") {
                    Swal.fire({
                    icon: '?',
                    title: 'تم اضافه المنتج الى المفضلة بنجاح!',
                    confirmButtonColor: '#000',
                    position:'bottom-start',
                    showCloseButton: true,
                    showConfirmButton: false,
                    timer: 1500
                    })

                    } else {
                    Swal.fire({
                    icon: '?',
                    title: 'Added successfully!',
                    confirmButtonColor: '#000',
                    position:'bottom-start',
                    showCloseButton: true,
                    showConfirmButton: false,
                    timer: 1500
                    })
                    }

                    $(".heart").click(function() {
                    $(this).toggleClass("heart-hover");

                    });

                    }
                    else {
                    // alert('This product already in you wishlist');

                    if (lang=="ar") {
                    Swal.fire({
                    title: 'هذا المنتج بالفعل موجود في المفضلة',
                    icon: '?',
                    confirmButtonColor: '#000',
                    position:'bottom-start',
                    showCloseButton: true,
                    showConfirmButton: false,
                    timer: 1500
                    });

                    } else {
                    Swal.fire({
                    title: 'This product already in your wishlist',
                    icon: '?',
                    confirmButtonColor: '#000',
                    position:'bottom-start',
                    showCloseButton: true,
                    showConfirmButton: false,
                    timer: 1500
                    });

                    }

                    $(".heart").click(function() {
                    $(this).toggleClass("heart-hover");

                    });


                    }
                    }
                    });
                @endauth


            });
        </script>
        <script>
            $('img[data-enlargeable]').addClass('img-enlargeable').click(function() {
                var src = $(this).attr('src');
                var modal;

                function removeModal() {
                    modal.remove();
                    $('body').off('keyup.modal-close');
                }
                modal = $('<div>').css({
                    background: 'RGBA(0,0,0,.5) url(' + src + ') no-repeat center',
                    backgroundSize: 'contain',
                    width: '100%',
                    height: '100%',
                    position: 'fixed',
                    zIndex: '10000',
                    top: '0',
                    left: '0',
                    cursor: 'zoom-out'
                }).click(function() {
                    removeModal();
                }).appendTo('body');
                //handling ESC
                $('body').on('keyup.modal-close', function(e) {
                    if (e.key === 'Escape') {
                        removeModal();
                    }
                });
            });
        </script>
    @endsection
