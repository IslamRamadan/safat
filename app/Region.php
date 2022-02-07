<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Region extends Model
{
    protected $table = 'regions1';
    protected $fillable = [
      'name_ar' , 'name_en' , 'city_id' , 'country_id'
    ];
    public function getNameAttribute()
       {
           return app()->getLocale()=='ar'? $this->name_ar : $this->name_en;
       }
    public function country(){
        return $this->belongsTo('App\Country'  , 'country_id' , 'id');
    }
    public function city(){
        return $this->belongsTo('App\City'  , 'city_id' , 'id');
    }
}
