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
use App\Models\ContentSarpra;
use App\Models\CategorySarpra;
use App\Models\GallerySarpra;
use App\Models\Category;
use App\Models\User;
use Carbon;

class WebController extends Controller
{
    public function index()
    {
        $home = Page::all()->where('category_id', '8');
        $news = Post::all()->where('status','PUBLISHED')->where('featured', '1');
        $article = Post::where('status','PUBLISHED')->latest()->paginate(6);
        $settings = Setting::all();
        $partners = Partner::all();
        return view('home', compact('news', 'settings', 'article','partners', 'home'));
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

    public function kesiswaan()
    {
        $settings = Setting::all();
        $kegiatan_osis = Page::where('category_id', '3')->get(['body', 'title']);
        return view('kesiswaan', compact('settings', 'kegiatan_osis'));
    }

    public function sarpras()
    {
        $categories = CategorySarpra::all();
        $umu = ContentSarpra::all()->where('category_id', '');
        $settings = Setting::all();
        $gallery = Gallery::all();
        
        return view('sarpras', compact('settings', 'categories', 'content', 'gallery'));
    }

    public function category(Category $category)
    {
        $settings = Setting::all();
        return view('showcategory', compact('settings', 'category'), ['posts' => $category->post]);
    }

    public function author(User $user)
    {
        $settings = Setting::all();
        return view('showauthor', compact('settings', 'user'), ['posts' => $user->post]);
    }

    public function posted($posted)
    {
        $posts = Post::all()->where('created_at', Carbon\Carbon::parse($posted)->isoFormat('YYYY-MM-DD HH:mm:ss'));
        $settings = Setting::all();
        return view('showposted', compact('settings', 'posts', 'posted'));
    }
}
