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
use App\Models\Navbar;

class WebController extends Controller
{
    public function index()
    {
        $home = Page::all()->where('category_id', '9')->where('status', 'ACTIVE');
        $content = Page::all()->where('category_id', '8')->where('status', 'ACTIVE');
        $news = Post::all()->where('status','PUBLISHED')->where('featured', '1');
        $article = Post::where('status','PUBLISHED')->latest()->paginate(6);
        $posts = Post::all()->where('status','PUBLISHED');
        $settings = Setting::all();
        $partners = Partner::all();
        $navbar = Navbar::all();
        return view('home', compact('navbar', 'navbar', 'posts', 'content', 'news', 'settings', 'article','partners', 'home'));
    }

    public function profiletb()
    {
        $pages = Page::all()->where('category_id', '7')->where('status', 'ACTIVE');
        $settings = Setting::all();
        $navbar = Navbar::all();
        return view('profile', compact('navbar', 'settings', 'pages'));
    }

    public function kurikulumtb()
    {
        $struktur = DB::table('posts')->find(12);
        $navbar = Navbar::all();
        return view('kurikulum', compact('navbar', 'struktur'));
    }

    public function fotoguru(Kategori $kategori)
    {
        $foto = Gallery::all()->where('kategori_guru', $kategori->id);
        $settings = Setting::all();
        $navbar = Navbar::all();
        return view('fotoguru', compact('navbar', 'foto', 'settings', 'kategori'));
    }

    public function kurikulum()
    {
        $settings = Setting::all();
        $struktur = Page::where('id', '17')->get(['body', 'title']);
        $kompetensi = Page::where('id', '16')->get(['body', 'title']);
        $fotoguru = Kategori::all();
        $navbar = Navbar::all();
        return view('kurikulum', compact('navbar', 'settings', 'struktur', 'kompetensi', 'fotoguru'));
    }

    public function kesiswaan()
    {
        $settings = Setting::all();
        $kegiatan_osis = Page::where('category_id', '3')->get(['body', 'title']);
        $navbar = Navbar::all();
        return view('kesiswaan', compact('navbar', 'settings', 'kegiatan_osis'));
    }

    
    public function sarpras()
    {
        $category = CategorySarpra::all();
        $content = ContentSarpra::all();
        $settings = Setting::all();
        $samsung = GallerySarpra::all()->where('content_id', '16');
        $bahasa = GallerySarpra::all()->where('content_id', '2');
        $kelas = GallerySarpra::all()->where('content_id', '1');
        $perpus = GallerySarpra::all()->where('content_id', '3');
        $tkj = GallerySarpra::all()->where('content_id', '4');
        $mm = GallerySarpra::all()->where('content_id', '5');
        $rpl = GallerySarpra::all()->where('content_id', '6');
        $bc = GallerySarpra::all()->where('content_id', '7');
        $tei = GallerySarpra::all()->where('content_id', '8');
        $gallery = GallerySarpra::all();
        $navbar = Navbar::all();
        return view('sarpras', compact('navbar', 'tei', 'bc', 'rpl', 'mm', 'tkj', 'perpus', 'kelas', 'settings', 'category', 'content', 'gallery', 'samsung', 'bahasa'));
    }
    public function registalum()
    {
        $settings = Setting::all();
        $navbar = Navbar::all();
        return view('registalum', compact('navbar', 'settings'));
    }
    public function category(Category $category)
    {
        $settings = Setting::all();
        return view('showcategory', compact('navbar', 'settings', 'category'), ['posts' => $category->post]);
    }

    public function author(User $user)
    {
        $settings = Setting::all();
        $navbar = Navbar::all();
        return view('showauthor', compact('navbar', 'settings', 'user'), ['posts' => $user->post]);
    }

    public function menucard(Navbar $menu)
    {
        $page = Page::all()->where('category_id', $menu);
        $navbar = Navbar::all();
        $settings = Setting::all();
        return view('menu', compact('page', 'settings', 'navbar'));
    }
}
