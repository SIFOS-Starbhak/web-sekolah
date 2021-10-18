<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Page extends Model
{
    use HasFactory;

    public function navbar()
    {
        return $this->belongsTo(Navbar::class,'category_id');
    }

    public function content()
    {
        return $this->hasMany(Content::class,'sub_menu', 'id');
    }
}
