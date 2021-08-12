<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class plants extends Model
{
    use HasFactory;

    protected $fillable = [
        'plant','family', 'description'
    ];

    public function family()
    {
        return $this->belongsTo(family::class);
    }

    public function countries()
    {
        return $this->belongsToMany(country::class,
            'plants_country');
    }
}
