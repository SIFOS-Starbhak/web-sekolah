<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ContentSarpra extends Model
{
    use HasFactory;

    public function gallery()
    {
        return $this->hasMany(GallerySarpra::class);
    }

    public function category()
    {
        return $this->belongsTo(CategorySarpra::class);
    }
}
