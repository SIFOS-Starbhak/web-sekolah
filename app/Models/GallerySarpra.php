<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class GallerySarpra extends Model
{
    use HasFactory;
    protected $table = 'gallery_sarpras';
    protected $fillable = [
        'image',
        'content_id'
    ];
    public function content()
    {
        return $this->belongsTo(ContentSarpra::class, 'content_id');
    }
}
