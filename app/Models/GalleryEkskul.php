<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class GalleryEkskul extends Model
{
    use HasFactory;

    protected $table = 'gallery_ekskuls';

    protected $fillable = [
        'image',
        'eskul',
    ];
}
