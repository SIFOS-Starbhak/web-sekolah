<?php

namespace App\Http\Controllers;

use App\Models\Gallery;
use App\Models\Kategori;
use App\Models\Page;
use App\Models\Post;
use App\Models\Setting;
use App\Models\Partner;
use App\Models\Homefooter;
use App\Models\Profile;
<<<<<<< HEAD
=======
// use App\Models\Kategori;
// use App\Models\Gallery;
>>>>>>> c02ce9420a1c087d79ecf0f3fdc2d1503e54f0dd
use App\Models\GuruRole;

class WebController extends Controller
{
    public function index()
    {
        $news = Post::where('status','PUBLISHED')->latest()->paginate(3);
        $article = Post::where('status','PUBLISHED')->latest()->paginate(6);
        $settings = Setting::all();
        $partners = Partner::all();
        $homefooters = Homefooter::all();
        return view('home', compact('news', 'settings', 'article','partners','homefooters'));
    }

    // public function page($id)
    // {
    //     $categories = Category::all();
    //     $pages = Page::all()->where('category_id', $id);
    //     return view('home', compact('categories', 'pages'));
    // }
    public function profiletb()
    {
//   return view('profile',
        //     $categories = Category::where('name','profile'),
        //     $pages = Page::all()->where('category_id', '1')->first();
        //    , compact('categories', 'pages'));

        $pages = Page::all()->where('category_id', '7')->where('status', 'ACTIVE');

        $settings = Setting::all();
        return view('profile', compact('settings', 'pages'));
    }

    public function kurikulumtb()
    {
        $struktur = DB::table('posts')->find(12);

        return view('kurikulum', compact('struktur'));
    }

    public function fotoguru(Kategori $kategori)
    {
        $foto = Gallery::all()->where('kategori_guru', $kategori->id);
        $settings = Setting::all();

        return view('fotoguru', compact('foto', 'settings', 'kategori'));
    }
}
