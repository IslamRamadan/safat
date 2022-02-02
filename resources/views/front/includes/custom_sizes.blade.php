
<div class="row" style=" {{app()->getLocale()=='ar' ?'text-align:right;direction:rtl !important;':''}}">
     <div class="form-group col-md-12" id="template">
        <label for="size">

            <span class="is_required">*</span>@lang('site.size')


        </label>
       
          <div class="form-group" >

                <div class="d-flex justify-content-center">
                    @if($product->order_s == 1)
                        <div class="form-group ">
                            <div class="col-md-12 d-flex justify-content-center ">
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="order_size" value="S" id="order_size" >
            
                                    <label class="form-check-label" for="order_size"style="margin: 0 20px;">
                                        S
                                    </label>
                                </div>
                            </div>
                        </div>
                    @endif
                    @if($product->order_l == 1)
                        <div class="form-group ">
                            <div class="col-md-12 d-flex justify-content-center ">
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="order_size" value="L" id="order_size" >
            
                                    <label class="form-check-label" for="order_size"style="margin: 0 20px;">
                                        L
                                    </label>
                                </div>
                            </div>
                        </div>
                    @endif
                 @if($product->order_m == 1)
                        <div class="form-group ">
                            <div class="col-md-12 d-flex justify-content-center ">
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="order_size" value="M" id="order_size" >
            
                                    <label class="form-check-label" for="order_size"style="margin: 0 20px;">
                                        M
                                    </label>
                                </div>
                            </div>
                        </div>
                    @endif
                    @if($product->order_xl == 1)
                        <div class="form-group ">
                            <div class="col-md-12 d-flex justify-content-center ">
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="order_size" value="Xl" id="order_size" >
            
                                    <label class="form-check-label" for="order_size" style="margin: 0 20px;">
                                        Xl
                                    </label>
                                </div>
                            </div>
                        </div>
                    @endif
            </div>
        </div>
    </div>
    
     <div class="form-group col-md-6">
        <label for="height_order">
            <span class="is_required">*</span>@lang('site.height_order')
        </label>
        <input value="{{ old('height_order') }}"  type="text" name="height_order"
               class="form-control @error('height_order') is-invalid @enderror" id="height_order">
    </div>
    
    <input type="hidden" name="is_bs_ca" value="{{$product->basic_category_id}}">
    @if($product->basic_category_id==1 || $product->order_type ==1)
    <div class="form-group col-md-6" id="template">
        <label for="the_front">

            @lang('site.the_front')


        </label>
       
          <div class="form-group" id="multiselect">
           
            <div class="">
                <select id="the_front" class="multiselect-ui form-control" name="the_front">
                    <option value="1">@lang('site.the_front1')</option>
                    <option value="2">@lang('site.the_front2')</option>
                    <option value="3">@lang('site.the_front3')</option>
                </select>
            </div>
        </div>
    </div>
    
    <div class="form-group col-md-6" id="template">
        <label for="veil_size">

            @lang('site.veil_size')


        </label>
       
          <div class="form-group" id="multiselect">
           
            <div class="">
                <select id="veil_size" class="multiselect-ui form-control" name="veil_size">
                    <option value="1">@lang('site.veil_size1')</option>
                    <option value="2">@lang('site.veil_size2')</option>
                </select>
            </div>
        </div>
    </div>
    
    @endif
     <div class="form-group col-md-6">
        <label for="note">
            @lang('site.note_order')
        </label>
        <textarea name="note" class="form-control @error('note') is-invalid @enderror" id="note">{{ old('note') }}</textarea>

    </div>
    
</div>