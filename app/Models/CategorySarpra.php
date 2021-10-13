<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CategorySarpra extends Model
{
    use HasFactory;

    public function content()
    {
        return $this->hasMany(ContentSarpra::class, 'name');
    }
}
