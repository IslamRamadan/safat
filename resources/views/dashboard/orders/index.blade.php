@extends('dashboard.layouts.app')
@section('page_title')  @lang('site.paid_orders')  @endsection

@section('style')
      <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    {{--    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css" />--}}
    <link href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css" rel="stylesheet">
    <link href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css" rel="stylesheet">
    {{--    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>--}}
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.js"></script>
    <script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js" defer></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js" ></script>
<script src="https://cdn.datatables.net/buttons/2.2.2/js/dataTables.buttons.min.js" ></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js" ></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js" ></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js" ></script>
<script src="https://cdn.datatables.net/buttons/2.2.2/js/buttons.html5.min.js" ></script>
<script src="https://cdn.datatables.net/buttons/2.2.2/js/buttons.print.min.js" ></script>
<link href="https://cdn.datatables.net/select/1.3.4/css/select.dataTables.min.css" rel="stylesheet">
<link href="https://cdn.datatables.net/buttons/2.2.2/css/buttons.dataTables.min.css" rel="stylesheet">
<link href="https://cdn.datatables.net/datetime/1.1.1/css/dataTables.dateTime.min.css" rel="stylesheet">

    <script>
        error = false

        function validate() {
            if (document.userForm.name.value != '' && document.userForm.email.value != '' && document.userForm.password.value != '')
                document.userForm.btnsave.disabled = false
            else
                document.userForm.btnsave.disabled = true
        }
    </script>

@endsection
@section('content')
    <div class="container">
        <br>
<div class="card-header pb-0">
          <form class="" action="{{ route('filter') }}" method="post">
            @php
            $filter= Illuminate\Support\Facades\Session::get('filter');

            @endphp
            @csrf
            <div class="row form-group">
              <div class="col-md-3">
                  <label for="from">

                      @lang('site.from')

                  </label>
                  <input type="date" name="from"class="form-control @error('from') is-invalid @enderror" value="{{$filter != null ? $filter['from'] : ''}}" id="from" >
              </div>
              <div class="col-md-3">
                <label for="to">

                    @lang('site.to')

                </label>
                <input type="date" name="to" class="form-control @error('to') is-invalid @enderror" value="{{$filter != null ? $filter['to'] : ''}}"  id="to" >
              </div>
              <div class="col-md-3">
                <label for="city_id">

                    @lang('site.city')

                </label>
                <select class=" w-100" name="city_id" class="form-control @error('city_id') is-invalid @enderror" id="city_id">

                  @isset($cities)
                    @foreach($cities  as $item)
                        <option  value="{{$item->id}}"{{$filter != null ? ( $filter['city_id'] == $item->id ? 'selected' :'' ) : ''}}>{{$item->name}} </option>
                    @endforeach

                  @else
                  <option disabled value="">@lang('site.not_found_city') </option>
                  @endisset
                </select>
              </div>
              <div class="col-md-3">
                <input type="hidden" name="filter" value="1">
                <button  class="btn btn-primary" name="button" >go</button>
              <!-- <input class="btn btn-primary" type="button"  value="go"> -->
              </div>
          </div>
          </form>
          <br>
            <h6>
                @lang('site.paid_orders')
            </h6>
        </div>
        
        <div class="card-body px-0 pt-0 pb-2">
            <div class="table-responsive p-0">
                <table class="table align-items-center justify-content-center mb-0 data-table  text-secondary text-xs ">
                    <thead>
                    <tr>
            <th width="5%">No</th>
            <th width="5%">Id</th>
            <th width="10%">@lang('site.username')</th>
            <th width="10%">@lang('site.phone')</th>
            <th width="10%">@lang('site.email')</th>
            <th width="10%">@lang('site.order_status')</th>
            
            <th width="10%">@lang('site.city')</th>
            <th width="10%">@lang('site.region')</th>
            <th width="10%">@lang('site.address')</th>
            <th width="10%">@lang('site.ttl_price')</th>
            <th width="10%">@lang('site.ttl_qut')</th>
            <th width="20%">@lang('site.action')</th>
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

    $(document).ready(function () {

        var table = $('.data-table').DataTable({
            dom: 'Bfrtip',
          buttons: [
            
            {
                extend: 'collection',
                text: 'Export',
                buttons: [
                    'copy',
                    'excel',
                    'csv',
                    'pdf',
                    'print'
                ]
            }
        ],
          processing: true,
          serverSide: true,
            ajax: "{{ route('orders.index') }}",
            columns: [
                {data: 'DT_RowIndex', name: 'DT_RowIndex'},
                {data: 'id', name: 'id'},
                {data: 'name', name: 'name'},
                {data: 'phone', name: 'phone'},
                {data: 'email', name: 'email'},
                {data: 'status', name: 'status'},
                
              {data: 'city_name', name: 'city_name'},
              {data: 'region', name: 'region'},
              {data: 'address1', name: 'address1'},
                {data: 'total_price', name: 'total_price'},
                {data: 'total_quantity', name: 'total_quantity'},
                {data: 'action', name: 'action', orderable: false, searchable: false},
            ]
        });

        /* When click New customer button */
        $('#new-user').click(function () {
            $('#btn-save').val("create-user");
            $('#user').trigger("reset");
            $('#userCrudModal').html("Add New User");
            $('#crud-modal').modal('show');
        });

        /* Edit customer */
//         $('body').on('click', '#edit-user', function () {
//             var user_id = $(this).data('id');
//             $.get('users/'+user_id+'/edit', function (data) {
//                 $('#userCrudModal').html("Edit User");
//                 $('#btn-update').val("Update");
//                 $('#btn-save').prop('disabled',false);
//                 $('#crud-modal').modal('show');
//                 $('#user_id').val(data.id);
//                 $('#name').val(data.name);
//                 $('#email').val(data.email);
//
//             })
//         });
//         /* Show customer */
//         $('body').on('click', '#show-user', function () {
//             var user_id = $(this).data('id');
//             $.get('users/'+user_id, function (data) {
//
//                 $('#sname').html(data.name);
//                 $('#semail').html(data.email);
//
//             })
//             $('#userCrudModal-show').html("User Details");
//             $('#crud-modal-show').modal('show');
//         });
//
//         /* Delete customer */
//         $('body').on('click', '#delete-user', function () {
//             var user_id = $(this).data("id");
//             var token = $("meta[name='csrf-token']").attr("content");
//             confirm("Are You sure want to delete !");
//
//             $.ajax({
//                 type: "DELETE",
//                 url: "http://localhost/laravelpro/public/users/"+user_id,
//                 data: {
//                     "id": user_id,
//                     "_token": token,
//                 },
//                 success: function (data) {
//
// //$('#msg').html('Customer entry deleted successfully');
// //$("#customer_id_" + user_id).remove();
//                     table.ajax.reload();
//                 },
//                 error: function (data) {
//                     console.log('Error:', data);
//                 }
//             });
//         });

    });

</script>
@endsection


