<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Navbar extends Model
{
    use HasFactory;

    public function page()
    {
        return $this->hasMany(Page::class, 'category_id' ,'id');
    }
}
