<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Whystarbhak extends Model
{
    use HasFactory;

    protected $table = 'whystarbhaks';

    protected $fillable = [
        'title',
        'content',
        'image',
    ];
}
