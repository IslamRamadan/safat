<?php

namespace App\Http\Controllers\Backend;

use App\BasicCategory;
use App\Category;
use App\Height;
// use App\Color;
// use App\ProdColor;
use App\Http\Controllers\Controller;
use App\ProdHeight;
use App\ProdImg;
use App\ProdProperty;
use App\ProdSize;
use App\Product;
use App\Size;
use App\SizeGuide;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;
use RealRashid\SweetAlert\Facades\Alert;
use Yajra\DataTables\Facades\DataTables;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {

        if ($request->ajax()) {
            $data = Product::latest()->get();
            return Datatables::of($data)
                ->addColumn('image', function ($artist) {
                    $url = asset('/storage/' . $artist->img);
                    return $url;
                })
                ->addIndexColumn()
                ->addColumn('action', function ($row) {


                    $action = '
                    <a class="btn btn-success"  href="' . route('products.edit', $row->id) . '" >Edit </a>

                        <a class="btn btn-outline-dark"  href="' . route('product_galaries.index', $row->id) . '" >Images </a>
                      <meta name="csrf-token" content="{{ csrf_token() }}">
                         <a  href="' . route('products.destroy', $row->id) . '" class="btn btn-danger">Delete</a>';
                    return $action;
                })
                ->rawColumns(['action'])
                ->make(true);
        }

        return view('dashboard.products.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $size_guides = SizeGuide::all();
        $sizes = Size::all();
        $heights = Height::all();
        $basic_categories = BasicCategory::all();
        //        dd($sizes);
        //        $categories=Category::all();


        return view('dashboard.products.create', compact('basic_categories', 'sizes', 'heights', 'size_guides'));
    }

    public function ajaxcat(Request $request)
    {
        $cat_id = $request->get('cat_id');
        $categories = Category::where('basic_category_id', '=', $cat_id)->get();
        return response()->json($categories);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // dd($request->all());
        //        dd($request["4".'height']);

        $messeges = [


            'photo.required' => "صورة المنتج مطلوبة",
            'photo.mimes' => " يجب ان تكون الصورة jpg او jpeg او png  ",
            'photo.max' => " الحد الاقصي للصورة 4 ميجا ",
            'quantity.required' => " الكمية مطلوبة",
            'img.required' => " الصورة مطلوبة",
            'img.mimes' => " يجب ان تكون الصورة jpg او jpeg او png ",
            'img.max' => " الحد الاقصي للصورة 4 ميجا ",

        ];


        $validator = Validator::make($request->all(), [
            "basic_category_id" => "required",
            "category_id" => "required",
            "quantity" => "required",
            'img.*' => 'mimes:jpg,jpeg,png|max:4100',
            "img" => "required",
            "price" => "required|Numeric|between:0.1,999.99",
            'photo' => 'required|mimes:jpg,jpeg,png|max:4100',
            //            'size_photo' => 'required|mimes:jpg,jpeg,png|max:4100',

        ], $messeges);


        if ($validator->fails()) {
            Alert::error('error', $validator->errors()->first());
            return back()->withInput();
        }
        if (!$request->hasfile('img')) {

            Alert::success('error ', 'لم تقم بتحميل اي صورة');
            return back();
        }


        $image = $request->photo;
        $original_name = strtolower(trim($image->getClientOriginalName()));
        $file_name = time() . rand(100, 999) . $original_name;
        $path = 'uploads/products/images/';

        if (!Storage::exists($path)) {
            Storage::disk('public')->makeDirectory($path);
        }
        $img = \Image::make($image)->resize(526, 790);
        $img->save(public_path('storage/' . $path . $file_name), 90);



        $product = Product::create([
            'new' => $request['new'] ?: 0,
            'appearance' => $request['appearance'] ?: 0,
            'best_selling' => $request['best_selling'] ?: 0,
            // 'is_order' => $request['is_order']?:0,
            // 'order_type' => $request['order_type']?:0,

            'featured' => $request['featured'] ?: 0,
            'basic_category_id' => $request['basic_category_id'],
            'category_id' => $request['category_id'] ?: 0,
            'quantity' => $request['quantity'],
            'title_ar' => $request['title_ar'] ?: '',
            'title_en' => $request['title_en'] ?: '',
            'description_en' => $request['description_en'] ?: '',
            'description_ar' => $request['description_ar'] ?: '',
            // 'order_s' => $request['order_s']?:0,
            // 'order_l' => $request['order_l']?:0,
            // 'order_m' => $request['order_m']?:0,
            // 'order_xl' => $request['order_xl']?:0,
            'price' => $request['price'],
            'img' => $path . $file_name,
        ]);


        if ($request->has('img')) {
            $imgs = $request->img;
            if (count($imgs) > 10) {

                Alert::success('error ', 'الحد الاقصي للتحميل في المرة الواحدة 10 صور');
                return back();
            }
            $error = 0;
            foreach ($imgs as $img) {




                //add new name for img
                $new_name_img = time() . uniqid() . "." . $img->getClientOriginalExtension();

                //move img to folder
                $img1 = \Image::make($img)->resize(526, 790);
                $img1->save(public_path('upload/advertising/' . $new_name_img), 90);
                // $img->move(public_path("upload/advertising"), $new_name_img);
                $post = ProdImg::create([
                    "img" =>  "upload/advertising/" . $new_name_img,
                    "product_id" => $product->id

                ]);

                if (!$post) {
                    $error++;
                }
            }
        }


        // if($request->has('size')){
        //     if(count($request->size) > 0){

        //         foreach ($request->size as $size) {

        //             if ($size) {

        //                 ProdSize::create([
        //                     "product_id" => $product->id,
        //                     "size_id" => $size,
        //                 ]);

        //                 for ($i = 0; $i <= count($request[$size . 'height']); $i++) {
        //                     if (!empty($request[$size . 'height'][$i])) {
        //                         ProdHeight::create([
        //                             "product_id" => $product->id,
        //                             "size_id" => $size,
        //                             'height_id' => $request[$size . 'height'][$i],
        //                             'quantity' => $request[$size . $request[$size . 'height'][$i] . 'quantity'] ?: 0,
        //                         ]);
        //                     }
        //                 }
        //             }


        //         }


        //     }
        // }

        if ($request->has('prop_name_en') && $request->has('prop_name_ar')) {
            // dd('ok');
            $prop_name_en = $request->prop_name_en;
            $error = 0;
            for ($i = 0; $i < count($prop_name_en); $i++) {
                //add new name for img
                if (!empty($request->prop_name_en[$i])) {
                    ProdProperty::create([

                        "product_id" => $product->id,
                        "prop_name_en" => $request->prop_name_en[$i],
                        "prop_value_en" =>   $request->prop_value_en[$i],
                        "prop_name_ar" => $request->prop_name_ar[$i],
                        "prop_value_ar" =>   $request->prop_value_ar[$i],
                    ]);
                }
            }
        }

        if (session()->has("success")) {
            Alert::success('Success ', 'Success Message');
        }

        return redirect()->route('products.index');
    }

    /**
     * Display the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $product = Product::where('id', $id)->first();

        if ($product) {
            if (file_exists(storage_path('app/public/' . $product->img))) {
                unlink(storage_path('app/public/' . $product->img));
            }
            //            if (file_exists(storage_path('app/public/' . $product->height_img))) {
            //                unlink(storage_path('app/public/' . $product->height_img));
            //            }


            if ($product->cities) {
                if ($product->cities->count() > 0) {
                    foreach ($product->cities as $city) {
                        $city->delete();
                    }
                }
            }
            $product->delete();


            $size = ProdSize::where("product_id", $id)->get();
            $height = ProdHeight::where("product_id", $id)->get();
            $img = ProdImg::where("product_id", $id)->get();
            if ($size) {
                foreach ($size as $one) {
                    $one->delete();
                }
            }

            if ($height) {
                foreach ($height as $one) {
                    $one->delete();
                }
            }

            if ($img) {
                foreach ($img as $one) {
                    if (file_exists(public_path($one->img))) {
                        unlink(public_path($one->img));
                    }
                    $one->delete();
                }
            }


            $product->delete();
            session()->flash('success', "success");
            if (session()->has("success")) {
                Alert::success('نجح', ' تم حذف المنتج');
            }
        }

        //        return Response::json($user);
        return redirect()->route('products.index');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|Response|\Illuminate\View\View
     */
    public function edit($id)
    {
        //        $category = Category::where('user_id', request()->user()->id)->first();
        $categories = Category::all();
        $basic_categories = BasicCategory::all();
        // $sizes = Size::all();
        // $size_guides = SizeGuide::all();
        // $heights = Height::all();
        // $colors = Color::all();

        $product = Product::findOrFail($id);
        $prod_property=ProdProperty::where('product_id',$id)->get();
        // dd($prod_property->toArray());
        ////        $products=Product::all();
        // $size_products = ProdSize::where('product_id', $id)->pluck('size_id')->all();
        // $color_products = ProdColor::where('product_id', $id)->pluck('color_id')->all();

        //        dd($size_products);
        // $height_products = [];
        // $height_products_array = array();
        // foreach ($size_products as $size_product) {

        //     $height_products = ProdHeight::where('product_id', $id)->where('size_id', $size_product)
        //         ->get();
        //     array_push($height_products_array, $height_products);
            //                    dd($height_products_array);

            //            $height_products_size = ProdHeight::where('product_id', $id)->
            //            where('size_id', $size_product)
            //                ->pluck('size_id')->all();


        // }


        //        dd(count($height_products_array));
        //        $height_products=ProdHeight::where('product_id',$id)->
        //        where('type',1)
        //            ->pluck('to_product_id')->all();
        //        dd($cat_product);
        //        $categories=SubCategory::all();

        //        $sub_cat_result = array();
        //        foreach ($cat_product as $cat_prod){
        //            dd($cat_prod->subCategories);
        //
        //
        //        }


        return view('/dashboard/products/edit', compact(
            'basic_categories',
            'prod_property',
            'product',
            'categories',

        ));
    }


    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param int $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function updateProduct(Request $request, $id)
    {
        // dd($request->all());
        $messeges = [


            'photo.mimes' => " يجب ان تكون الصورة jpg او jpeg او png  ",
            'photo.max' => " الحد الاقصي للصورة 4 ميجا ",
            'quantity.required' => " الكمية مطلوبة",




        ];

        $validator = Validator::make($request->all(), [
            "basic_category_id" => "required",
            "category_id" => "required",
            "quantity" => "required|Numeric",
            "price" => "required|Numeric",

        ], $messeges);


        if ($validator->fails()) {
            Alert::error('error', $validator->errors()->first());
            return back();
        }

        $product = Product::findOrFail($id);

        if (!$product) {
            Alert::error('error', 'هذا المنتج غير مسجل بالنظام');
            return back();
        }

        if ($request->hasFile('photo')) {

            $image = $request->file('photo');
            $original_name = strtolower(trim($image->getClientOriginalName()));
            $file_name = time() . rand(100, 999) . $original_name;
            $path = 'uploads/products/images/';

            if (!Storage::exists($path)) {
                Storage::disk('public')->makeDirectory($path);
            }

            if (file_exists(storage_path('app/public/' . $product->img))) {
                unlink(storage_path('app/public/' . $product->img));
            }
            $img = \Image::make($image);
            // $img = \Image::make($image)->resize(526 , 790);
            $img->save(public_path('storage/' . $path . $file_name), 80);



            $product = $product->update([
                'new' => $request['new'] ?: 0,
                'appearance' => $request['appearance'] ?: 0,
                'best_selling' => $request['best_selling'] ?: 0,
                // 'is_order' => $request['is_order'] ?: 0,
                // 'order_type' => $request['order_type'] ?: 0,
                'featured' => $request['featured'] ?: 0,
                'basic_category_id' => $request['basic_category_id'],
                'category_id' => $request['category_id'] ?: 0,
                'quantity' => $request['quantity'],
                'title_ar' => $request['title_ar'] ?: '',
                'title_en' => $request['title_en'] ?: '',
                'description_en' => $request['description_en'] ?: '',
                'description_ar' => $request['description_ar'] ?: '',
                'price' => $request['price'],
                // 'order_s' => $request['order_s'] ?: 0,
                // 'order_l' => $request['order_l'] ?: 0,
                // 'order_m' => $request['order_m'] ?: 0,
                // 'order_xl' => $request['order_xl'] ?: 0,
                'img' => $path . $file_name,

            ]);
        }



        //
        //        elseif ($request->hasFile('size_photo')) {
        //            $image2 = $request->file('size_photo');
        //            $original_name2 = strtolower(trim($image2->getClientOriginalName()));
        //            $file_name2 = time() . rand(100, 999) . $original_name2;
        //            $path2 = 'uploads/products/images/';
        //
        //            if (!Storage::exists($path2)) {
        //                Storage::disk('public')->makeDirectory($path2);
        //            }
        //
        //            if (file_exists(storage_path('app/public/' . $product->height_img))) {
        //                unlink(storage_path('app/public/' . $product->height_img));
        //            }
        //
        //
        //
        //            $product = $product->update([
        //                'new' => $request['new'],
        //                'appearance' => $request['appearance'],
        //                'featured' => $request['featured'],
        //                'basic_category_id' => $request['basic_category_id'],
        //                'category_id' => $request['category_id'],
        //                'title_ar' => $request['title_ar'],
        //                'title_en' => $request['title_en'],
        //                'description_en' => $request['description_en'],
        //                'description_ar' => $request['description_ar'],
        //                'price' => $request['price'],
        //                'delivery_period' => $request['delivery_period'],
        //                'height_img' => $image2->storeAs($path2, $file_name2, 'public'),
        //
        //            ]);
        //
        //
        //
        //        }
        else {
            $product = $product->update([
                'new' => $request['new'] ?: 0,
                'appearance' => $request['appearance'] ?: 0,
                'best_selling' => $request['best_selling'] ?: 0,
                // 'is_order' => $request['is_order'] ?: 0,
                // 'order_type' => $request['order_type'] ?: 0,
                'featured' => $request['featured'] ?: 0,
                'basic_category_id' => $request['basic_category_id'],
                'category_id' => $request['category_id'] ?: 0,
                'quantity' => $request['quantity'],
                'title_ar' => $request['title_ar'] ?: '',
                'title_en' => $request['title_en'] ?: '',
                'description_en' => $request['description_en'] ?: '',
                'description_ar' => $request['description_ar'] ?: '',
                // 'order_s' => $request['order_s'] ?: 0,
                // 'order_l' => $request['order_l'] ?: 0,
                // 'order_m' => $request['order_m'] ?: 0,
                // 'order_xl' => $request['order_xl'] ?: 0,
                'price' => $request['price'],

            ]);
        }

        // ProdSize::where('product_id', $id)->delete();
        // ProdHeight::where('product_id', $id)->delete();
        ProdProperty::where('product_id', $id)->delete();
        if ($request->has('prop_name_en') && $request->has('prop_name_ar')) {
            // dd('ok');
            $prop_name_en = $request->prop_name_en;
            for ($i = 0; $i < count($prop_name_en); $i++) {
                //add new name for img
                if (!empty($request->prop_name_en[$i])) {
                    ProdProperty::create([

                        "product_id" => $id,
                        "prop_name_en" => $request->prop_name_en[$i],
                        "prop_value_en" =>   $request->prop_value_en[$i],
                        "prop_name_ar" => $request->prop_name_ar[$i],
                        "prop_value_ar" =>   $request->prop_value_ar[$i],
                    ]);
                }
            }
        }



        // ProdColor::where('product_id', $id)->delete();

        // if ($request->has('size')) {
        //     if (count($request->size) > 0) {

        //         foreach ($request->size as $size) {

        //             if ($size) {

        //                 ProdSize::create([
        //                     "product_id" => $id,
        //                     "size_id" => $size,
        //                 ]);

        //                 for ($i = 0; $i <= count($request[$size . 'height']); $i++) {
        //                     if (!empty($request[$size . 'height'][$i])) {
        //                         ProdHeight::create([
        //                             "product_id" => $id,
        //                             "size_id" => $size,
        //                             'height_id' => $request[$size . 'height'][$i],
        //                             'quantity' => $request[$size . '-' . $request[$size . 'height'][$i] . '-' . 'quantity'] ?: 0,
        //                         ]);
        //                     }
        //                 }
        //             }
        //         }
        //     }
        // }

        //  if ($request->has('color') ) {
        //             // dd('color');
        //             if (count($request->color) > 0) {
        //                 foreach ($request->color as $color) {

        //                     if ($color) {
        //                         ProdColor::create([
        //                             "product_id" => $id,
        //                             "color_id" => $color,
        //                         ]);
        //                     }
        //                 }
        //             }
        //         }


        //        $new_sizes = [];
        //        $removed_sizes = [];
        //        $request_sizes = [];
        //        $prod = Product::findOrFail($id);
        //        $sizes_exist = [];
        //
        //        $height_req = [];
        //        foreach ($prod->product_sizes as $p_s) {
        //            array_push($sizes_exist, $p_s->size_id);
        //        }
        //
        //        foreach ($request->only('size') as $s) {
        //            foreach ($s as $size) {
        //                if (!in_array($size, $request_sizes)) {
        //                    array_push($request_sizes, $size);
        //                }
        //
        //
        //            }
        //        }
        //
        //        foreach ($sizes_exist as $ex_size) {
        //            if (!in_array($ex_size, $request_sizes)) {
        //                array_push($removed_sizes, $ex_size);
        //            }
        //        }
        //
        //        if (count($sizes_exist) > 0) {
        //            foreach ($request_sizes as $n_s) {
        //                if (!in_array($n_s, $sizes_exist)) {
        //                    array_push($new_sizes, $n_s);
        //                }
        //            }
        //        }
        //
        //
        //        $remain_sizes = [];
        //        foreach ($sizes_exist as $ex_size) {
        //            if (!in_array($ex_size, $removed_sizes)) {
        //                array_push($remain_sizes, $ex_size);
        //            }
        //        }
        //
        //
        //        //TODO :: TO BE UNCOMMENTED
        //
        //        foreach ($removed_sizes as $s) {
        //            ProdHeight::where([
        //                'product_id' => $prod->id,
        //                'size_id' => $s
        //            ])->delete();
        //
        //            ProdSize::where([
        //                'product_id' => $prod->id,
        //                'size_id' => $s
        //            ])->delete();
        //        }
        //
        //
        //
        //        //GET ADDED HEIGHTS AND QUANTITY AND REMOVED ONES
        //
        //        //GET HEIGHTS AND QUANTITY FOR IT AND SAVE IN DATABASE
        //
        ////        ProdHeight::where('product_id', $prod->id)->delete();
        //
        //        //REPEAT WITH REMAINED HEIGHTS
        //        if (count($new_sizes) > 0) {
        //
        //            foreach ($new_sizes as $size) {
        //
        //                ProdSize::create([
        //                    'product_id' =>$prod->id,
        //                    'size_id' =>$size
        //                ]);
        //
        //                //GET NEW ONE
        //                //GET REMOVED ONE
        //
        //                for ($i = 0; $i <= count($request[$size . 'height']); $i++) {
        //                    if (!empty($request[$size . 'height'][$i])) {
        //                        ProdHeight::create([
        //                            "product_id" => $id,
        //                            "size_id" => $size,
        //                            'height_id' => $request[$size . 'height'][$i],
        //                            'quantity' => $request[$size .'-'. $request[$size . 'height'][$i] .'-'. 'quantity'] ?: 0,
        //                        ]);
        //                    }
        //                }
        //            }
        //
        //        }
        //

        //        if (count($remain_sizes) > 0) {
        //
        //            foreach ($remain_sizes as $r_s) {
        //
        //                //GET NEW ONE
        //                //GET REMOVED ONE
        //
        ////                $vv = $request[$r_s . 'height'];
        //
        //                if($request[$r_s . 'height']){
        //                    for ($i = 0; $i <= count($request[$r_s . 'height']); $i++) {
        //                        if (!empty($request[$r_s . 'height'][$i])) {
        //                            ProdHeight::create([
        //                                "product_id" => $id,
        //                                "size_id" => $r_s,
        //                                "height_id" => $request[$r_s . 'height'][$i],
        //                                "quantity" => $request[$r_s .'-'. $request[$r_s . 'height'][$i] .'-'. 'quantity'] ?: 0,
        //                            ]);
        //                        }
        //                    }
        //                }
        //
        //            }
        //
        //        }


        //        if (count($remain_sizes) > 0) {
        //
        //            foreach ($remain_sizes as $size) {
        //
        //                //GET NEW ONE
        //                //GET REMOVED ONE
        //
        //
        //                $request_heights[$size]  = $request->only($size.'height');
        //
        //
        //                if($request_heights[$size]){
        //                    foreach ($request_heights[$size] as $h_r){
        //
        ////                        foreach ($h_r as $i){
        ////
        //////                            if (!empty($request[$size . 'height'][$i])) {
        //////                                ProdHeight::create([
        //////                                    "product_id" => $id,
        //////                                    "size_id" => $size,
        //////                                    'height_id' => $request[$size . 'height'][$i],
        //////                                    'quantity' => $request[$size .'-'. $request[$size . 'height'][$i] .'-'. 'quantity'] ?: 0,
        //////                                ]);
        //////                            }
        ////                        }
        ////                        foreach ($h_r as $h){
        ////
        ////                                ProdHeight::create([
        ////                                    "product_id" => $prod->id,
        ////                                    "size_id" => $size,
        ////                                    'height_id' => $h,
        ////                                    'quantity' => $request[$size . $h. 'quantity'] ?: 0,
        ////                                ]);
        ////
        ////                        }
        //
        //                    }
        //                }
        //
        ////                $request_heights = [];
        ////
        ////
        ////
        ////                            if($request[$size . 'height']){
        ////                                if (!empty($request[$size . 'height'][$i])) {
        ////                                    ProdHeight::create([
        ////                                        "product_id" => $id,
        ////                                        "size_id" => $size,
        ////                                        'height_id' => $request[$size . 'height'][$i],
        ////                                        'quantity' => $request[$size . $request[$size . 'height'][$i] . 'quantity'] ?: 0,
        ////                                    ]);
        ////                                }
        ////                            }
        ////
        //
        //
        //            }
        //
        //        }

        //TODO :: -----------------------------//

        //        dd($new_sizes);
        //        dd($removed_sizes);

        //        dd($vv);
        session()->flash('success', "success");
        if (session()->has("success")) {
            Alert::success('Success ', 'Success Message');
        }

        return redirect()->route('products.index', $id);
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $product = Product::where('id', $id)->first();

        if ($product) {
            if (file_exists(storage_path('app/public/' . $product->img))) {
                unlink(storage_path('app/public/' . $product->img));
            }
            //            if (file_exists(storage_path('app/public/' . $product->height_img))) {
            //                unlink(storage_path('app/public/' . $product->height_img));
            //            }


            if ($product->cities) {
                if ($product->cities->count() > 0) {
                    foreach ($product->cities as $city) {
                        $city->delete();
                    }
                }
            }
            $product->delete();


            $size = ProdSize::where("product_id", $id)->get();
            $height = ProdHeight::where("product_id", $id)->get();
            $img = ProdImg::where("product_id", $id)->get();
            if ($size) {
                foreach ($size as $one) {
                    $one->delete();
                }
            }

            if ($height) {
                foreach ($height as $one) {
                    $one->delete();
                }
            }

            if ($img) {
                foreach ($img as $one) {
                    if (file_exists(public_path($one->img))) {
                        unlink(public_path($one->img));
                    }
                    $one->delete();
                }
            }


            $product->delete();
            session()->flash('success', "success");
            if (session()->has("success")) {
                Alert::success('نجح', ' تم حذف المنتج');
            }
        }

        //        return Response::json($user);
        return redirect()->route('products.index');
    }



    public function add_section(Request $request)
    {
        $type = $request->type;
        if ($type == 1) {
            $val = '

            <div class="form-group col-md-3 col-sm-6">
                <label for="prop_name_en">
' .
                \Lang::get('site.prop_name_en')
                . '

                </label>
                <input value=""  type="text" name="prop_name_en[]" type="text"
                       class="form-control " id="prop_name_en">
            </div>
            <div class="form-group col-md-3 col-sm-6">
                <label for="prop_name_ar">
' .
                \Lang::get('site.prop_name_ar')
                . '

                </label>
                <input value=""  type="text" name="prop_name_ar[]" type="text"
                       class="form-control " id="prop_name_ar">
            </div>



            <div class="form-group col-md-3 col-sm-6">
                <label for="prop_value_en">

                ' .
                \Lang::get('site.prop_value_en')
                . '

                </label>
                <input value=""  type="text" name="prop_value_en[]" type="text"
                       class="form-control  " id="prop_value_en">

                       </div>

            <div class="form-group col-md-3 col-sm-6">
                <label for="prop_value_ar">

                ' .
                \Lang::get('site.prop_value_ar')
                . '

                </label>
                <input value=""  type="text" name="prop_value_ar[]" type="text"
                       class="form-control  " id="prop_value_ar">
            </div>

            ';
        } else {
            $val = '
                <div class="form-group col-md-6 col-sm-6">
            <label for="prop_name">
' .
                \Lang::get('site.prop_name')
                . '

            </label>
            <input value=""  type="text" name="prop_name1[]" type="text"
                   class="form-control " id="prop_name1">
        </div>
        <div class="form-group col-md-6 col-sm-6">
            <label for="prop_value">

            ' .
                \Lang::get('site.prop_name')
                . '

            </label>
            <input value=""  type="text" name="prop_value1[]" type="text"
                   class="form-control  " id="prop_value1">
        </div>
        ';
        }


        return response()->json($val);
    }
}
