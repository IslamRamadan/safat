@extends('layouts.front')
@section('title')
    @lang('site.home')

@endsection
@section('content')
    <!-----start  --->
    {{-- @if (Session::has('coupon'))
    {{ dd(session()->get('coupon')) }}
    @endif --}}
    @if (Session::has('cart'))

        <div class="container-fluid "><br><br>
            <div class="row pad  dir-rtl">
                <div class="col-12 col-lg-8 ">
                    <div class=" border text-dir ">
                        <div class=" row mr-0" style="padding-top: 8px">
                            <h3 class=" col-12">@lang('site.shipping_details')</h3>
                        </div>
                        <br>
                        <div class="row mr-0">
                            <form class="form-vertical col-md-12 col-xs-12 " id="orders-form"
                                action="{{ route('order.store') }}" method="post">

                                @csrf
                                <!--<div class="alert alert-success" style="margin-top: -45px;text-align:center"></div>
                                               -->
                                <h6>@lang('site.mandatory')</h6>

                                @guest()
                                    <input value="0" name="user_id" id="Orders_user_id" type="hidden">

                                    <div class="form-group col-12">
                                        <label for="Orders_address_line1" class="required font-weight-bold" style="color:red">
                                            @lang('site.full_name')
                                            <span class="required">*</span></label>
                                        <input class="form-control" placeholder="User Name" name="name" id="Orders_full_name"
                                            value="{{ old('name') }}" type="text">
                                    </div>

                                    <div class="form-group col-12">
                                        <label for="Orders_address_line1" class="required font-weight-bold">
                                            @lang('site.email') <span
                                                class="required">(@lang('site.optional'))</span></label>
                                        <input class="form-control" placeholder="E-mail" name="email" id="Orders_email"
                                            type="email">
                                    </div>


                                    <div class="form-group col-12">
                                        <label for="Orders_address_line1" class="required font-weight-bold"
                                            style="color:red">@lang('site.phone')
                                            <span class="required">*</span>
                                        </label>
                                        <br>
                                        <input id="phone_code" class="form-control" required="required" name="phone"
                                            value="{{ old('phone') }}" type="number" maxlength="11">
                                    </div>
                                    <div class="form-group col-12">
                                        <label for="Orders_country_id" class="required font-weight-bold"
                                            style="color:red">@lang('site.country') <span
                                                class="required">*</span></label>
                                        <select style="height: 45px;    ;" class="form-control" name="country_id"
                                            value="{{ old('country_id') }}" id="Orders_country_id">

                                            @foreach (\App\Country::all() as $country)

                                                <option value="{{ $country->id }}">
                                                    @if (Lang::locale() == 'ar')
                                                        {{ $country->name_ar }}

                                                    @else
                                                        {{ $country->name_en }}


                                                    @endif


                                                </option>

                                            @endforeach


                                        </select>

                                    </div>

                                    <div class="form-group col-12">
                                        <label for="Orders_city_id" class="required font-weight-bold" style="color:red">
                                            @lang('site.city') <span class="required">*</span></label>
                                        <select style="height: 45px; " class="form-control" name="city_id"
                                            id="Orders_city_id">
                                        </select>
                                    </div>
                                    <div class="form-group col-12">
                                        <label for="Orders_region_id" class="required font-weight-bold" style="color:red">
                                            @lang('site.region') <span class="required">*</span></label>
                                        <select style="height: 45px; " class="form-control" name="region"
                                            id="Orders_region_id">
                                        </select>
                                    </div>



                                    {{-- <div  id="test"> --}}
                                    {{-- </div> --}}



                                @else

                                    <input type="hidden" name="user_id" value="{{ Auth::id() }}">
                                    <input type="hidden" name="name" value="{{ Auth::user()->name }}">
                                    <input type="hidden" name="email" value="{{ Auth::user()->email }}">
                                    <input type="hidden" id="Orders_country_id" name="country_id"
                                        value="{{ Auth::user()->country_id }}">
                                    <input type="hidden" name="phone" value="{{ Auth::user()->phone }}">

                                    <div class="form-group col-12">
                                        <label for="Orders_city_id" class="required font-weight-bold" style="color:red">
                                            @lang('site.city') <span class="required">*</span></label>
                                        <select style="height: 45px;   " class="form-control" name="city_id"
                                            id="Orders_city_id">
                                        </select>
                                    </div>
                                    <div class="form-group col-12">
                                        <label for="Orders_region_id" class="required font-weight-bold" style="color:red">
                                            @lang('site.region') <span class="required">*</span></label>
                                        <select style="height: 45px; " class="form-control" name="region"
                                            id="Orders_region_id">
                                        </select>
                                    </div>
                                    <div id="test">
                                    </div>




                                @endguest

                                {{-- <div class="form-group col-12" > --}}
                                {{-- <label for="Orders_postal_code" class="required" style="color:red">@lang('site.postal_code')<span --}}
                                {{-- class="required">*</span></label> --}}
                                <input class="form-control" placeholder="" name="postal_code" id="Orders_postal_code"
                                    value="0" type="hidden">

                                {{-- </div> --}}

                                {{-- <div class="form-group col-12" id="show_national_id" > --}}
                                {{-- <label for="Orders_national_id">@lang('site.ID') </label> --}}
                                {{-- <input class="form-control" placeholder="" name="national_id" --}}
                                {{-- id="Orders_national_id" --}}
                                {{-- value="{{old('national_id')}}" --}}
                                {{-- type="text" maxlength="100"></div> --}}


                                <div class="row">
                                    <div class="form-group col-md-3 col-12">
                                        <label for="jadah" class="required font-weight-bold"
                                            style="color:red">@lang('site.jadah')<span
                                                class="required">*</span></label>
                                        <input class="form-control" placeholder="" name="jadah" id="jadah"
                                            value="{{ old('jadah') }}" type="text" maxlength="255">
                                    </div>
                                    <div class="form-group col-md-3 col-12">
                                        <label for="street" class="required font-weight-bold"
                                            style="color:red">@lang('site.street')<span
                                                class="required">*</span></label>
                                        <input class="form-control" placeholder="" name="street" id="street"
                                            value="{{ old('street') }}" type="text" maxlength="255">
                                    </div>
                                    <div class="form-group col-md-2 col-12">
                                        <label for="building" class="required font-weight-bold"
                                            style="color:red">@lang('site.building')<span
                                                class="required">*</span></label>
                                        <input class="form-control" placeholder="" name="building" id="building"
                                            value="{{ old('building') }}" type="number" maxlength="255">
                                    </div>
                                    <div class="form-group col-md-2 col-12">
                                        <label for="floor" class="required font-weight-bold">@lang('site.floor')<span
                                                class="required">(@lang('site.optional'))</span></label>
                                        <input class="form-control" placeholder="" name="floor" id="floor"
                                            value="{{ old('floor') }}" type="number" maxlength="255">
                                    </div>
                                    <div class="form-group col-md-2 col-12">
                                        <label for="flat" class="required font-weight-bold">@lang('site.flat')<span
                                                class="required">(@lang('site.optional'))</span></label>
                                        <input class="form-control" placeholder="" name="flat" id="flat"
                                            value="{{ old('flat') }}" type="number" maxlength="255">
                                    </div>
                                </div>


                                <input type="hidden" name="total_price">
                                <input type="hidden" name="total_quantity">

                                <br>
                                {{-- <input value="2021-01-20 03:16:46" name="Orders[created_at]" id="Orders_created_at" --}}
                                {{-- type="hidden"> --}}
                                <div class="form-actions text-center">
                                    <button class="btn btn-third-col bg-b"
                                        type="submit">@lang('site.complete_purshase')</button>

                                </div>

                            </form>

                        </div>
                        @if (!Session::has('coupon'))

                            <div class="row justify-content-center text-dir ml-4 mr-4">
                                <form action="{{ route('coupon.store') }}">
                                    @csrf
                                    <label class="font-weight-bold">@lang('site.have_coupon')</label>
                                    <input id="coupon" type="text"
                                        class="form-control @error('coupon') is-invalid @enderror" name="coupon"
                                        autocomplete="coupon">
                                    <p style="color: red">@lang('site.coupon_notice')</p>
                                    @if ($errors->any())
                                        {{-- @dd('ok') --}}

                                        {!! implode('', $errors->all('<div class="alert alert-danger"> :message</div>')) !!}
                                    @endif
                                    @if (session()->has('success_message'))
                                        <div class="alert alert-success">
                                            {{ session()->get('success_message') }}
                                        </div>
                                    @endif
                                    <button type="submit" class="btn btn-third-col bg-b">@lang('site.apply')</button>

                                </form>

                            </div>
                        @endif
                    </div>
                </div>
                @if (count(Session::get('cart')) < 1)
                    <div class="col-12 col-lg-4 ">
                        <div class=" border text-dir">
                            <div class="bg-b row mr-0">
                                <h3 class=" col-12 "
                                    style="text-align: center;width: 100%;font-size: 18px;font-weight: bold">
                                    @lang('site.bin_empty')
                                </h3>
                            </div>
                            <br>
                        </div>
                    @else
                        <div class="col-12 col-lg-4 ">
                            <div class=" border text-dir" style="text-align: left">
                                <div class="bg-b row mr-0" style="padding-top: 8px">
                                    <h3 class=" col-12 " style="text-align: center"> @lang('site.order_summary')</h3>
                                </div>
                                <br>
                                @foreach (Session::get('cart') as $cart_parent)
                                    {{-- @foreach ($cart_parent as $key => $cart_child) --}}
                                    <div class="row border-bottom mr-0 p-3">
                                        <a href="{{ route('product', $cart_parent['product_id']) }}"
                                            class=" col-3 pad-0">
                                            <img alt=" T-shirts"
                                                src="{{ asset('storage/' . \App\Product::find($cart_parent['product_id'])['img']) }}"
                                                class="w-100">
                                        </a>
                                        <div class="col-9">
                                            <a href="{{ route('product', $cart_parent['product_id']) }}">
                                                {{ \App\Product::find($cart_parent['product_id'])['title_en'] }}

                                            </a>
                                            <p class="font-weight-bold">
                                                @lang('site.price'):


                                                @auth()
                                                    {{ Auth::user()->getPrice(\App\Product::find($cart_parent['product_id'])['price']) }}
                                                    @if (Lang::locale() == 'en')
                                                        {{ Auth::user()->country->currency->code }}
                                                    @else
                                                        {{ Auth::user()->country->currency->code_ar }}

                                                    @endif

                                                @endauth
                                                @guest()
                                                    @if (Cookie::get('name'))
                                                        {{ number_format(\App\Product::find($cart_parent['product_id'])['price'] / App\Country::find(Cookie::get('name'))->currency->rate,2) }}
                                                        @if (Lang::locale() == 'en')
                                                            {{ App\Country::find(Cookie::get('name'))->currency->code }}
                                                        @else
                                                            {{ App\Country::find(Cookie::get('name'))->currency->code_ar }}

                                                        @endif
                                                    @else
                                                        {{ \App\Product::find($cart_parent['product_id'])['price'] }}
                                                        @lang('site.kwd')
                                                    @endif
                                                @endguest

                                                <br>
                                                @lang('site.quantity')
                                                : {{ $cart_parent['quantity'] }}
                                                <br>
                                                {{-- @lang('site.size'):
                                                    {{ $cart_parent['product_size_id'] == 0 ? __('site.is_cart_custm') : \App\ProdSize::find($cart_child['product_size_id'])->size['name'] }}
                                                    <br> --}}
                                                {{-- @if (Lang::locale() == 'en')
                                                    @lang('site.color'): {{ \App\ProdColor::find($cart_child['color'])->color->name_en }} <br>
                                                    @else
                                                    @lang('site.color'): {{ \App\ProdColor::find($cart_child['color']) ? \App\ProdColor::find($cart_child['color'])->color->name_ar : '-'}} <br>

                                                        @endif --}}
                                                @lang('site.code'): {{ $cart_parent['product_id'] }} <br>
                                            </p>
                                        </div>
                                    </div>
                                    {{-- @endforeach --}}
                                @endforeach
                                <div class="row  dir-rtl">
                                    <div class="col-12 mt-3" style="text-align: left">
                                        @if (Session::has('cart_details'))
                                            <p style="display:flex;justify-content: space-between">


                                                <span class="font-weight-bold">
                                                    @lang('site.total_quantity')
                                                    :
                                                </span>
                                                <span> {{ Session::get('cart_details')['totalQty'] }}</span>
                                            </p>


                                            <p style="display:flex;justify-content: space-between">

                                                <span class="font-weight-bold">
                                                    @lang('site.total_price'):
                                                </span>
                                                {{-- <input type="hidden" value="{{Session::get('cart_details')['totalPrice']}}" id="total_value"> --}}
                                                <span>
                                                    {{-- {{Session::get('cart_details')['totalPrice']}} @lang('site.kwd') --}}
                                                    @auth()
                                                        {{ Auth::user()->getPrice(Session::get('cart_details')['totalPrice']) }}
                                                        @if (Lang::locale() == 'en')
                                                            {{ Auth::user()->country->currency->code }}
                                                        @else
                                                            {{ Auth::user()->country->currency->code_ar }}

                                                        @endif
                                                    @endauth
                                                    @guest()
                                                        @if (Cookie::get('name'))
                                                            {{ number_format(Session::get('cart_details')['totalPrice'] / App\Country::find(Cookie::get('name'))->currency->rate,2) }}
                                                            @if (Lang::locale() == 'en')
                                                                {{ App\Country::find(Cookie::get('name'))->currency->code }}
                                                            @else
                                                                {{ App\Country::find(Cookie::get('name'))->currency->code_ar }}

                                                            @endif
                                                        @else
                                                            {{ Session::get('cart_details')['totalPrice'] }}
                                                            @lang('site.kwd')
                                                        @endif
                                                    @endguest
                                                </span>
                                            </p>


                                            @if (Session::has('coupon'))
                                                <p>
                                                <div class="d-flex justify-content-between">
                                                    <div><span class="font-weight-bold">
                                                            @lang('site.coupon'):
                                                        </span>
                                                        <span>
                                                            <form action="{{ route('coupon.destroy') }}" method="POST"
                                                                style="display: inline">
                                                                {{ csrf_field() }}
                                                                {{ method_field('delete') }}
                                                                <button type="submit"
                                                                    class="btn btn-link text-danger font-weight-bold">@lang('site.delete')</button>
                                                            </form>
                                                        </span>

                                                    </div>
                                                    <div><span style="color: red">
                                                            {{-- {{Session::get('cart_details')['totalPrice']}} @lang('site.kwd') --}}
                                                            -
                                                            @auth()
                                                                {{ Auth::user()->getPrice(Session::get('coupon')['discount']) }}
                                                                @if (Lang::locale() == 'en')
                                                                    {{ Auth::user()->country->currency->code }}
                                                                @else
                                                                    {{ Auth::user()->country->currency->code_ar }}

                                                                @endif
                                                            @endauth
                                                            @guest()
                                                                @if (Cookie::get('name'))
                                                                    {{ number_format(Session::get('coupon')['discount'] / App\Country::find(Cookie::get('name'))->currency->rate,2) }}
                                                                    @if (Lang::locale() == 'en')
                                                                        {{ App\Country::find(Cookie::get('name'))->currency->code }}
                                                                    @else
                                                                        {{ App\Country::find(Cookie::get('name'))->currency->code_ar }}

                                                                    @endif
                                                                @else
                                                                    {{ Session::get('coupon')['discount'] }}
                                                                    @lang('site.kwd')
                                                                @endif
                                                            @endguest
                                                        </span></div>
                                                </div>
                                                </p>
                                            @endif


                                            <p style="display:flex;justify-content: space-between">
                                                <span class="font-weight-bold">
                                                    @lang('site.shipping'):

                                                </span>

                                                <span id="test1"></span>
                                            </p>

                                            <p style="display:flex;justify-content: space-between">
                                                <span class="font-weight-bold">
                                                    @lang('site.ship_period')
                                                    :
                                                </span>
                                                <span id="delivery"></span>
                                            </p>


                                            <p style="display:flex;justify-content: space-between">

                                                <span class="font-weight-bold">
                                                    @if (Session::has('coupon'))
                                                        @lang('site.total_price_after'):
                                                    @else
                                                        @lang('site.total_price'):
                                                    @endif
                                                </span>
                                                <input type="hidden"
                                                    value="{{ Session::get('cart_details')['totalPrice'] - Session::get('coupon')['discount'] }}"
                                                    id="total_value">
                                                <span id="total" style="color: red">
                                                    {{-- {{Session::get('cart_details')['totalPrice']}} @lang('site.kwd') --}}
                                                </span>
                                            </p>


                                        @endif
                                        <br>
                                    </div>
                                </div>
                            </div>
                            @if (!Session::has('coupon'))

                                <div class="text-dir m-2">
                                    <form action="{{ route('coupon.store') }}">
                                        @csrf
                                        <label class="font-weight-bold">@lang('site.have_coupon')</label>
                                        <input id="coupon" type="text"
                                            class="form-control @error('coupon') is-invalid @enderror" name="coupon"
                                            autocomplete="coupon">
                                        <p style="color: red">@lang('site.coupon_notice')</p>
                                        @if ($errors->any())
                                            {{-- @dd('ok') --}}

                                            {!! implode('', $errors->all('<div class="alert alert-danger"> :message</div>')) !!}
                                        @endif
                                        @if (session()->has('success_message'))
                                            <div class="alert alert-success">
                                                {{ session()->get('success_message') }}
                                            </div>
                                        @endif
                                        <button type="submit" class="btn btn-third-col bg-b">@lang('site.apply')</button>

                                    </form>

                                </div>
                            @endif

                        </div>



                @endif

            </div><br><br>
        </div>

    @else
        <div class="col-sm-12 ">
            <div class=" border text-dir">
                <div class=" row mr-0 mt-3">

                    <h3 class=" col-12 "
                        style="text-align: center;width: 100%;font-size: 18px;font-weight: bold;padding: 20px">
                        ?????????? ??????????</h3>
                </div>
            </div>
    @endif
    <!--- end  --->

@endsection


@section('script')

    <script>
            var lang = $('html').attr('lang');

        $(document).ready(function() {



            getCities();

            $('#Orders_country_id').on('change',
                function() {
                    getCities();
                }
            )


            function getCities() {
                var country = $('#Orders_country_id').val() ? $('#Orders_country_id').val() : 1;

                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
                    }
                });

                $.ajax({
                    url: "{{ route('get.cities') }}",
                    method: 'post',
                    data: {
                        _token: "{{ csrf_token() }}",
                        country: country
                    },
                    success: function(result) {
                        // console.log(result);

                        if (!result.success) {
                            Swal.fire({
                                icon: '?',
                                confirmButtonColor: '#ec7d23',
                                position: 'bottom-start',
                                showCloseButton: true,
                                title: result.msg,
                            })
                        } else {

                            $('#Orders_city_id').html(result.cities)


                            getDelivery();

                        }

                    },
                    error: function(error) {
                        if (lang == "ar") {
                            Swal.fire({
                                title: '???? ?????????? ?????????????? ',
                                icon: '?',
                                confirmButtonColor: '#ec7d23',
                                position: 'bottom-start',
                                showCloseButton: true,
                            })
                        } else {
                            Swal.fire({
                                title: 'Procces not completed. ',
                                icon: '?',
                                confirmButtonColor: '#ec7d23',
                                position: 'bottom-start',
                                showCloseButton: true,
                            })

                        }

                    }
                });

            }
            getRegions();

            $('#Orders_city_id').on('change',
                function() {
                    getRegions();
                }
            )


            function getRegions() {
                var city = $('#Orders_city_id').val() ? $('#Orders_city_id').val() : 1;

                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
                    }
                });

                $.ajax({
                    url: "{{ route('get.regions') }}",
                    method: 'post',
                    data: {
                        _token: "{{ csrf_token() }}",
                        city: city
                    },
                    success: function(result) {
                        // console.log(result);

                        if (!result.success) {
                            Swal.fire({
                                icon: '?',
                                confirmButtonColor: '#ec7d23',
                                position: 'bottom-start',
                                showCloseButton: true,
                                title: result.msg,
                            })
                        } else {

                            $('#Orders_region_id').html(result.regions)


                            getDelivery();

                        }

                    },
                    error: function(error) {
                        if (lang == "ar") {
                            Swal.fire({
                                title: '???? ?????????? ?????????????? ',
                                icon: '?',
                                confirmButtonColor: '#ec7d23',
                                position: 'bottom-start',
                                showCloseButton: true,
                            })
                        } else {
                            Swal.fire({
                                title: 'Procces not completed. ',
                                icon: '?',
                                confirmButtonColor: '#ec7d23',
                                position: 'bottom-start',
                                showCloseButton: true,
                            })

                        }

                    }
                });

            }


            getDelivery();

            $('#Orders_city_id').on('change',
                function() {
                    getDelivery();
                }
            )


            function getDelivery() {
                var city = $('#Orders_city_id').val() ? $('#Orders_city_id').val() : 1;
                var total_value = $('#total_value').val() ? $('#total_value').val() : 1;

                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
                    }
                });

                $.ajax({
                    url: "{{ route('get.delivery') }}",
                    method: 'post',
                    data: {
                        _token: "{{ csrf_token() }}",
                        city: city,
                        total_value: total_value
                    },
                    success: function(result) {

                        // console.log(result);
                        if (!result.success) {
                            Swal.fire({
                                icon: '?',
                                confirmButtonColor: '#ec7d23',
                                position: 'bottom-start',
                                showCloseButton: true,
                                title: result.msg,
                            })
                        } else {

                            // alert(result.delivery);
                            //                            $('#Orders_city_id').html(result.cities)
                            $('#delivery').html(result.delivery)
                            $('#test1').html(result.ship)
                            $('#total').html(result.total_value)
                            //                            console.log(result.total_value)
                        }

                    },
                    error: function(error) {
                        if (lang == "ar") {
                            Swal.fire({
                                title: '???? ?????????? ?????????????? ',
                                icon: '?',
                                confirmButtonColor: '#ec7d23',
                                position: 'bottom-start',
                                showCloseButton: true,
                            })
                        } else {
                            Swal.fire({
                                title: 'Procces not completed. ',
                                icon: '?',
                                confirmButtonColor: '#ec7d23',
                                position: 'bottom-start',
                                showCloseButton: true,
                            })

                        }

                    }
                });

            }
        })
    </script>


@endsection
