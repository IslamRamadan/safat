<?php

namespace App\Http\Controllers\Backend;

use App\City;
use App\Http\Controllers\Controller;
use App\Pages;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use RealRashid\SweetAlert\Facades\Alert;
use Yajra\DataTables\Facades\DataTables;
use Lang;


class PagesController extends Controller
{

    public function index(Request $request)
    {
        if ($request->ajax()) {
            $data = Pages::latest()->get();
            return Datatables::of($data)
                ->addIndexColumn()
                ->addColumn('action', function ($row) {

                    $action = '
                        <a class="btn btn-success"  href="' . route('pages.edit', $row->id) . '" >Edit </a>
                        <a class="btn btn-primary"  href="' . route('pages.show', $row->id) . '" >View </a>
                      ';
                    return $action;
                })
                ->rawColumns(['action'])
                ->make(true);
        }

        return view('dashboard.pages.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Http\Response|\Illuminate\View\View
     */
    public function show($id)
    {
        $page = Pages::findOrFail($id);


        if (!$page) {
            Alert::error('خطأ', 'الصفحه غير موجوده بالنظام');
            return back();
        }

        return  view('dashboard.pages.show', compact('page'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Http\Response|\Illuminate\View\View
     */
    public function edit($id)
    {
        $page = Pages::findOrFail($id);


        if (!$page) {
            Alert::error('خطأ', 'الصفحه غير موجوده بالنظام');
            return back();
        }

        return  view('dashboard.pages.edit', compact('page'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function updatePage(Request $request, $id)
    {


        $messeges = [

            'page_title_ar.required' => "عنوان الصفحه باللغه العربيه مطلوب",
            'page_title_en.required' => "عنوان الصفحه باللغه الانجليزيه مطلوب",

            'page_details_ar.required' => "تفاصيل الصفحه باللغه العربيه مطلوب",
            'page_details_en.required' => "تفاصيل الصفحه باللغه الانجليزيه مطلوب",


        ];

        $validator =  Validator::make($request->all(), [

            'page_title_ar' => ['required'],

            'page_title_en' => ['required'],

            'page_details_ar' => ['required'],

            'page_details_en' => ['required'],

        ], $messeges);


        if ($validator->fails()) {
            Alert::error('', $validator->errors()->first());
            return back();
        }

        $page = Pages::find($id);


        if (!$page) {
            Alert::error('', 'الصفحه غير موجوده');
            return back();
        }


        $page = $page->update([
            'page_title_ar' => $request['page_title_ar'],
            'page_title_en' => $request['page_title_en'],
            'page_details_ar' => $request['page_details_ar'],
            'page_details_en' => $request['page_details_en'],
        ]);


        if ($page) {
            session()->flash('success', "success");
            if (session()->has("success")) {


                if (Lang::locale() == 'en') {

                    Alert::success('success', ' Page information edited successfully');
                } else {
                    Alert::success('نجح', 'تم تعديل بيانات الصفحه بنجاح');
                }
            }
        }

        return redirect()->route('pages.show', $id);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
