<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Ekskul extends Model
{
    use HasFactory;
    protected $table = 'ekskuls';

    protected $fillable = [
        'image',
        'title',
        'slug',
    ];

    public function content()
    {
        return $this->hasMany(ContentEkskul::class, 'ekskul', 'id');
    }

}
