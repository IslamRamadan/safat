@extends('dashboard.layouts.app')
@section('page_title') Orders / View @endsection

@section('style')
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
        crossorigin="anonymous"></script>
    {{-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css" /> --}}
    <link href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css" rel="stylesheet">
    <link href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.js"></script>
    <script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js" defer></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>

    <style>
        .modal-dialog {
            max-width: 90% !important;
        }
        div#myModal {
            max-width: none !important;
            top: 15% !important;
        }


    </style>
    <script>
        error = false

        function validate() {
            if (document.userForm.name.value != '' && document.userForm.email.value != '' && document.userForm.password
                .value != '')
                document.userForm.btnsave.disabled = false
            else
                document.userForm.btnsave.disabled = true
        }
    </script>

@endsection
@section('content')

    <div class="container">

        <div class="row">

            <button onclick="window.print();return false;" class="btn btn-primary "> @lang('site.print_page')            </button>
            @if ($order->status == 0)

                <a class="text text-primary" style="margin:5px;float: right;font-weight: bolder">

                    @lang('site.not_paid')

                </a>

            @elseif($order->status == 1)

                <a class="btn btn-success" style="margin:5px;float: right;font-weight: bolder"
                    href="{{ route('orders.received', $order->id) }}" id="edit-user">

                    تم الدفع

                </a>

            @elseif($order->status == 2)
                <a class="text text-success" style="margin:5px;float: right;font-weight: bolder">
                    @lang('site.received')

                </a>

            @endif

        </div>

        <br />
        <div class="row m-auto text-dir dir-rtl">
            {{-- <div class="col-lg-12 margin-tb" style="text-align: center"> --}}
            <div class="col-4">
                <h6 style="font-weight: bold">
                    @lang('site.username')

                </h6>

                <p class="text text-primary">
                    {{ $order->name }}
                </p>
            </div>

            <div class="col-4">
                <h6 style="font-weight: bold">
                    @lang('site.email')

                </h6>

                <p class="text text-primary">
                    {{ $order->email }}
                </p>
            </div>

            <div class="col-4">
                <h6 style="font-weight: bold">
                    @lang('site.phone')

                </h6>

                <p class="text text-primary">
                    {{ $order->phone }}
                </p>
            </div>

            <div class="col-4">
                <h6 style="font-weight: bold">
                    @lang('site.country')

                </h6>

                <p class="text text-primary">
                    {{ $order->country->name_en }} - {{ $order->country->name_ar }}
                </p>
            </div>

            <div class="col-4">
                <h6 style="font-weight: bold">
                    @lang('site.city')
                </h6>

                <p class="text text-primary">
                    {{ $order->city->name_en }} - {{ $order->city->name_ar }}
                </p>
            </div>
            <div class="col-4">
                <h6 style="font-weight: bold">
                    @lang('site.region')
                </h6>

                <p class="text text-primary">
                    {{ $order->region }}
                </p>
            </div>

            <div class="col-4">
                <h6 style="font-weight: bold">
                    @lang('site.user_type')
                </h6>

                <p class="text text-primary">
                    {{ $order->user_id == 0 ? 'Visitor' : 'Existed User' }}
                </p>
            </div>



            {{-- <div class="col-12"> --}}
            {{-- <h6 style="font-weight: bold"> --}}
            {{-- @lang('site.address2') --}}

            {{-- </h6> --}}

            {{-- <p class="text text-primary"> --}}
            {{-- {{$order->address2}} --}}
            {{-- </p> --}}
            {{-- </div> --}}


            {{-- <div class="col-12"> --}}
            {{-- <h6 style="font-weight: bold"> --}}
            {{-- @lang('site.note'): --}}

            {{-- </h6> --}}

            {{-- <p class="text text-primary"> --}}
            {{-- {{$order->note}} --}}
            {{-- </p> --}}
            {{-- </div> --}}

            <div class="col-4">
                <h6 style="font-weight: bold">
                    Total Price
                </h6>

                <p class="text text-primary">
                    {{ $order->total_price }}
                </p>
            </div>

            <div class="col-4">
                <h6 style="font-weight: bold">
                    @lang('site.ttl_qut')

                </h6>

                <p class="text text-primary">
                    {{ $order->total_quantity }}
                </p>
            </div>
            <div class="col-4">
                <h6 style="font-weight: bold">
                    @lang('site.date_of_order')

                </h6>

                <p class="text text-primary">
                    {{ $order->created_at }}
                </p>
            </div>
            <div class="col-4">
                <h6 style="font-weight: bold">
                    @lang('site.invoice_id')

                </h6>

                <p class="text text-primary">
                    {{ $order->invoice_id }}
                </p>
            </div>
            <div class="col-4">
                <h6 style="font-weight: bold">
                    @lang('site.invoice_link')

                </h6>

                <a class="text text-primary" href="{{ $order->invoice_link }}">
                    {{ $order->invoice_link }}
                </a>
            </div>
            <div class="col-12">
                <h6 style="font-weight: bold">


                    @lang('site.address1')
                </h6>

                <p class="text text-primary">
                    {{ $order->address1 }}
                </p>
            </div>
            <hr>
        </div>
    </div>
    <div class="card-header pb-0">
        <h6>
            Order Items
        </h6>
    </div>
    <div class="card-body px-0 pt-0 pb-2">
        <div class="table-responsive p-0">
            <table  id="example" class="table align-items-center justify-content-center mb-0 data-table  text-secondary text-xs ">
                <thead>
                    <tr>
                        <th width="5%">No</th>
                        <th width="5%">Id</th>
                        <th width="10%">@lang('site.product_name')</th>
                        <th width="10%">@lang('site.cat_name')</th>
                        <th width="10%">@lang('site.quantity')</th>
                        <th width="10%">@lang('site.item_price')</th>
                        <th width="40%">@lang('site.img')</th>
                    </tr>
                </thead>
                <tbody>
                </tbody>
            </table>
        </div>
    </div>


    </div>


@endsection

@section('script')
    <script type="text/javascript">
        $(document).ready(function() {

            var table = $('.data-table').DataTable({
                processing: true,
                serverSide: true,
                ajax: "{{ route('order.items.view', $order->id) }}",
                columns: [{
                        data: 'DT_RowIndex',
                        name: 'DT_RowIndex'
                    },
                    {
                        data: 'id',
                        name: 'id'
                    },
                    {
                        data: 'product',
                        name: 'product'
                    },
                    {
                        data: 'category',
                        name: 'category'
                    },

                    {
                        data: 'quantity',
                        name: 'quantity'
                    },
                    {
                        data: 'price',
                        name: 'price'
                    },
                    {
                        data: 'image',
                        name: 'image',
                        render: function(data, type, full, meta) {
                            return "<img src=\"" + data +
                                "\"   border=\"0\"  class=\"img-rounded\" align=\"center\"  height=\"50\"/>";
                        }
                    }
                ]
            });





        //   get_customSize/{id}

        });
         function button_model_view(id_) {
                $('#text-model').html('');
                $.ajax({
                  type: "POST",
                  url: "{{route('get_customSize')}}",
                  data: {
                    id: id_,
                    _token: "{{csrf_token()}}"
                  },
                  success: function(result) {
                    $('#text-model').append(result);
                  },
                  error: function(result) {
                    alert('error');
                  }
                });
            }
    </script>
@endsection
