<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Newsslide;
use App\Models\Category;
use App\Models\Page;
use App\Models\Post;
use App\Models\Setting;
use App\Models\Whystarbhak;
use App\Models\Partner;
use App\Models\Homefooter;
use App\Models\Profile;
use App\Models\Kategori;
use App\Models\Gallery;
use App\Models\GuruRole;

class WebController extends Controller
{
    public function index()
    {
        $news = Newsslide::all();
        $article = Post::where('status','PUBLISHED')->latest()->paginate(6);
        $settings = Setting::all();
        $whystarbhaks = Whystarbhak::all();
        $partners = Partner::all();
        $homefooters = Homefooter::all();
        return view('home', compact('news', 'settings', 'article', 'whystarbhaks','partners','homefooters'));
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
        $news = Newsslide::all();

            $settings = Setting::all();
            return view('profile', compact('settings', 'pages', 'news'));
    }

    public function kurikulumtb(){
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