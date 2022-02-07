<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Country extends Model
{
    protected $table = 'countries';
    protected $fillable = [
        'name_ar' , 'name_en' , 'code' , 'country_code' , 'currency_id' , 'delivery' ,'image_url'
    ];

    public function currency(){
        return $this->belongsTo('App\Currency' , 'currency_id' , 'id');
    }
public function getNameAttribute()
       {
           return app()->getLocale()=='ar'? $this->name_ar : $this->name_en;
       }

    public function cities(){
        return $this->hasMany('App\City' , 'country_id' , 'id');
        //has many!!

    }
    public function regions(){
        return $this->hasMany('App\Region' , 'country_id' , 'id');
        //has many!!

    }
}
