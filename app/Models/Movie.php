<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Movie extends Model
{
    protected $fillable = [
        'name',
        'slug',
        'genre',
        'audio',
        'age_limit',
        'duration',
        'premiere_date',
        'format',
        'sound',
        'actors',
        'director',
        'synopsis',
        'image'
    ];

    public function showtime()
    {
        return $this->hasMany(Showtime::class);
    }
}
