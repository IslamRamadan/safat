@extends('dashboard.layouts.app')
@section('page_title') @lang('site.add_region') @endsection
@section('content')
    <form class="card col-md-6 col-12" style="margin: auto" action="{{route('regions.store')}}" method="post" enctype="multipart/form-data">
        @csrf

        <div class="card-body">

            <div class="form-group">
                <label for="name_ar">

                    @lang('site.region_ar')

                </label>
                <input value="{{ old('name_ar') }}"  type="text" name="name_ar"
                       class="form-control @error('name_ar') is-invalid @enderror" id="name_ar">
            </div>

            <div class="form-group">
                <label for="name_en">

                    @lang('site.region_en')

                </label>
                <input value="{{ old('name_en') }}"  type="text" name="name_en"
                       class="form-control @error('name_en') is-invalid @enderror" id="name_en">
            </div>







            <div class="form-group">
                <label for="city_id">
                    @lang('site.city')

                </label>

                <select name="city_id"    class="form-control @error('city_id') is-invalid @enderror" id="city_id">
                    @foreach($cities as $currency)


                        <option
{{--                            style="background-image: url('{{asset('/storage/'.$currency->image_url)}}')"--}}
                            value="{{$currency->id}}">
                            {{$currency->name_ar}}   -        {{$currency->name_en}}
                        </option>


                    @endforeach
                </select>
            </div>


        </div>
           <button type="submit" class="btn btn-primary">
                @lang('site.save')

            </button>

    </form>
@endsection
