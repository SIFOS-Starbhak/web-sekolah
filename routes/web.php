<?php
use App\Http\Controllers\ArticleController;
use App\Http\Controllers\ImageController;
use App\Models\Post;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Auth\AuthenticatedSessionController;
use Tymon\JWTAuth\JWTAuth;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
 */
// Route::get('/',[WebController::class,'index']);
Route::post('/logout', [AuthenticatedSessionController::class,'destroy'])->name('logout');
Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Route::get('/login', function () {
    return view('auth.login');
})->name('login');

Route::get('/', 'WebController@index');
// Route::view('/', 'template/main');
Route::get('/profile', 'WebController@profiletb');

Route::get('/artikel', function () {
    $settings = App\Models\Setting::all();
    $article = App\Models\Post::where('status', 'PUBLISHED')->get();
    return view('artikel', compact('settings', 'article'));
});
// Route::get('/profile', function () {
//     $settings = App\Models\Setting::all();
//     App\Models\Bgcontent::all();
//     $homefooters = App\Models\Homefooter::all();
//     return view('profile', compact('settings','homefooters'));
// });

Route::get('/kurikulum', function () {
    $settings = App\Models\Setting::all();
    $struktur = App\Models\Page::where('id', '17')->get(['body', 'title']);
    $kompetensi = App\Models\Page::where('id', '16')->get(['body', 'title']);
    $fotoguru = App\Models\Kategori::all();

    return view('kurikulum', compact('settings', 'struktur', 'kompetensi', 'fotoguru'));
});

Route::get('/kontakkami', function () {
    $settings = App\Models\Setting::all();
    $news = App\Models\Newsslide::all();
    return view('kontakkami', compact('settings', 'news'));
});
Route::get('/sarpras', function () {
    $settings = App\Models\Setting::all();
    $news = App\Models\Newsslide::all();
    return view('sarpras', compact('settings', 'news'));
});
Route::get('/kesiswaan', function () {
    $news = App\Models\Newsslide::all();
    $settings = App\Models\Setting::all();
    $kegiatan_osis = App\Models\Page::where('category_id', '3')->get(['body', 'title']);
    return view('kesiswaan', compact('settings', 'kegiatan_osis', 'news'));
});
Route::get('/hubin', 'HubinController@index');

Route::get('/{kategori:slug}', 'WebController@fotoguru');

Route::get('/showartikel/{id}', function ($id) {
    // dd($id);
    $articleShow = App\Models\Post::where('slug', $id)->first();
    $author = App\Models\Manager::where('id', $articleShow->author_id)->first();
    // dd($author);
    $settings = App\Models\Setting::all();
    return view('showartikel', compact('articleShow', 'settings', 'author'));
})->name('showartikel');

// Manager
Route::group(['prefix' => 'manager','middleware' => ['jwt.verify', 'auth:api']], function () {
    // Route::get('/Article/index', [ArticleController::class, 'index'])-all>name('article.index');
    Route::get('/Article/tambah', [ArticleController::class, 'tambah'])->name('article.tambah');
    Route::post('/Article/post', [ArticleController::class, 'store'])->name('article.store');
    Route::get('/Article/edit/{id}', [ArticleController::class, 'edit'])->name('article.edit');
    Route::delete('/Article/delete/{id}', [ArticleController::class, 'delete'])->name('article.delete');
    Route::patch('/Article/update/{id}', [ArticleController::class, 'update'])->name('article.update');
    Route::put('/Article/draft/{id}', [ArticleController::class, 'draftOrPublised'])->name('article.draft');
    Route::POST('/image/store', [ImageController::class, 'store'])->name('admin.image');
    Route::get('/dashboard', function () {
        $article = Post::where('author_id', Auth::guard('api')->id())->get();
        // dd($article);
        return view('dashboard.dashboard', compact('article'));
    })->name('dashboard.manager');
});

// Guru
Route::group(['prefix' => 'guru', 'middleware' => ['jwt.verify', 'auth:api']], function () {
    Route::get('/Article/index', [ArticleController::class, 'index'])->name('article.index');

    Route::get('/dashboard', function () {
        return view('dashboard.dashboard');
    })->name('dashboard.guru');
});
// Siswa
Route::group(['prefix' =>'siswa', 'middleware' => ['jwt.verify', 'auth:api']], function () {
    Route::get('/dashboard', function () {
        return view('dashboard.dashboard');
    })->name('dashboard.siswa');
});
