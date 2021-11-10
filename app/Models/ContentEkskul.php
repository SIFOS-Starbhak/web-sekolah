<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ContentEkskul extends Model
{
    use HasFactory;

    public function ekskul()
    {
        return $this->belongsTo(Ekskul::class, 'ekskul');
    }

    public function tab()
    {
        return $this->belongsTo(TabEkskul::class, 'title');
    }
}
