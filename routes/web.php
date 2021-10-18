<?php
use App\Http\Controllers\ArticleController;
use App\Http\Controllers\ImageController;
use App\Http\Controllers\WebController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\RegistalumController;
use App\Models\Post;
use App\Models\Kela;
use App\Models\User;
use App\Models\Page;
use App\Models\Setting;
use App\Models\Category;
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
})->name('login')->middleware('guest:api');

Route::get('/', 'WebController@index');
// Route::view('/', 'template/main');
Route::get('/profile', 'WebController@profiletb');
Route::get('sarpras/sarana-dan-prasarana-sekolah', 'WebController@sarpras');
Route::get('sarpras/ruang-pembelajaran-umum', 'WebController@sarpras');
Route::get('sarpras/ruang-pembelajaran-khusus', 'WebController@sarpras');
Route::get('sarpras/fasilitas-parkir-kendaraan-siswa', 'WebController@sarpras');
Route::get('sarpras/mushola-raudhotul-ilmi', 'WebController@sarpras');
Route::get('sarpras/fasilitas-pendukung', 'WebController@sarpras');

Route::get('/hubin/data-tamatan', 'HubinController@index')->name('hubin');
Route::get('/kurikulum/guru-smk-taruna-bhakti', 'WebController@kurikulumguru')->name('hubin');

Route::get('/gallery/{gallery:slug}', 'WebController@galleries');
// route::get('/gallery', 'WebController@gallery');
// route::get('/gallery/tahun-2021', 'WebController@gallery21');
// route::get('/gallery/tahun-2020', 'WebController@gallery20');
// route::get('/gallery/tahun-2019', 'WebController@gallery19');
// route::get('/gallery/tahun-2018', 'WebController@gallery18');
// route::get('/gallery/tahun-2017', 'WebController@gallery17');

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

Route::get('/kurikulum', 'WebController@kurikulum');
Route::get('/bkk', 'WebController@bkk');
Route::get('/bkk/{bkk:slug}', 'WebController@bkkmenu');

Route::get('/kontakkami', function () {
    $settings = App\Models\Setting::all();
    $navbar = App\Models\Navbar::all()->where('status', 'Active');
    return view('kontakkami', compact('settings'));
});
Route::post('/registalum/store',[RegistalumController::class,'store'])->name('store');
Route::get('/registalum',[RegistalumController::class,'create']);
// Route::get('/kesiswaan', 'WebController@kesiswaan');
// Route::get('/kurikulum/kurikulumguru', 'WebController@kurikulumguru');
Route::get('/kurikulum/kurikulumsmktb', 'WebController@kurikulumsmktb');

Route::get('/kurikulum/{kategori:slug}', 'WebController@fotoguru');

Route::get('/category/{category:slug}', 'WebController@category');

Route::get('/showartikel/{id}', function ($id) {
    // dd($id);
    $articleShow = App\Models\Post::where('slug', $id)->first();
    // dd($articleShow->author_id);
    $author = App\Models\User::where('id', $articleShow->author_id)->first();
    // dd($author);
    $settings = App\Models\Setting::all();
    $navbar = App\Models\Navbar::all()->where('status', 'Active');
    return view('showartikel', compact('articleShow', 'settings', 'author', 'navbar'));
})->name('showartikel');




    Route::get('/author/{user}', 'WebController@author');

    Route::get('/posted/{posted}', 'WebController@posted');


    
    
    // Manager
    Route::group(['prefix' => 'manager','middleware' => ['jwt.verify', 'auth:api']], function () {
        // Route::get('/Article/index', [ArticleController::class, 'index'])-all>name('article.index');
        Route::get('/edit/profile/{id}', [ProfileController::class, 'edit'])->name('edit.profile');
        Route::put('/update/profile/{id}', [ProfileController::class, 'update'])->name('update.profile');
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

        $article = Post::all();

        $X = User::wherehas('kelas', function($query){
            $query->where('kelas','X');
        })->get();
        $X_RPL = User::wherehas('kelas', function($query){
            $query->where('kelas','X')->where('jurusan','RPL');
        })->get();
        $X_BC = User::wherehas('kelas', function($query){
            $query->where('kelas','X')->where('jurusan','BC');
        })->get();
        $X_MM = User::wherehas('kelas', function($query){
            $query->where('kelas','X')->where('jurusan','MM');
        })->get();
        $X_TKJ = User::wherehas('kelas', function($query){
            $query->where('kelas','X')->where('jurusan','TKJ');
        })->get();
        $X_TEI = User::wherehas('kelas', function($query){
            $query->where('kelas','X')->where('jurusan','TEI');
        })->get();

        // dd($RPL);
        $XI = User::wherehas('kelas', function($query){
            $query->where('kelas','XI');
        })->get();
        $XI_RPL = User::wherehas('kelas', function($query){
            $query->where('kelas','XI')->where('jurusan','RPL');
        })->get();
        $XI_BC = User::wherehas('kelas', function($query){
            $query->where('kelas','XI')->where('jurusan','BC');
        })->get();
        $XI_MM = User::wherehas('kelas', function($query){
            $query->where('kelas','XI')->where('jurusan','MM');
        })->get();
        // dd($XI_MM);
        $XI_TKJ = User::wherehas('kelas', function($query){
            $query->where('kelas','XI')->where('jurusan','TKJ');
        })->get();
        $XI_TEI = User::wherehas('kelas', function($query){
            $query->where('kelas','XI')->where('jurusan','TEI');
        })->get();

        $XII = User::wherehas('kelas', function($query){
            $query->where('kelas','XII');
        })->get();

        $XII_RPL = User::wherehas('kelas', function($query){
            $query->where('kelas','XII')->where('jurusan','RPL');
        })->get();
        $XII_BC = User::wherehas('kelas', function($query){
            $query->where('kelas','XII')->where('jurusan','BC');
        })->get();
        $XII_MM = User::wherehas('kelas', function($query){
            $query->where('kelas','XII')->where('jurusan','MM');
        })->get();
        $XII_TKJ = User::wherehas('kelas', function($query){
            $query->where('kelas','XII')->where('jurusan','TKJ');
        })->get();
        $XII_TEI = User::wherehas('kelas', function($query){
            $query->where('kelas','XII')->where('jurusan','TEI');
        })->get();




        return view('dashboard.dashboard',compact('article','X','XI','XII',
        'X_RPL',
        'X_BC',
        'X_MM',
        'X_TKJ',
        'X_TEI',

        'XI_RPL',
        'XI_BC',
        'XI_MM',
        'XI_TKJ',
        'XI_TEI',

        'XII_RPL',
        'XII_BC',
        'XII_MM',
        'XII_TKJ',
        'XII_TEI',
    ));
    })->name('dashboard.guru');
});
// Siswa
Route::group(['prefix' =>'siswa', 'middleware' => ['jwt.verify', 'auth:api']], function () {
    Route::get('/dashboard', function () {
        // $article = Post::all();
        $article = Category::wherehas('post', function($query){
            $query->where('name','Siswa');
        })->get();
        // dd($article);
        return view('dashboard.dashboard',compact('article'));
    })->name('dashboard.siswa');
});

Route::get('/{menu:slug}', 'WebController@menucard');

Route::get('/{nav:slug}/{submenu:slug}', 'WebController@submenu');
