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
use App\Models\GalleryNews;
use App\Models\Category;
use App\Models\CategoryNews;
use App\Models\User;
use App\Models\Navbar;
use App\Models\Content;
use App\Models\Image;
use App\Models\Video;
use App\Models\Background;

class WebController extends Controller
{
    public function index()
    {
        $home = Page::all()->where('category_id', '9')->where('status', 'ACTIVE');
        $content = Page::all()->where('category_id', '8')->where('status', 'ACTIVE');
        $news = Post::where('status','PUBLISHED')->latest()->paginate(5);
        $article = Post::where('status','PUBLISHED')->latest()->paginate(6);
        $posts = Post::all()->where('status','PUBLISHED');
        $settings = Setting::all();
        $partners = Partner::all();
        $backgrounds = Background::all();
        $navbar = Navbar::all()->where('status', 'Active');
        return view('home', compact('navbar','backgrounds', 'navbar', 'posts', 'content', 'news', 'settings', 'article','partners', 'home'));
    }

    public function profiletb()
    {
        $pages = Page::all()->where('category_id', '7')->where('status', 'ACTIVE');
        $settings = Setting::all();
        $navbar = Navbar::all()->where('status', 'Active');
        return view('profile', compact('navbar', 'settings', 'pages'));
    }

    public function gallery()
    {
        $settings = Setting::all();
        $cardgallery = CategoryNews::all();
        $navbar = Navbar::all()->where('status', 'Active');
        $backgrounds = Background::all();
        return view ('gallery', compact('settings', 'cardgallery', 'backgrounds'));
    }

    public function gallery21()
    {
        $settings = Setting::all();
        $card2021 = GalleryNews::where('category', '5')->get();
        $navbar = Navbar::all()->where('status', 'Active');
        return view ('tahun-2021', compact('settings', 'card2021'));
    }
    public function gallery20()
    {
        $settings = Setting::all();
        $card2020 = GalleryNews::where('category', '4')->get();
        $navbar = Navbar::all()->where('status', 'Active');
        return view ('tahun-2020', compact('settings', 'card2020'));
    }
    public function gallery19()
    {
        $settings = Setting::all();
        $card2019 = GalleryNews::where('category', '3')->get();
        $navbar = Navbar::all()->where('status', 'Active');
        return view ('tahun-2019', compact('settings', 'card2019'));
    }
    public function gallery18()
    {
        $settings = Setting::all();
        $card2018 = GalleryNews::where('category', '2')->get();
        $navbar = Navbar::all()->where('status', 'Active');
        return view ('tahun-2018', compact('settings', 'card2018'));
    }
    public function gallery17()
    {
        $settings = Setting::all();
        $card2017 = GalleryNews::where('category', '1')->get();
        $navbar = Navbar::all()->where('status', 'Active');
        return view ('tahun-2017', compact('settings', 'card2017'));
    }

    public function kurikulumtb()
    {
        $struktur = DB::table('posts')->find(12);
                $navbar = Navbar::all()->where('status', 'Active');
        return view('kurikulum', compact('navbar', 'struktur'));
    }

    public function fotoguru(Kategori $kategori)
    {
        $foto = Gallery::all()->where('kategori_guru', $kategori->id);
        $settings = Setting::all();
        $navbar = Navbar::all()->where('status', 'Active');
        
        return view('fotoguru', compact('navbar', 'foto', 'settings', 'kategori'));
    }
    public function kurikulumguru()
    {
        $settings = Setting::all();
        $fotoguru = Kategori::all();
        $navbar = Navbar::all()->where('status', 'Active');
        $backgrounds = Background::all();
        return view('kurikulum', compact('navbar', 'settings', 'fotoguru', 'backgrounds'));
    }
    public function kurikulumsmktb()
    {
        $settings = Setting::all();
        $struktur = Page::where('id', '17')->get(['body', 'title']);
        return view('kurikulumsmktb', compact('settings','struktur'));
    }

    public function kurikulum()
    {
        $settings = Setting::all();
        $struktur = Page::where('id', '17')->get(['body', 'title']);
        $kompetensi = Page::where('id', '16')->get(['body', 'title']);
        $fotoguru = Kategori::all();    
        $cardkurikulum = Page::where('id', '22')->orWhere('id', '23')->orWhere('id', '24')->get();
        return view('kurikulum', compact('settings', 'struktur', 'kompetensi', 'fotoguru', 'cardkurikulum'));
    }
    
    public function bkk()
    {
        $settings = Setting::all();
        $cardbkk = Page::where('id', '24')->orWhere('id', '25')->get();
        return view('bkk', compact('settings','cardbkk'));
    }

    public function bkkmenu(Page $bkk)
    {
        $settings = Setting::all();
        return view('bkkmenu', compact('settings','bkk'));
    }

    public function kesiswaan()
    {
        $settings = Setting::all();
        $kesiswaans = Page::where('category_id', '3')->get(['title', 'slug', 'image']);
        return view('kesiswaan', compact('settings', 'kesiswaans'));
    }

    public function kesiswaan_menu(Page $category)
    {
        $settings = Setting::all();
        return view('kesiswaanmenu', compact('settings', 'category'));
    }

    
    public function sarpras()
    {
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
        $navbar = Navbar::all()->where('status', 'Active');
        $backgrounds = Background::all();
        return view('sarpras', compact('backgrounds', 'navbar', 'tei', 'bc', 'rpl', 'mm', 'tkj', 'perpus', 'kelas', 'settings', 'content', 'gallery', 'samsung', 'bahasa'));
    }
    public function sarprassekolah()
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
        $sarprassekolah = Page::where('id', '19')->get();
        return view('sarprassekolah', compact('tei', 'bc', 'rpl', 'mm', 'tkj', 'perpus', 'kelas', 'settings', 'category', 'content', 'gallery', 'samsung', 'bahasa', 'sarprassekolah'));
    }
    public function registalum()
    {
        $settings = Setting::all();
        $navbar = Navbar::all()->where('status', 'Active');
        $backgrounds = Background::all();
        return view('registalum', compact('navbar', 'settings', 'backgrounds'));
    }
    public function category(Category $category)
    {
        $settings = Setting::all();
        $navbar = Navbar::all()->where('status', 'Active');
        $backgrounds = Background::all();
        return view('showcategory', compact('navbar', 'settings', 'category', 'backgrounds'), ['posts' => $category->post]);
    }

    public function author(User $user)
    {
        $settings = Setting::all();
        $navbar = Navbar::all()->where('status', 'Active');
        $backgrounds = Background::all();
        return view('showauthor', compact('navbar', 'settings', 'user', 'backgrounds'), ['posts' => $user->post]);
    }

    public function menucard(Navbar $menu)
    {
        $page = Page::all()->where('category_id', $menu->id)->where('status', 'ACTIVE');
        $settings = Setting::all();
        $navbar = Navbar::all()->where('status', 'Active');
        $backgrounds = Background::all();
        return view('template.menu', compact('menu', 'page', 'settings', 'navbar', 'backgrounds'));
    }

    public function submenu($nav, Page $submenu)
    {
        $settings = Setting::all();
        $navbar = Navbar::all()->where('status', 'Active');
        $contents = Content::all()->where('sub_menu', $submenu->id);
        $backgrounds = Background::all();
        return view('submenu', compact('settings', 'navbar', 'nav', 'contents', 'submenu', 'backgrounds'));
    }

    public function galleries(Page $gallery)
    {
        $image = Image::all();
        $video = Video::all();
        $settings = Setting::all();
        $navbar = Navbar::all()->where('status', 'Active');
        $backgrounds = Background::all();
        return view('gallery', compact('image', 'video', 'gallery', 'settings', 'navbar', 'backgrounds'));
    }
}
