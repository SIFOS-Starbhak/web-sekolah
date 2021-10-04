<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Homefooter extends Model
{
    use HasFactory;

    protected $table = 'homefooters';

    protected $fillable = [
        'title',
        'subtitle',
        'activities',
        'instagram',
        'subinstagram',
        'imginstagram',
        'facebook',
        'subfacebook',
        'imgfacebook',
    ];
}
