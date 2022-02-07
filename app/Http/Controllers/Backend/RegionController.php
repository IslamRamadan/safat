<?php

namespace App\Http\Controllers\Backend;

use App\City;
use App\Region;
use App\Country;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use RealRashid\SweetAlert\Facades\Alert;

class RegionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }


    public function create(){
        // dd('oo');
        $cities = City::all();
        return view('dashboard.regions.create' , compact('cities') );
    }

    public function store(Request $request)
    {
        // $country_id=City::findOrFail($request->city_id)->country_id;

        // dd($request->all());
        $messeges = [

            'name_ar.required'=>"اسم المنطقهالمنطقه باللغه العربيه مطلوب",
            'name_en.required'=>"اسم المنطقهالمنطقه باللغه الانجليزيه مطلوب",
            'city_id.required'=>"يرجي اختيار المنطقهالمنطقه",


        ];


        $validator =  Validator::make($request->all(), [

            'name_ar' => ['required'],

            'name_en' => ['required'],

            'city_id' => ['required'],



        ], $messeges);


        if ($validator->fails()) {
            Alert::error('خطأ', $validator->errors()->first());
            return back()->withInput();
        }
        $country_id=City::findOrFail($request->city_id)->country_id;

        $region = Region::create([
            'name_ar' => $request['name_ar'],
            'name_en' => $request['name_en'],
            'city_id' => $request['city_id'],
            'country_id' => $country_id,
        ]);

        if ($region){

            session()->flash('success', "success");
            if(session()->has("success")){
                Alert::success('نجح', 'تم إضافة منطقه');
            }

        }

        return redirect()->route('regions.view' , $country_id);

//        $uId = $request->user_id;
//        User::updateOrCreate(['id' => $uId],['name' => $request->name, 'email' => $request->email]);
//        if(empty($request->user_id))
//            $msg = 'User created successfully.';
//        else
//            $msg = 'User data is updated successfully';
//        return redirect()->route('users.index')->with('success',$msg);
    }




    public function updateRegion(Request $request ,$id){


        $messeges = [

            'name_ar.required'=>"اسم المنطقه باللغه العربيه مطلوب",
            'name_en.required'=>"اسم المنطقه باللغه الانجليزيه مطلوب",
            'city_id.required'=>"يرجي اختيار المنطقه",



        ];

        $validator =  Validator::make($request->all(), [

            'name_ar' => ['required'],

            'name_en' => ['required'],

            'city_id' => ['required'],




        ], $messeges);


        if ($validator->fails()) {
            Alert::error('خطأ', $validator->errors()->first());
            return back();
        }

        $region = Region::find($id);


        if(!$region){
            Alert::error('خطأ', 'المنطقه غير موجوده');
            return back();
        }

        $country_id=City::findOrFail($request->city_id)->country_id;

        $region = $region->update([
            'name_ar' => $request['name_ar'],
            'name_en' => $request['name_en'],
            'city_id' => $request['city_id'],
            'country_id' => $country_id ,


        ]);


        if($region){
            session()->flash('success', "success");
            if(session()->has("success")){
                Alert::success('نجح', 'تم تعديل بيانات المنطقه');
            }
        }

        return redirect()->route('regions.view' , $country_id );


//        $uId = $request->user_id;
//        User::updateOrCreate(['id' => $uId],['name' => $request->name, 'email' => $request->email]);
//        if(empty($request->user_id))
//            $msg = 'User created successfully.';
//        else
//            $msg = 'User data is updated successfully';
//        return redirect()->route('users.index')->with('success',$msg);


    }

    /**
     * Display the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */

//    public function show($id)
//    {
//        $where = array('id' => $id);
//        $user = User::where($where)->first();
//        return Response::json($user);
////return view('users.show',compact('user'));
//    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Http\Response|\Illuminate\View\View
     */

    public function edit($id)
    {
        $where = array('id' => $id);
        $region = Region::where($where)->first();
        if(!$region){
            Alert::error('خطأ', 'المنطقه غير موجوده بالنظام');
            return back();
        }

        $cities = City::all();

        return view('dashboard.regions.edit' , compact('region' ,'cities'));

    }
    public function destroy($id)
    {
        $region = Region::where('id',$id)->first();

        if($region){

            $region->delete();
            session()->flash('success', "success");
            if(session()->has("success")){
                Alert::success('نجح', ' تم حذف المنطقه');
            }

        }

//        return Response::json($user);
        return back();
    }

}
