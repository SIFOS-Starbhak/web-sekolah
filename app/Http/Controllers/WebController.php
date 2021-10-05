<?php

namespace App\Http\Controllers;

use App\Models\Gallery;
use App\Models\Kategori;
use App\Models\Page;
use App\Models\Post;
use App\Models\Setting;
use App\Models\Partner;
use App\Models\Profile;
use App\Models\GuruRole;

class WebController extends Controller
{
    public function index()
    {
        $news = Post::where('status','PUBLISHED')->latest()->paginate(3);
        $article = Post::where('status','PUBLISHED')->latest()->paginate(6);
        $settings = Setting::all();
        $partners = Partner::all();
        return view('home', compact('news', 'settings', 'article','partners'));
    }

    public function profiletb()
    {
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

    public function kurikulum()
    {
        $settings = Setting::all();
        $struktur = Page::where('id', '17')->get(['body', 'title']);
        $kompetensi = Page::where('id', '16')->get(['body', 'title']);
        $fotoguru = Kategori::all();
        return view('kurikulum', compact('settings', 'struktur', 'kompetensi', 'fotoguru'));
    }

    public function sarpras()
    {
        $settings = Setting::all();
        $kegiatan_osis = Page::where('category_id', '3')->get(['body', 'title']);
        return view('kesiswaan', compact('settings', 'kegiatan_osis'));
    }
}
