<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TabEkskul extends Model
{
    use HasFactory;

    public function content()
    {
        return $this->hasMany(ContentEkskul::class, 'title', 'id');
    }
}
