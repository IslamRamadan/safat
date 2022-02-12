<?php

namespace App\Http\Controllers\Backend;

use App\BasicCategory;
use App\Http\Controllers\Controller;
use App\Settings;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use RealRashid\SweetAlert\Facades\Alert;
use Lang;


class SettingsController extends Controller
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
        $settings = Settings::all();

        $setting = $settings->first();
        if (!$setting) {
            $setting = Settings::create();
        }

        return view('dashboard.settings.show', compact('setting'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Http\Response|\Illuminate\View\View
     */
    public function edit($id)
    {
        $setting = Settings::all()->first();

        if (!$setting) {
            $setting = Settings::create();
        }

        return view('dashboard.settings.edit', compact('setting'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function updateSetting(Request $request, $id)
    {
        if (Settings::all()->count() > 0) {
            $setting = Settings::all()->first();
            $setting->update($request->except('logo', 'footer_logo', 'ad_image', 'landing_image_mob', 'landing_image'));

            if ($request->hasfile('logo')) {
                // $images .= 'yes';

                $image = $request->file('logo');
                $original_name = strtolower(trim($image->getClientOriginalName()));
                $file_name = time() . rand(100, 999) . $original_name;
                $path = 'uploads/logos/images/';
                // dd($file_name);
                if (!Storage::exists($path)) {
                    Storage::disk('public')->makeDirectory($path);
                }

                //            return (storage_path('app/public/'.$cat->image_url));

                if ($setting->logo != null) {
                    if (file_exists(storage_path('app/public/' . $setting->logo))) {
                        unlink(storage_path('app/public/' . $setting->logo));
                    }
                }

                $setting->logo = $image->storeAs($path, $file_name, 'public');
                $setting->save();
            }
            //logo of footer start
            if ($request->hasfile('footer_logo')) {
                // $images .= 'yes';

                $image = $request->file('footer_logo');
                $original_name = strtolower(trim($image->getClientOriginalName()));
                $file_name = time() . rand(100, 999) . $original_name;
                $path = 'uploads/logos/images/';

                if (!Storage::exists($path)) {
                    Storage::disk('public')->makeDirectory($path);
                }

                //            return (storage_path('app/public/'.$cat->image_url));

                if ($setting->footer_logo != null) {
                    if (file_exists(storage_path('app/public/' . $setting->footer_logo))) {
                        unlink(storage_path('app/public/' . $setting->footer_logo));
                    }
                }

                $setting->footer_logo = $image->storeAs($path, $file_name, 'public');
                $setting->save();
            }
            //logo of footer end

            //logo of ad img
            if ($request->hasfile('ad_image')) {
                // $images .= 'yes';

                $image = $request->file('ad_image');
                $original_name = strtolower(trim($image->getClientOriginalName()));
                $file_name = time() . rand(100, 999) . $original_name;
                $path = 'uploads/logos/images/';

                if (!Storage::exists($path)) {
                    Storage::disk('public')->makeDirectory($path);
                }

                //            return (storage_path('app/public/'.$cat->image_url));

                if ($setting->ad_image != null) {
                    if (file_exists(storage_path('app/public/' . $setting->ad_image))) {
                        unlink(storage_path('app/public/' . $setting->ad_image));
                    }
                }

                $setting->ad_image = $image->storeAs($path, $file_name, 'public');
                $setting->save();
            }
            //logo of ad img end

            if ($request->hasfile('landing_image')) {
                // $images .= 'yes';

                $image = $request->file('landing_image');
                $original_name = strtolower(trim($image->getClientOriginalName()));
                $file_name = time() . rand(100, 999) . $original_name;
                $path = 'uploads/logos/images/';

                if (!Storage::exists($path)) {
                    Storage::disk('public')->makeDirectory($path);
                }

                //            return (storage_path('app/public/'.$cat->image_url));

                if ($setting->landing_image != null) {
                    if (file_exists(storage_path('app/public/' . $setting->landing_image))) {
                        unlink(storage_path('app/public/' . $setting->landing_image));
                    }
                }

                $setting->landing_image = $image->storeAs($path, $file_name, 'public');
                $setting->save();
            }
            if ($request->hasfile('landing_image_mob')) {
                // $images .= 'yes';

                $image = $request->file('landing_image_mob');
                $original_name = strtolower(trim($image->getClientOriginalName()));
                $file_name = time() . rand(100, 999) . $original_name;
                $path = 'uploads/logos/images/';

                if (!Storage::exists($path)) {
                    Storage::disk('public')->makeDirectory($path);
                }

                //            return (storage_path('app/public/'.$cat->image_url));

                if ($setting->landing_image_mob != null) {
                    if (file_exists(storage_path('app/public/' . $setting->landing_image_mob))) {
                        unlink(storage_path('app/public/' . $setting->landing_image_mob));
                    }
                }

                $setting->landing_image_mob = $image->storeAs($path, $file_name, 'public');
                $setting->save();
            }
        } else {

            $setting = Settings::create($request->except('logo', 'footer_logo', 'ad_image', 'landing_image_mob', 'landing_image'));

            if ($request->hasfile('logo')) {
                // $images .= 'yes';

                $image = $request->file('logo');
                $original_name = strtolower(trim($image->getClientOriginalName()));
                $file_name = time() . rand(100, 999) . $original_name;
                $path = 'uploads/logos/images/';

                if (!Storage::exists($path)) {
                    Storage::disk('public')->makeDirectory($path);
                }

                //            return (storage_path('app/public/'.$cat->image_url));

                if ($setting->logo != null) {
                    if (file_exists(storage_path('app/public/' . $setting->logo))) {
                        unlink(storage_path('app/public/' . $setting->logo));
                    }
                }

                $setting->logo = $image->storeAs($path, $file_name, 'public');
                $setting->save();
            }


            if ($request->hasfile('ad_image')) {
                // $images .= 'yes';

                $image = $request->file('ad_image');
                $original_name = strtolower(trim($image->getClientOriginalName()));
                $file_name = time() . rand(100, 999) . $original_name;
                $path = 'uploads/logos/images/';

                if (!Storage::exists($path)) {
                    Storage::disk('public')->makeDirectory($path);
                }

                //            return (storage_path('app/public/'.$cat->image_url));

                if ($setting->ad_image != null) {
                    if (file_exists(storage_path('app/public/' . $setting->ad_image))) {
                        unlink(storage_path('app/public/' . $setting->ad_image));
                    }
                }

                $setting->ad_image = $image->storeAs($path, $file_name, 'public');
                $setting->save();
            }


            if ($request->hasfile('footer_logo')) {
                // $images .= 'yes';

                $image = $request->file('footer_logo');
                $original_name = strtolower(trim($image->getClientOriginalName()));
                $file_name = time() . rand(100, 999) . $original_name;
                $path = 'uploads/logos/images/';

                if (!Storage::exists($path)) {
                    Storage::disk('public')->makeDirectory($path);
                }

                //            return (storage_path('app/public/'.$cat->image_url));

                if ($setting->footer_logo != null) {
                    if (file_exists(storage_path('app/public/' . $setting->footer_logo))) {
                        unlink(storage_path('app/public/' . $setting->footer_logo));
                    }
                }

                $setting->footer_logo = $image->storeAs($path, $file_name, 'public');
                $setting->save();
            }
            if ($request->hasfile('landing_image')) {
                // $images .= 'yes';

                $image = $request->file('landing_image');
                $original_name = strtolower(trim($image->getClientOriginalName()));
                $file_name = time() . rand(100, 999) . $original_name;
                $path = 'uploads/logos/images/';

                if (!Storage::exists($path)) {
                    Storage::disk('public')->makeDirectory($path);
                }

                //            return (storage_path('app/public/'.$cat->image_url));

                if ($setting->landing_image != null) {
                    if (file_exists(storage_path('app/public/' . $setting->landing_image))) {
                        unlink(storage_path('app/public/' . $setting->landing_image));
                    }
                }

                $setting->landing_image = $image->storeAs($path, $file_name, 'public');
                $setting->save();
            }
            if ($request->hasfile('landing_image_mob')) {
                // $images .= 'yes';

                $image = $request->file('landing_image_mob');
                $original_name = strtolower(trim($image->getClientOriginalName()));
                $file_name = time() . rand(100, 999) . $original_name;
                $path = 'uploads/logos/images/';

                if (!Storage::exists($path)) {
                    Storage::disk('public')->makeDirectory($path);
                }

                //            return (storage_path('app/public/'.$cat->image_url));

                if ($setting->landing_image_mob != null) {
                    if (file_exists(storage_path('app/public/' . $setting->landing_image_mob))) {
                        unlink(storage_path('app/public/' . $setting->landing_image_mob));
                    }
                }

                $setting->landing_image_mob = $image->storeAs($path, $file_name, 'public');
                $setting->save();
            }
        }


        if ($setting) {

            session()->flash('success', "success");
            if (session()->has("success")) {


                if (Lang::locale() == 'en') {

                    Alert::success('success', ' Settings edited successfully');
                } else {
                    Alert::success('نجح', 'تم تعديل الاعدادات');
                }
            }
        }

        return redirect()->route('settings.show', 1);
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
