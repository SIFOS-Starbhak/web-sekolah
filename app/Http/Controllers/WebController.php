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
use App\Models\Role;
use App\Models\GuruKejuruan;
use App\Models\Recruitment;
use App\Models\Ekskul;
use App\Models\TabEkskul;
use App\Models\ContentEkskul;
use App\Models\GalleryEkskul;
use App\Models\Jurusan;
use App\Models\TabJurusan;
use App\Models\ContentJurusan;
use App\Models\GalleryJurusan;
use App\Models\DetailUser;

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
        $backgrounds = Background::all();
        $pages = Page::all()->where('category_id', '7')->where('status', 'ACTIVE');
        $settings = Setting::all();
        $navbar = Navbar::all()->where('status', 'Active');
        return view('profile', compact('navbar', 'settings', 'pages','backgrounds'));
    }

    public function gallery()
    {
        $settings = Setting::all();
        $cardgallery = CategoryNews::all();
        $navbar = Navbar::all()->where('status', 'Active');
        $backgrounds = Background::all();
        return view ('gallery', compact('settings', 'cardgallery', 'backgrounds'));
    }

    public function fotoguru(Kategori $kategori)
    {
        $foto = Gallery::all()->where('kategori_guru', $kategori->id);
        $settings = Setting::all();
        $navbar = Navbar::all()->where('status', 'Active');
        $backgrounds = Background::all();
        return view('fotoguru', compact('navbar', 'foto', 'settings', 'kategori', 'backgrounds'));
    }
    public function kurikulumguru()
    {
        $settings = Setting::all();
        $fotoguru = Kategori::all();
        $navbar = Navbar::all()->where('status', 'Active');
        $backgrounds = Background::all();
        return view('kurikulum', compact('navbar', 'settings', 'fotoguru', 'backgrounds'));
    }

    public function kesiswaan()
    {
        $settings = Setting::all();
        $kesiswaans = Page::where('category_id', '3')->get(['title', 'slug', 'image']);
        return view('kesiswaan', compact('settings', 'kesiswaans'));
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
        $foto = GuruKejuruan::all()->where('jurusan', $submenu->id);
        return view('submenu', compact('settings', 'navbar', 'nav', 'contents', 'submenu', 'backgrounds', 'foto'));
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

    public function bkk()
    {
        $settings = Setting::all();
        $navbar = Navbar::all()->where('status', 'Active');
        $backgrounds = Background::all();
        $reqruitment = Recruitment::all();
        $users = User::all();

        return view('bkk', compact('settings', 'navbar', 'backgrounds', 'reqruitment', 'users'));
    }

    public function ekskul()
    {
        $settings = Setting::all();
        $navbar = Navbar::all()->where('status', 'Active');
        $backgrounds = Background::all();
        $eskul = Ekskul::all();

        return view('ekskul', compact('settings', 'navbar', 'backgrounds', 'eskul'));
    }

    public function eskul(Ekskul $eskul)
    {
        $settings = Setting::all();
        $navbar = Navbar::all()->where('status', 'Active');
        $backgrounds = Background::all();
        $tab = TabEkskul::all();
        $content = ContentEkskul::all()->where('ekskul', $eskul->id);
        $gallery = GalleryEkskul::all()->where('ekskul', $eskul->id);

        return view('eskul', compact('settings', 'navbar', 'backgrounds', 'eskul', 'content', 'tab', 'gallery'));
    }

    public function jurusan()
    {
        $settings = Setting::all();
        $navbar = Navbar::all()->where('status', 'Active');
        $backgrounds = Background::all();
        $jurusan = Jurusan::all();

        return view('jurusan', compact('settings', 'navbar', 'backgrounds', 'jurusan'));
    }

    public function jurusans(Jurusan $jurusan)
    {
        $settings = Setting::all();
        $navbar = Navbar::all()->where('status', 'Active');
        $backgrounds = Background::all();
        $tab = TabJurusan::all();
        $content = ContentJurusan::all()->where('jurusan', $jurusan->id);
        $gallery = GalleryJurusan::all()->where('jurusan', $jurusan->id);
        $foto = Gallery::all()->where('katagori_guru', 'Guru Kejurusan')
                                ->where('jurusan', $jurusan->name);

        return view('jurusans', compact('settings', 'navbar', 'backgrounds', 'jurusan', 'content', 'tab', 'gallery', 'foto'));
    }
}
