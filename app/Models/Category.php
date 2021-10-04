<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;

    protected $table = "categories";

    protected $fillable = [
        'name'
    ];

        public function post()
    {
        return $this->hasMany(Post::class);
    }
    public function page()
    {
        return $this->hasMany(Page::class,'category_id','id');
    }
}
