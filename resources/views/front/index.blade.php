@extends('layouts.front')
@section('title')
    @lang('site.home')

@endsection
@section('content')
    <style>
     img.w-100.img-product {
            height: 80px !important;
            width: 80px !important;
        }
         button#btn_convert {
            background-color: DodgerBlue;
            border: none;
            color: white;
            /* padding: 12px 30px; */
            cursor: pointer;
            /* font-size: 20px; */
            margin-top: 15px;
            margin-bottom: -15px;
        }
        @media (min-width: 0px) and (max-width: 425px) {

            .h {
                height: 30vh !important;
                object-fit: fill;
                margin-top: 0;
            }

            .carousel-inner {
                height: 30%;
            }

            .carousel {
                margin-top: 20px;
            }

            .new1 {
                margin-bottom: -75px;
                /* margin-top: 3px; */
            }
              button#btn_convert {

                margin-top: 25px;
            }
        }

        @media (min-width: 425px) and (max-width: 600px) {
            .h {
                height: 40vh !important;
                object-fit: fill;
                margin-top: 0 !important;
            }

            .carousel-inner {
                height: 50%;
            }

            .carousel {
                margin-top: -20px;
            }

            button#btn_convert {

                margin-top: 25px;
            }
        }

        @media (min-width: 425px) and (max-width: 571px) {
            .h {
                height: 35vh !important;
                object-fit: fill;
                margin-top: 80px !important;
            }

            .carousel-inner {
                height: 48%;
            }

            .carousel {
                margin-top: -20px;
            }
            button#btn_convert {

                margin-top: 25px;
            }
        }

        @media (min-width: 601px) and (max-width: 820px) {
            .h {
                height: 40vh !important;
                object-fit: fill;
            }

            .carousel-indicators {
                bottom: -17px !important;
            }

            .new1 {
                padding-top: 6vh;
            }

            .carousel-inner {
                height: 40%;
            }
            button#btn_convert {

                margin-top: 25px;
            }
        }

    </style>
    <?php use App\User; ?>
    {{-- {{ dd(Auth::user()->country->name_ar)}} --}}
    <script src="{{asset('front/js/html-5-con.js')}}"></script>

    @if (session()->get('order')  )
        <?php $invoice = session()->get('order'); ?>
        {{-- <h1>The name of fatorah is {{session()->get( 'order' )->name}}</h1> --}}
         <div class="col-md-12 text-center">
            <button id="btn_convert"  class="btn" name-file="@lang('site.order_summary')-{{$invoice->invoice_id}}"><i class="fa fa-download"></i> Download</button>
        </div>
        <div class="  col-md-5 d-md-block"id="html-content-holder" style="margin: 20px auto !important">
            <div class="alert alert-info text-center" role="alert">
                  @lang('site.order_comp_notf');
                </div>
            <div class="table_block table-responsive dir-rtl">
                <table class="table table-bordered">
                    <thead class="btn-dark">

                        <tr>
                            <th colspan="2" class="text-center">@lang('site.order_summary')</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                        <tr>
                            <th scope="row" class="btn-dark">@lang('site.invoice_id')</th>
                            <td>{{ $invoice->invoice_id }}</td>

                        </tr>
                        <tr>
                            <th scope="row" class="btn-dark">@lang('site.total_price')</th>
                            <td>{{ $invoice->total_price }} @lang('site.kwd')</td>

                        </tr>
                        <tr>
                            <th scope="row" class="btn-dark">@lang('site.total_quantity')</th>
                            <td>{{ $invoice->total_quantity }}</td>

                        </tr>
                        <tr>
                            <th scope="row" class="btn-dark">@lang('site.images_order')</th>
                            <td>
                                @foreach($invoice->order_items as $item )


                                @if($item->product != null)
                                <img class=" w-100 img-product " src="{{ asset('storage/' . $item->product->img ) }}" alt=""
                                        style="height: 70vh">

                                @endif


                                @endforeach
                            </td>
                        </tr>
                        <tr>
                            <th scope="row" class="btn-dark">@lang('site.name')</th>
                            <td>{{ $invoice->name }}</td>

                        </tr>
                        <tr>
                            <th scope="row" class="btn-dark">@lang('site.phone')</th>
                            <td>{{ $invoice->phone }}</td>

                        </tr>




                        <tr>
                            <th scope="row" class="btn-dark">@lang('site.date_of_order')</th>
                            <td style="">{{ date('A h:m d-m-Y ' ,strtotime($invoice->created_at)) }}</td>

                        </tr>

                    </tbody>
                </table>
            </div>
        </div>

        <div  class="d-none" id="previewImg">
        </div>







        {{ Session::forget('order') }}

        {{-- @dd( "The name of fatorah is ".session()->get( 'order' )->name) --}}
        {{-- @dd( "The name of fatorah is ".session()->get( 'order' )->name) --}}

    @endif

    {{-- <div class="text-dir new1 " style="background-image:url({{ asset('/storage/' . $my_setting->ad_image) }})">

        <h1 class="c-w">

        </h1>
        <p class="c-w ">

        </p>

    </div> --}}

    <!-----start carousel --->
    <div id="carouselExampleIndicators" class="carousel slide relative" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>

        <div class="carousel-inner">
            <?php
            $i = 0;
            ?>
            @foreach ($sliders as $one)
                <div class="carousel-item  @if ($i == 0) active @endif ">
                    <img class=" w-100 h " src="{{ asset('storage/' . $one->img) }}" alt="1 slide"
                        style="height: 60vh">
                    @if (app()->getLocale() == 'en')
                        <div class="abs w-100">
                            <p class="c-w mr-0"></p>
                            <h1 class=""> </h1>
                            {{-- <button class=" btn btn-danger">@lang('site.shop_now') <i class="far fa-heart"></i></button> --}}
                    </div> @else
                        <div class="abs w-100">
                            <p class="c-w mr-0"></p>
                            <h1 class=""> </h1>
                            {{-- <button class=" btn btn-danger">@lang('site.shop_now') <i class="far fa-heart"></i></button> --}}
                        </div>
                    @endif


                </div>
                <?php
                $i++;
                ?>
            @endforeach


        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon " aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <!--- end head --->
    <br>

    <div class="container pad-0 ">

        <br>
        <h2 class="text-center  d-flex justify-content-between">
            <b></b>
            <span>
                @lang('site.basic_categories')
            </span>
            <b></b>
        </h2>
        {{-- <br><br> --}}

        <div class="row">



            <div class="blog-slides owl-carousel test owl-theme owl-loaded owl-drag">









                <div class="owl-stage-outer">
                    <div class="owl-stage"
                        style="transform: translate3d(-2280px, 0px, 0px); transition: all 0.25s ease 0s; width: 4180px;">
                        @if ($system_basic_categories->count() > 0)

                            @foreach ($system_basic_categories as $b)
                                <div class="owl-item active" style="width: 350px; margin-right: 30px;">
                                    <div class="single-blog-post mb-30">
                                        <div class="post-image">
                                            <a href="{{ route('category', [1, $b->id]) }}" class="d-block">
                                                <img src="{{ asset('/storage/' . $b->image_url) }}" alt="image">
                                            </a>

                                            <!-- <div class="tag">
                                        <a href="#">Management</a>
                                    </div> -->
                                        </div>

                                        <div class="post-content text-center">

                                            <h3><a href="single-blog.html" class="d-inline-block">
                                                    @if (app()->getLocale() == 'en')
                                                        {{ $b->name_en }}
                                                    @else
                                                        {{ $b->name_ar }}
                                                    @endif
                                                </a></h3>
                                            {{-- <h6><a href="single-blog.html" class="d-inline-block">How to enhance education </a></h6> --}}
                                            {{-- <h3><a href="single-blog.html" class="d-inline-block">120 KWD</a></h3> --}}
                                            <!-- <a href="single-blog.html" class="read-more-btn">Read More <i class='bx bx-right-arrow-alt'></i></a> -->
                                        </div>
                                    </div>
                                </div>
                            @endforeach

                        @endif


                    </div>
                </div>
                <div class="owl-nav"><button type="button" role="presentation" class="owl-prev">
                        <span aria-label="Previous">‹</span></button><button type="button" role="presentation"
                        class="owl-next"><span aria-label="Next">›</span></button></div>
                <div class="owl-dots disabled"></div>
            </div>
        </div>


    </div>
    {{-- <br><br> --}}
    </div>






    <div class="container pad-0 ">

        <br>
        <h2 class="text-center  d-flex justify-content-between">
            <b></b>
            <span class="d-none d-md-block">@lang('site.fashion_world')

            </span>
            <b></b>
        </h2>
        <br class="d-none d-md-block">
        <br class="d-none d-md-block">

        <div class="row justify-content-between">
            @if (Lang::locale() == 'en')

            <div class="col-lg-3 col-md-3 col-sm-12 pad-0 fashion text-dir">
                <br>
                <h1>@lang('site.new_arrival')</h1>

                <p>@lang('site.discover_new') </p>
                <a href="{{route('new')}}">
                <button class="gq gr gs dg ck dh di cn gt c gu gv cq p cr gw gx gy">
                    <div class="text-center">@lang('site.new_in')</div>
                </button>
            </a>
            </div>
            @endif

            <div class="col-lg-8 col-md-8 col-sm-12   pad-0">
                <div class="blog-slides owl-carousel owl-theme owl-loaded owl-drag">


                    <div class="owl-stage-outer">

                        <div class="owl-stage"
                            style="transform: translate3d(-2280px, 0px, 0px); transition: all 0.25s ease 0s; width: 4180px;">

                            @foreach ($new_arrive as $p)
                                <div class="owl-item active" style="width: 350px; margin-right: 30px;">

                                    <div class="single-blog-post mb-30">
                                        <div class="post-image">
                                            <a href="{{ route('product', $p->id) }}" class="d-block img-hover">
                                                <img src="{{ asset('/storage/' . $p->img) }}" alt="image"
                                                    class="image">
                                                <div class="middle">
                                                    <div class="btn btn-danger">@lang('site.add_to_cart')</div>
                                                </div>
                                            </a>

                                            <!-- <div class="tag">
                                            <a href="#">Management</a>
                                        </div> -->
                                        </div>

                                        <div class="post-content text-dir">

                                            <h3><a href="{{ route('product', $p->id) }}" class="d-inline-block">
                                                    @if (Lang::locale() == 'ar')
                                                        {{ $p->title_ar }}

                                                    @else

                                                        {{ $p->title_en }}

                                                    @endif
                                                </a></h3>
                                            <h6><a href="{{ route('product', $p->id) }}"
                                                    class="d-inline-block main-color">
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
                                            <h3><a href="{{ route('product', $p->id) }}" class="d-inline-block dir-rtl">
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
                                                </a></h3>
                                            <!-- <a href="single-blog.html" class="read-more-btn">Read More <i class='bx bx-right-arrow-alt'></i></a> -->
                                        </div>
                                    </div>

                                </div>
                            @endforeach



                        </div>

                    </div>
                    <div class="owl-nav"><button type="button" role="presentation" class="owl-prev">
                            <span aria-label="Previous">‹</span></button><button type="button" role="presentation"
                            class="owl-next"><span aria-label="Next">›</span></button></div>
                    <div class="owl-dots disabled"></div>
                </div>

            </div>
            @if (Lang::locale() == 'ar')

            <div class="col-lg-3 col-md-3 col-sm-12 pad-0 fashion text-dir">
                <br>
                <h1>@lang('site.new_arrival')</h1>

                <p>@lang('site.discover_new') </p>
                <a href="{{route('new')}}">
                <button class="gq gr gs dg ck dh di cn gt c gu gv cq p cr gw gx gy">
                    <div class="text-center">@lang('site.new_in')</div>
                </button>
            </a>
            </div>
            @endif
        </div>
        {{-- <br><br> --}}
    </div>


{{-- All products section start --}}

<div class="container pad-0 ">

    <br>
    <h2 class="text-center  d-flex justify-content-between">
        <b></b>
        <span>
            @lang('site.products')
        </span>
        <b></b>
    </h2>
    {{-- <br><br> --}}
<div class="row text-center dir-rtl">
    @if (App\Product::count() > 0)
        @foreach (App\Product::select('id','title_en','title_ar','description_en','description_ar','appearance','price','img')->where('appearance',1)->get() as $p)
            @if ($p)
                @if ($p->appearance == 1)

                    <div class="col-6 col-md-6 col-lg-4">
                        <div class=" product relative text-dir mb-3">

                            {{-- <div class="  heart ">
                    <a href="#" class="addToWishList text-white" data-product-id="{{$p->id}}">
                        <i class="far fa-heart "></i>
                    </a>

                </div> --}}

                            <a href="{{ route('product', $p->id) }}" class="image-hover ">
                                <div style="position: relative">
                                    <img src="{{ asset('/storage/' . $p->img) }}"
                                        onerror="this.onerror=null;this.src='{{ asset('front/img/3.jpg') }}'"
                                        width="100%" class="show-img image">
                                    <div class="middle">
                                        <div class="btn btn-danger">@lang('site.add_to_cart')</div>
                                    </div>
                                    @if ($img = App\ProdImg::where('product_id', $p->id)->first())
                                        <img src="{{ asset($img->img) }}" width="100%"
                                            class="hide-img image">
                                        <div class="middle">
                                            <div class="btn btn-danger">@lang('site.add_to_cart')</div>
                                        </div>
                                    @else
                                        <img src="{{ asset('/storage/' . $p->img) }}" width="100%"
                                            class="hide-img image">
                                        <div class="middle">
                                            <div class="btn btn-danger">@lang('site.add_to_cart')</div>
                                        </div>
                                    @endif
                                </div>
                            </a>
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
                            <h5>


                                @auth()
                                    {{ Auth::user()->getPrice($p->price) }}
                                    @if (Lang::locale() == 'en')
                                        {{ Auth::user()->country->currency->code }}
                                    @else
                                        {{ Auth::user()->country->currency->code_ar }}

                                    @endif @endauth
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
                            </div>

                        </div>

                    @endif

                @endif
            @endforeach

        @else
            <h5 style="text-align: center;margin: auto">
                @lang('site.no_data')
            </h5>
        @endif

    </div>
</div>
{{-- All products section End --}}







    <script>
        $(document).on('click', '.addToWishList', function(e) {

            e.preventDefault();
            @guest()
                // $('.not-loggedin-modal').css('display','block');
                // console.log('You are guest'

                {{-- {{\RealRashid\SweetAlert\Facades\Alert::error('error', 'Please Login first!')}} --}}
                Swal.fire({

                icon: '?',
                title:'Login first!',
                confirmButtonColor: '#ec7d23',
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
                Swal.fire({
                icon: '?',
                confirmButtonColor: '#ec7d23',
                position:'bottom-start',
                showCloseButton: true,
                title: 'Added successfully!',
                showConfirmButton: false,
                timer: 1500
                })
                {{-- {{\RealRashid\SweetAlert\Facades\Alert::error('ok', 'ok!')}} --}}

                }
                else {
                // alert('This product already in you wishlist');
                Swal.fire({
                icon: '?',
                confirmButtonColor: '#ec7d23',
                position:'bottom-start',
                showCloseButton: true,
                title: 'This product already in you wishlist',
                showConfirmButton: false,
                timer: 1500
                })

                {{-- {{\RealRashid\SweetAlert\Facades\Alert::error('no', 'this product added already!')}} --}}

                }
                }
                });
            @endauth


        });

       document.getElementById("btn_convert").addEventListener("click", function() {
           var name_file =$(this).attr('name-file')+".jpg";
           console.log(name_file);
    		html2canvas(document.getElementById("html-content-holder"),
    			{
    				allowTaint: true,
    				useCORS: true
    			}).then(function (canvas) {
    				var anchorTag = document.createElement("a");
    				document.body.appendChild(anchorTag);
    				document.getElementById("previewImg").appendChild(canvas);
    				anchorTag.download = name_file;
    				anchorTag.href = canvas.toDataURL();
    				anchorTag.target = '_blank';
    				anchorTag.click();
    			});
      });


    </script>
@endsection
