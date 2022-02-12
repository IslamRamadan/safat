@extends('layouts.front')
@section('title')
    @lang('site.home')

@endsection
@section('content')

    <!-----start  --->
    <div class="container ">
        <div class="row dir-rtl text-dir">
            <div class="col-md-4 center">
                <h2 style="margin-top: 20px">
                    {{-- @if (app()->getLocale() == 'en')
                        {{ $new_arrivals->name_en }} --}}
                    @lang('site.search_res') <span style="color: rgb(32, 137, 223)">{{$search}}</span>
                    {{-- @else
                        {{ $new_arrivals->name_ar }}
                    @endif --}}
                </h2>
                <nav class="navbar navbar-expand pad-0 center">
                    <ul class="navbar-nav center" style="padding-inline-start: 0px">
                        <li class="nav-item "><a class="nav-link c-light" href="{{ route('/') }}">

                                @if (app()->getLocale() == 'en')
                                    HOME / @lang('site.search_res') <span>{{$search}}</span>
                                @else
                                    الرئيسيه / @lang('site.search_res')<span>{{$search}}</span>
                                @endif
                            </a></li>





                    </ul>
                </nav>
            </div>

        </div>
    </div>

    <div class="container">
        @if ($new_arrivals->count() > 0)
        <div class="row dir-rtl ">



            <div class="row text-center">

                    @foreach ($new_arrivals as $p)
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
                                                    <img src="{{ asset($img->img) }}" width="100%" class="hide-img image">
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
                                                {{ Auth::user()->country->currency->code }}
                                            @endauth
                                            @guest()
                                                @if (Cookie::get('name'))
                                                    {{ number_format($p->price / App\Country::find(Cookie::get('name'))->currency->rate, 2) }}
                                                    {{ App\Country::find(Cookie::get('name'))->currency->code }}
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
                <div class="row dir-rtl justify-content-center m-4 ">



                    <div class="row text-center">
                    <h1 style="text-align: center;margin: auto">
                        @lang('site.no_data')
                    </h1>
                @endif

            </div>
            <br><br>


        </div>
    </div>



@endsection
