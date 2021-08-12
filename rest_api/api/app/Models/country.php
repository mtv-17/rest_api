<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class country extends Model
{
    use HasFactory;
    protected $fillable = [
        'country'
    ];


    public function plants()
    {
        return $this->belongsToMany(plants::class,
            'plants_country');
    }


}
