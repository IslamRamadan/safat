<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class City extends Model
{
    protected $table = 'cities';
    protected $fillable = [
      'name_ar' , 'name_en' , 'delivery' , 'country_id' , 'delivery_period'
    ];
    public function getNameAttribute()
       {
           return app()->getLocale()=='ar'? $this->name_ar : $this->name_en;
       }
    public function country(){
        return $this->belongsTo('App\Country'  , 'country_id' , 'id');
    }
}
