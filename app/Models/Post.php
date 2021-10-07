<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\MediaLibrary\HasMedia;
use Spatie\MediaLibrary\InteractsWithMedia;
use Spatie\MediaLibrary\MediaCollections\Models\Media;
class Post extends Model implements HasMedia 
{

    use HasFactory, InteractsWithMedia;

    protected $fillable = [
        'author_id',
        'category_id',
        'title',
        'seo_title',
        'excerpt',
        'body',
        'image',
        'slug',
        'meta_description',
        'meta_keywords',
        'status',
        'featured',
    ];


    public function registerMediaConversions(Media $media = null): void
    {
        $this->addMediaConversion('thumb')
                ->height(500)
                ->width(600);
    }
        
    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    public function manager()
    {
        return $this->belongsTo(Manager::class);
    }

    public function user()
    {
    return $this->belongsTo(User::class, 'author_id');
    }
}
