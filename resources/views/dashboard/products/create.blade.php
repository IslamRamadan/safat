@extends('dashboard.layouts.app')
@section('page_title')  @lang('site.add_product')
@endsection

@section('content')
{{--    {{dd($sizes)}}--}}
    <form class="card col-md-12 col-12" style="margin: auto" action="{{route('products.store')}}" method="post" enctype="multipart/form-data">
        @csrf

        <div class="card-body text-dir">


            <div class="d-flex justify-content-center">
            {{-- <div class="form-group ">
                <div class="col-md-12 d-flex justify-content-center ">
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" name="is_order" value="1" id="is_order" {{ old('is_order') ? 'checked' : '' }}>

                        <label class="form-check-label" for="is_order">
                            @lang('site.is_order')
                        </label>
                    </div>
                </div>
            </div> --}}
            {{-- <div class="form-group  for_order  {{ old('is_order') ? '' : 'd-none' }} ">
                <div class="col-md-12 d-flex justify-content-center ">
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" name="order_type" value="1" id="order_type" {{ old('order_type') ? 'checked' : '' }}>

                        <label class="form-check-label" for="order_type">
                            @lang('site.order_type')
                        </label>
                    </div>
                </div>
            </div> --}}


            <div class="form-group">
                <div class="col-md-12 d-flex justify-content-center ">
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" name="new" value="1" id="new" >

                        <label class="form-check-label" for="new">
                                          @lang('site.new_arrival')
                        </label>
                    </div>
                </div>
            </div>

            <div class="form-group ">
                <div class="col-md-12 d-flex justify-content-center ">
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" name="appearance" value="1" id="appearance" {{ old('appearance') ? 'checked' : '' }}>

                        <label class="form-check-label" for="appearance">
                            @lang('site.appear')
                        </label>
                    </div>
                </div>
            </div>
            <div class="form-group ">
                <div class="col-md-12 d-flex justify-content-center ">
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" name="best_selling" value="1" id="best_selling" {{ old('best_selling') ? 'checked' : '' }}>

                        <label class="form-check-label" for="best_selling">
                            @lang('site.best_selling')
                        </label>
                    </div>
                </div>
            </div>
        </div>


            <div class="d-flex flex-wrap">
            <div class="form-group col-6">
                <label for="basic_category_id">
                    @lang('site.basic_cat')

                </label>

                <select name="basic_category_id"    class="form-control @error('basic_category_id') is-invalid @enderror" id="basic_category_id">
                    <option value="">
                        @lang('site.choose_cat')
                    </option>
                    @foreach($basic_categories as $basic_category)


                        <option value="{{$basic_category->id}}">
                            {{$basic_category->name_en}} &nbsp; - &nbsp; {{$basic_category->name_ar}}
                        </option>


                    @endforeach
                </select>
            </div>

            <div class="form-group col-6">
                <label for="category_id">
                    @lang('site.cat')
                </label>

                <select name="category_id"    class="form-control @error('category_id') is-invalid @enderror" id="category_id" >
                    {{--@foreach($categories as $category)--}}


                        <option value=""></option>


                    {{--@endforeach--}}
                </select>
            </div>


            <div class="form-group col-6">
                <label for="title_ar">
                    @lang('site.title_ar')

                </label>
                <input value="{{ old('title_ar') }}"  type="text" name="title_ar"
                       class="form-control @error('title_ar') is-invalid @enderror" id="title_ar">
            </div>

            <div class="form-group col-6">
                <label for="title_en">

                    @lang('site.title_en')

                </label>
                <input value="{{ old('title_en') }}"  type="text" name="title_en"
                       class="form-control @error('title_en') is-invalid @enderror" id="title_en">
            </div>



            <div class="form-group col-12">
                <label for="name">

                    @lang('site.description_ar')
                </label>
                <textarea name="description_ar" class="form-control @error('description_ar') is-invalid @enderror" id="description_ar">{{ old('description_ar') }}</textarea>
            </div>



            <div class="form-group col-12">
                <label for="name">

                    @lang('site.description_en')
                </label>
                <textarea name="description_en" class="form-control @error('description_en') is-invalid @enderror" id="description_ar">{{ old('description_en') }}</textarea>

            </div>



            <div class="form-group col-md-2 col-sm-12">
                <label for="price">

                    @lang('site.price')


                </label>
                <input value="{{ old('price') }}"  type="text" name="price" type="number" step=".01"
                       class="form-control @error('price') is-invalid @enderror" id="price">
            </div>
            <div class="form-group col-md-2 col-sm-12">
                <label for="quantity">

                    @lang('site.quantity')


                </label>
                <input value="{{ old('quantity') }}"  type="text" name="quantity" type="number" step="1"
                       class="form-control @error('quantity') is-invalid @enderror" id="quantity">
            </div>


            <div class="form-group col-md-4 col-sm-12">
                <label for="photo">

                    @lang('site.img')
                </label>
                <input type="file" name="photo"
                       class="form-control">
            </div>
             <div class="form-group col-md-4 col-sm-12" >
                <label> @lang('site.add_imgs')</label>
                <input type="file" name="img[]" multiple class="form-control"  required>
            </div>
        </div>
        <div class="row">

            <div  class ="row"id="section">

            </div>

            <div class="form-group text-center">
                <button type="button" id="add_section" class="btn btn-success"><i class="fa fa-plus"></i> @lang('site.add_property')</button>
            </div>

        </div>

            {{--<div class="form-group">--}}
                {{--<label for="size_photo">--}}

                    {{--@lang('site.size_img')--}}
                {{--</label>--}}
                {{--<input type="file" name="size_photo"--}}
                       {{--class="form-control">--}}
            {{--</div>--}}


{{--            <div class="form-group">--}}
{{--                <label for="delivery_period">--}}

{{--                    @lang('site.ship_period')--}}

{{--                </label>--}}
{{--                <input value="{{ old('delivery_period') }}"  type="number" name="delivery_period"--}}
{{--                       class="form-control @error('delivery_period') is-invalid @enderror" id="delivery_period">--}}
{{--            </div>--}}


            {{-- <ul class="align-content-right for_not_order {{ old('is_order') ? 'd-none' : '' }}" style="list-style-type: none">
                @foreach($sizes as $size)
                <li style="margin: 5px 5px 15px 5px">

                    <div class="form-group">

                        <div class="col-md-12 ">
                            <div class="form-check d-flex justify-content-center">

                                <label class="form-check-label" for="name" style="font-weight: bold">
                                    {{$size->name}}
                                </label>
                                <input class="form-check-input" type="checkbox" value="{{$size->id}}"
                                       style="margin-left: 15px"
                                       name="size[]"
                                       >
                            </div>
                        </div>
                    </div>


                    <div class="d-flex justify-content-left"  style="flex-wrap: wrap;margin: 5px">
                        @foreach($heights as $height)

                        <div class="form-check" style="margin: 10px">
                            <input class="form-check-input" type="checkbox" name="{{$size->id}}height[]" id="height" value="{{$height->id}}">
                            <label class="form-check-label" for="height">{{$height->name}}
                            </label>

                            <input type="number"
                                   style="border: 1px solid rgba(0,0,0,0.1) ; border-radius: 10px;padding: 5px;width: 70px" placeholder="الكميه"
                                   name="{{$size->id}}{{$height->id}}quantity" value=""

                                   >

                        </div>
                            @endforeach

                    </div>

                </li>
                @endforeach

            </ul> --}}


            {{-- <div class="align-content-right for_order  {{ old('is_order') ? '' : 'd-none' }} " style="list-style-type: none;">
                    <div class='w-100 text-center'>{{__('site.sizes')}}</div>

                <div class="d-flex justify-content-center">


                <div class="form-group ">
                <div class="col-md-12 d-flex justify-content-center ">
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" name="order_s" value="1" id="order_s" {{ old('order_s')  ? 'checked' : '' }}>

                        <label class="form-check-label" for="order_s">
                            s
                        </label>
                    </div>
                </div>
            </div>
            <div class="form-group ">
                <div class="col-md-12 d-flex justify-content-center ">
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" name="order_l" value="1" id="order_l" {{ old('order_l')  ? 'checked' : '' }}>

                        <label class="form-check-label" for="order_l">
                            L
                        </label>
                    </div>
                </div>
            </div>
            <div class="form-group ">
                <div class="col-md-12 d-flex justify-content-center ">
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" name="order_m" value="1" id="order_m" {{ old('order_m') ? 'checked' : '' }}>

                        <label class="form-check-label" for="order_m">
                            M
                        </label>
                    </div>
                </div>
            </div>
            <div class="form-group ">
                <div class="col-md-12 d-flex justify-content-center ">
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" name="order_xl" value="1" id="order_xl" {{ old('order_xl') ? 'checked' : '' }}>

                        <label class="form-check-label" for="order_xl">
                            Xl
                        </label>
                    </div>
                </div>
            </div>
            </div>
            </div> --}}


        </div>

            <button type="submit" class="btn btn-primary col-6 m-auto mb-5">
@lang('site.save')
            </button>

    </form>



    {{-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/css/bootstrap-multiselect.css"> --}}
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/js/bootstrap-multiselect.js"></script>
    <script type="text/javascript">
        console.log('ss');
        var html = $('#template').html();

$('.multiselect-ui').multiselect({
    includeSelectAllOption: true
});

$('#append-btn').click(function() {
    $(html).appendTo('.div2');
    $('.multiselect-ui').multiselect({
        includeSelectAllOption: true
    });
});
        $('#basic_category_id').on('change',function (e) {

            console.log(e);
            var cat_id= e.target.value;


            $.get('/ajax-subcat?cat_id='+cat_id,function (data) {
                $('#category_id').empty();
                $.each(data,function (index,subcatObj) {
                    $('#category_id').append('<option value="'+subcatObj.id+'">'+subcatObj.name_en+' - '+subcatObj.name_ar+'</option>');
                })
            })

        });

        // when page is ready
        $(document).ready(function() {
            $('#is_order').click(function() {
               if ($('input#is_order').is(':checked')) {
                    $('.for_not_order').hide().addClass('d-none');
                     $('.for_order').show().removeClass('d-none');
                }else{
                     $('.for_not_order').show().removeClass('d-none');
                    $('.for_order').hide().addClass('d-none');

                }


            });
            // on form submit
            $("#form").on('submit', function() {
                // to each unchecked checkbox
                $(this + 'input[type=checkbox]:not(:checked)').each(function () {
                    // set value 0 and check it
                    $(this).attr('checked', true).val(0);
                });
            })

            $("#add_section").click(function (e) {
            e.preventDefault();
            // get gov
            // send ajax



                $.ajax({
                    url : "{{ route('add.section') }}",
                    type: 'post',
                    data: {_token:"{{csrf_token()}}",type:1},
                    success: function (data) {
                        console.log(data);
                        $("#section").append(data);
                    },
                    error: function (jqXhr, textStatus, errorMessage) { // error callback
                        alert(jqXhr);
                    }
                });

        });
        })
    </script>


@endsection
