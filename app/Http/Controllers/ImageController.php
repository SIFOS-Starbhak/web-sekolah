<?php

namespace App\Http\Controllers;

// use Illuminate\Http\Request;
 use App\Models\Post;

class ImageController extends Controller
{
    public function store()
    {
        // dd($request);

        $article = new Post();
        $article->id = 0;
        $article->exists = true;
        $gambar = $article->addMediaFromRequest('upload')->toMediaCollection('images');
        // dd($image);

        return response()->json([
            'url' => $gambar->getUrl('thumb')
            // 'url' => 'https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dmlld3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80'
        ]);
    }
    
}
