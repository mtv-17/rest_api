<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class plants extends Model
{
    use HasFactory;

//    protected $casts = [
//      'country'  => 'array'
//    ];
    protected $fillable = [
        'plant','family', 'description'
    ];


    public function family()
    {
        return $this->belongsTo(family::class);
    }

    public function country()
    {
        return $this->belongsToMany(country::class);
    }


}
