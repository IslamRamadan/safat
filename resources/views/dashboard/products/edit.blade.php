@extends('dashboard.layouts.app')
@section('page_title')  Edit Product  : @lang('site.edit_prod'){{$product->title_ar}} @endsection

@section('style')
<style>
    .input{
        border: 5px solid black;
    }
</style>

@endsection
@section('content')
{{--    {{dd(count($height_products_array[0]))}}--}}
    <form class="card col-md-12 col-12" style="margin: auto"
          action="{{route('products.update.product',$product->id)}}"
          method="post" enctype="multipart/form-data">
        @csrf

        <div class="card-body text-right">

            <div class="d-flex justify-content-center">
            {{-- <div class="form-group ">
                <div class="col-md-12 d-flex justify-content-center ">
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" name="is_order" value="1" id="is_order" {{ old('is_order') || $product->is_order == 1 ? 'checked' : '' }}>

                        <label class="form-check-label" for="is_order">
                            @lang('site.is_order')
                        </label>
                    </div>
                </div>
            </div> --}}
             {{-- <div class="form-group  for_order  {{ old('is_order') || $product->is_order == 1 ? '' : 'd-none' }} ">
                <div class="col-md-12 d-flex justify-content-center ">
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" name="order_type" value="1" id="order_type" {{ old('order_type')|| $product->order_type == 1 ? 'checked' : '' }}>

                        <label class="form-check-label" for="order_type">
                            @lang('site.order_type')
                        </label>
                    </div>
                </div>
            </div> --}}
            <div class="form-group">
                <div class="col-md-12 d-flex justify-content-center ">
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" name="new" value="1" id="new"
                            @if($product->new == 1 )  {{ "checked" }} @endif
                            >

                        <label class="form-check-label" for="new">
                            @lang('site.new_arrival')
                        </label>
                    </div>
                </div>
            </div>

            <div class="form-group ">
                <div class="col-md-12 d-flex justify-content-center ">
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" name="appearance" value="1" id="appearance"
                        @if($product->appearance == 1 )  {{ "checked" }} @endif

                        >

                        <label class="form-check-label" for="appearance">
                            @lang('site.appear')
                        </label>
                    </div>
                </div>
            </div>
            <div class="form-group ">
                <div class="col-md-12 d-flex justify-content-center ">
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" name="best_selling" value="1" id="best_selling"
                        @if($product->best_selling == 1 )  {{ "checked" }} @endif

                        >

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


                        <option value="{{$basic_category->id}}"
                        @if($basic_category->id == $product->basic_category_id )  {{ "selected" }} @endif
                        >
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
                    @if ($product->category_id != 0)

                    @foreach($categories as $category)


                        <option value="{{$category->id}}"
                        @if($category->id == $product->category_id )  {{ "selected" }} @endif
                        >
                            {{$category->name_en}} &nbsp; - &nbsp; {{$category->name_ar}}
                        </option>


                    @endforeach
                    @endif

                </select>
            </div>

            <div class="form-group col-6">
                <label for="title_ar">

                    @lang('site.title_ar')

                </label>
                <input value="{{$product->title_ar}}"  type="text" name="title_ar"
                       class="form-control @error('title_ar') is-invalid @enderror" id="title_ar">
            </div>

            <div class="form-group col-6">
                <label for="title_en">

                    @lang('site.title_en')

                </label>
                <input value="{{ $product->title_en }}"  type="text" name="title_en"
                       class="form-control @error('title_en') is-invalid @enderror" id="title_en">
            </div>

            <div class="form-group col-12">
                <label for="description_ar">

                    @lang('site.description_ar')
                </label>
                <textarea name="description_ar" class="form-control @error('description_ar') is-invalid @enderror" id="description_ar">{{$product->description_ar}}</textarea>
            </div>

            <div class="form-group col-12">
                <label for="name">

                    @lang('site.description_en')
                </label>
                <textarea name="description_en" class="form-control @error('description_en') is-invalid @enderror" id="description_ar">{{$product->description_ar}}</textarea>

            </div>
            {{-- <div class="form-group col-md-6 col-sm-12" id="template">

                 <label for="colors">
                   @lang('site.colors')
               </label>

                        <div class="form-group" id="multiselect">
                                <select id="dates-field2" class="multiselect-ui form-control" multiple="multiple" name="color[]">

                                    @foreach ($colors as $color)
                                    <option value="{{$color->id}}"

                                        @foreach ($color_products as $color_product)
                                        @if ($color_product == $color->id)  {{ 'selected' }} @endif
                                        @endforeach

                                        >{{$color->name_ar}}-{{$color->name_en}}</option>
                                    @endforeach
                                                                </select>
                        </div>
                </div>
             --}}
            {{-- <div class="form-group col-md-6 col-sm-12">
                <label for="basic_category_id">
                    @lang('site.size_guid')

                </label>

                <select name="size_guide_id"    class="form-control @error('size_guide_id') is-invalid @enderror" id="size_guide_id">
                    <option value="">
                        @lang('site.size_guid')
                    </option>
                    @foreach($size_guides as $size_guide)


                        <option value="{{$size_guide->id}}"

                            @if($size_guide->id == $product->size_guide_id )  {{ "selected" }} @endif
                            >
                            {{$size_guide->name_en}} &nbsp; - &nbsp; {{$size_guide->name_ar}}
                        </option>


                    @endforeach
                </select>
            </div> --}}
            <div class="form-group col-md-4 col-sm-12">
                <label for="price">

                    @lang('site.price')

                </label>
                <input value="{{$product->price}}"  type="number" step=".01" name="price"
                       class="form-control @error('price') is-invalid @enderror" id="price">
            </div>
            <div class="form-group col-md-4 col-sm-12">
                <label for="quantity">

                    @lang('site.quantity')

                </label>
                <input value="{{$product->quantity}}"  type="number" step="1" name="quantity"
                       class="form-control @error('quantity') is-invalid @enderror" id="quantity">
            </div>



            <div class="form-group col-md-4 col-sm-12">
                <label for="photo">

                    @lang('site.img')
                </label>
                <input type="file" name="photo"
                       class="form-control">
            </div>
            </div>
<div class="row">
@if (count($prod_property)>0)
    @foreach ($prod_property as $item )

            <div class="form-group col-md-3 col-sm-6">
                <label for="prop_name_en">

                @lang('site.prop_name_en')


                </label>
                <input   type="text" name="prop_name_en[]" type="text"
                       class="form-control " id="prop_name_en"  value="{{$item->prop_name_en}}">
            </div>
            <div class="form-group col-md-3 col-sm-6">
                <label for="prop_name_ar">

                @lang('site.prop_name_ar')


                </label>
                <input   type="text" name="prop_name_ar[]" type="text"
                       class="form-control " id="prop_name_ar" value="{{$item->prop_name_ar}}">
            </div>



            <div class="form-group col-md-3 col-sm-6">
                <label for="prop_value_en">
                @lang('site.prop_value_en')


                </label>
                <input   type="text" name="prop_value_en[]" type="text"
                       class="form-control  " id="prop_value_en" value="{{$item->prop_value_en}}">

                       </div>

            <div class="form-group col-md-3 col-sm-6">
                <label for="prop_value_ar">

                @lang('site.prop_value_ar')


                </label>
                <input   type="text" name="prop_value_ar[]" type="text"
                       class="form-control  " id="prop_value_ar" value="{{$item->prop_value_ar}}">
            </div>
    @endforeach

            @endif
        </div>
        <div  class ="row"id="section">

        </div>

        <div class="form-group text-center">
            <button type="button" id="add_section" class="btn btn-success"><i class="fa fa-plus"></i> @lang('site.add_property')</button>
        </div>






            {{-- <div class="align-content-right for_order  {{ old('is_order') || $product->new != 1 ? '' : 'd-none' }} " style="list-style-type: none;">
                    <div class='w-100 text-center'>{{__('site.sizes')}}</div>

                <div class="d-flex justify-content-center">


                <div class="form-group ">
                <div class="col-md-12 d-flex justify-content-center ">
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" name="order_s" value="1" id="order_s" {{ old('order_s') || $product->order_s == 1 ? 'checked' : '' }}>

                        <label class="form-check-label" for="order_s">
                            s
                        </label>
                    </div>
                </div>
            </div>
            <div class="form-group ">
                <div class="col-md-12 d-flex justify-content-center ">
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" name="order_l" value="1" id="order_l" {{ old('order_l') || $product->order_l == 1 ? 'checked' : '' }}>

                        <label class="form-check-label" for="order_l">
                            L
                        </label>
                    </div>
                </div>
            </div>
            <div class="form-group ">
                <div class="col-md-12 d-flex justify-content-center ">
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" name="order_m" value="1" id="order_m" {{ old('order_m') || $product->order_m == 1 ? 'checked' : '' }}>

                        <label class="form-check-label" for="order_m">
                            M
                        </label>
                    </div>
                </div>
            </div>
            <div class="form-group ">
                <div class="col-md-12 d-flex justify-content-center ">
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" name="order_xl" value="1" id="order_xl" {{ old('order_xl') || $product->order_xl == 1 ? 'checked' : '' }}>

                        <label class="form-check-label" for="order_xl">
                            Xl
                        </label>
                    </div>
                </div>
            </div>
            </div>
            </div> --}}

<input type="hidden" value="{{$product->id}}" name="id">




</div>

<button type="submit" class="btn btn-primary col-6 m-auto mb-5">
@lang('site.save')
</button>

</form>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/js/bootstrap-multiselect.js"></script>


<script type="text/javascript">
$('#is_order').click(function() {
                if ($('input#is_order').is(':checked')) {
                    $('.for_not_order').hide().addClass('d-none');
                     $('.for_order').show().removeClass('d-none');
                }else{
                     $('.for_not_order').show().removeClass('d-none');
                    $('.for_order').hide().addClass('d-none');

                }


            });
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

// when page is ready
$(document).ready(function() {
// on form submit
$("#form").on('submit', function() {
// to each unchecked checkbox
$(this + 'input[type=checkbox]:not(:checked)').each(function () {
// set value 0 and check it
$(this).attr('checked', true).val(0);
});
})
})
</script>
@endsection
