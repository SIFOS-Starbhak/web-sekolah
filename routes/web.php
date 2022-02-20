<?php

use App\Http\Controllers\ArticleController;
use App\Http\Controllers\AsalSekolahController;
use App\Http\Controllers\ImageController;
use App\Http\Controllers\WebController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\CalonSiswaController;
use App\Http\Controllers\PDFController;
use App\Http\Controllers\RegistalumController;
use App\Http\Controllers\PembayaranCasisController;
use App\Http\Controllers\UserReferenceController;
use App\Models\Post;
use App\Models\Gugus;
use App\Models\UserReference;
use App\Models\Kela;
use App\Models\User;
use App\Models\AsalSekolah;
use App\Models\CalonSiswa;
use App\Models\Page;
use App\Models\Setting;
use App\Models\Pembayaran;
use App\Models\Category;
use App\Models\PembayaranCalonSiswa;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Auth\AuthenticatedSessionController;
use App\Http\Controllers\DashboardManager;
use Tymon\JWTAuth\JWTAuth;
// use DataTables;

use Illuminate\Http\Request;

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
Route::post('/logout', [AuthenticatedSessionController::class, 'destroy'])->name('logout');
Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Route::get('/login', function () {
    return view('auth.login');
})->name('login')->middleware('guest:api');

Route::get('/', 'WebController@index');
// Route::view('/', 'template/main');
Route::get('/profile', 'WebController@profiletb');

// Page Sarpras
Route::get('sarpras/sarana-dan-prasarana-sekolah', 'WebController@sarpras');
Route::get('sarpras/ruang-pembelajaran-umum', 'WebController@sarpras');
Route::get('sarpras/ruang-pembelajaran-khusus', 'WebController@sarpras');
Route::get('sarpras/fasilitas-parkir-kendaraan-siswa', 'WebController@sarpras');
Route::get('sarpras/mushola-raudhotul-ilmi', 'WebController@sarpras');
Route::get('sarpras/fasilitas-pendukung', 'WebController@sarpras');

// Page Hubin
Route::get('/hubin/data-tamatan', 'HubinController@index')->name('hubin');

// Page Kurikulum
Route::get('/kurikulum/guru-smk-taruna-bhakti', 'WebController@kurikulumguru');
Route::get('/guru-starbhak/{kategori:slug}', 'WebController@fotoguru');

// Page BKK
Route::get('/bkk/open-recruitment', 'WebController@bkk');
Route::get('/bkk/data-siswa-starbhak', 'WebController@bkk');

// Page Ekstrakulikuler
Route::get('/kesiswaan/ekstrakurikuler', 'WebController@ekskul');
Route::get('/ekskul/{eskul:slug}', 'WebController@eskul');

// Page Ekstrakulikuler
Route::get('/program-keahlian/jurusan', 'WebController@jurusan');
Route::get('/jurusan/{jurusan:slug}', 'WebController@jurusans');

// Page Gallery
Route::get('/gallery/{gallery:slug}', 'WebController@galleries');

// Page Kontak Kami

// Page Register Alumni
Route::post('/registalum/store', [RegistalumController::class, 'store'])->name('store');
Route::get('/registalum', [RegistalumController::class, 'create']);
// Route::get('/kesiswaan', 'WebController@kesiswaan');
// Route::get('/kurikulum/kurikulumguru', 'WebController@kurikulumguru');
Route::get('/stream-cv/siswa/{id}', [PDFController::class, 'Stream'])->name('stream.cv');

// Artikel
Route::get('/artikel', function () {
    $settings = App\Models\Setting::all();
    $article = App\Models\Post::where('status', 'PUBLISHED')->get();
    $backgrounds = App\Models\Background::all();
    $navbar = App\Models\Navbar::all()->where('status', 'Active');
    return view('artikel', compact('settings', 'article', 'backgrounds', 'navbar'));
});
Route::get('/author/{user}', 'WebController@author');
Route::get('/posted/{posted}', 'WebController@posted');
Route::get('/category/{category:slug}', 'WebController@category');
Route::get('/showartikel/{id}', function ($id) {
    // dd($id);
    $articleShow = App\Models\Post::where('slug', $id)->first();
    // dd($articleShow->author_id);
    $author = App\Models\User::where('id', $articleShow->author_id)->first();
    // dd($author);
    $settings = App\Models\Setting::all();
    $navbar = App\Models\Navbar::all()->where('status', 'Active');
    $backgrounds = App\Models\Background::all();
    return view('showartikel', compact('articleShow', 'settings', 'author', 'navbar', 'backgrounds'));
})->name('showartikel');

// Manager
Route::group(['prefix' => 'manager', 'middleware' => ['jwt.verify', 'auth:api']], function () {
    // Route::get('/Article/index', [ArticleController::class, 'index'])-all>name('article.index');
    Route::get('/edit/profile/{id}', [ProfileController::class, 'edit'])->name('edit.profileManager');
    Route::put('/update/profile/{id}', [ProfileController::class, 'update'])->name('update.profileManager');
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
Route::group(['prefix' => 'guru', 'middleware' => ['jwt.verify', 'auth:api', 'role:guru']], function () {
    Route::get('/Article/index', [ArticleController::class, 'index'])->name('article.index');
    Route::get('/edit/profile/{id}', [ProfileController::class, 'edit'])->name('edit.profileGuru');
    Route::put('/update/profile/{id}', [ProfileController::class, 'update'])->name('update.profileGuru');
    Route::get('/dashboard', function () {

        $article = Post::all();
        $siswa_referal = UserReference::all();
        $calon_siswa = CalonSiswa::all();
    
        $X = User::wherehas('kelas', function ($query) {
            $query->where('kelas', 'X');
        })->get();
        $X_RPL = User::wherehas('kelas', function ($query) {
            $query->where('kelas', 'X')->where('jurusan', 'RPL');
        })->get();
        $X_BC = User::wherehas('kelas', function ($query) {
            $query->where('kelas', 'X')->where('jurusan', 'BC');
        })->get();
        $X_MM = User::wherehas('kelas', function ($query) {
            $query->where('kelas', 'X')->where('jurusan', 'MM');
        })->get();
        $X_TKJ = User::wherehas('kelas', function ($query) {
            $query->where('kelas', 'X')->where('jurusan', 'TKJ');
        })->get();
        $X_TEI = User::wherehas('kelas', function ($query) {
            $query->where('kelas', 'X')->where('jurusan', 'TEI');
        })->get();

        // dd($RPL);
        $XI = User::wherehas('kelas', function ($query) {
            $query->where('kelas', 'XI');
        })->get();
        $XI_RPL = User::wherehas('kelas', function ($query) {
            $query->where('kelas', 'XI')->where('jurusan', 'RPL');
        })->get();
        $XI_BC = User::wherehas('kelas', function ($query) {
            $query->where('kelas', 'XI')->where('jurusan', 'BC');
        })->get();
        $XI_MM = User::wherehas('kelas', function ($query) {
            $query->where('kelas', 'XI')->where('jurusan', 'MM');
        })->get();
        // dd($XI_MM);
        $XI_TKJ = User::wherehas('kelas', function ($query) {
            $query->where('kelas', 'XI')->where('jurusan', 'TKJ');
        })->get();
        $XI_TEI = User::wherehas('kelas', function ($query) {
            $query->where('kelas', 'XI')->where('jurusan', 'TEI');
        })->get();

        $XII = User::wherehas('kelas', function ($query) {
            $query->where('kelas', 'XII');
        })->get();

        $XII_RPL = User::wherehas('kelas', function ($query) {
            $query->where('kelas', 'XII')->where('jurusan', 'RPL');
        })->get();
        $XII_BC = User::wherehas('kelas', function ($query) {
            $query->where('kelas', 'XII')->where('jurusan', 'BC');
        })->get();
        $XII_MM = User::wherehas('kelas', function ($query) {
            $query->where('kelas', 'XII')->where('jurusan', 'MM');
        })->get();
        $XII_TKJ = User::wherehas('kelas', function ($query) {
            $query->where('kelas', 'XII')->where('jurusan', 'TKJ');
        })->get();
        $XII_TEI = User::wherehas('kelas', function ($query) {
            $query->where('kelas', 'XII')->where('jurusan', 'TEI');
        })->get();




        return view('dashboard.dashboard', compact(
            'article',
            'X',
            'XI',
            'XII',
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
            'siswa_referal'
        ));
    })->name('dashboard.guru');
});
// Siswa
Route::group(['prefix' => 'siswa', 'middleware' => ['jwt.verify', 'auth:api', 'role:siswa']], function () {
    Route::get('/edit/profile/{id}', [ProfileController::class, 'edit'])->name('edit.profileSiswa');
    Route::put('/update/profile/{id}', [ProfileController::class, 'update'])->name('update.profileSiswa');
    Route::get('/dashboard', function () {
        // $article = Post::all();
        $article = Category::wherehas('post', function ($query) {
            $query->where('name', 'Siswa');
        })->get();
        // dd($article);
        return view('dashboard.dashboard', compact('article'));
    })->name('dashboard.siswa');
});

// Perusahaan
Route::group(['prefix' => 'perusahaan', 'middleware' => ['jwt.verify', 'auth:api', 'role:perusahaan']], function () {
    Route::get('/edit/profile/{id}', [ProfileController::class, 'edit'])->name('edit.profilePerusahaan');
    Route::put('/update/profile/{id}', [ProfileController::class, 'update'])->name('update.profilePerusahaan');
    Route::get('/detail/siswa/{id}', [ProfileController::class, 'detail'])->name('detail.profile');
    Route::get('/download-cv/siswa/{id}', [PDFController::class, 'downloadCV'])->name('download.cv');
    Route::get('/dashboard', function () {
        // $article = Post::all();
        $article = Category::wherehas('post', function ($query) {
            $query->where('name', 'Perusahaan');
        })->get();
        // dd($article);

        $XII_RPL = User::wherehas('kelas', function ($query) {
            $query->where('kelas', 'XII')->where('jurusan', 'RPL');
        })->paginate(6);
        $XII_BC = User::wherehas('kelas', function ($query) {
            $query->where('kelas', 'XII')->where('jurusan', 'BC');
        })->paginate(6);
        $XII_MM = User::wherehas('kelas', function ($query) {
            $query->where('kelas', 'XII')->where('jurusan', 'MM');
        })->paginate(6);
        $XII_TKJ = User::wherehas('kelas', function ($query) {
            $query->where('kelas', 'XII')->where('jurusan', 'TKJ');
        })->paginate(6);
        $XII_TEI = User::wherehas('kelas', function ($query) {
            $query->where('kelas', 'XII')->where('jurusan', 'TEI');
        })->paginate(6);
        // dd($XII_RPL);

        return view('dashboard.dashboard', compact('article','XII_RPL','XII_BC','XII_MM','XII_TKJ','XII_TEI'));
    })->name('dashboard.perusahaan');
});


// Panitia
Route::group(['prefix' => 'panitia', 'middleware' => ['jwt.verify', 'auth:api', 'role:user']], function () {

    Route::get('/edit/profile/{id}', [ProfileController::class, 'edit'])->name('edit.profilePanitia');
    Route::put('/update/profile/{id}', [ProfileController::class, 'update'])->name('update.profilePanitia');
    



    Route::get('/gugus/table',[CalonSiswaController::class,'gugus_table'])->name('table.gugus');
    Route::get('/ReferalCode/detail_pendaftar/{id}', [UserReferenceController::class, 'detail_pendaftar_referal'])->name('panitia.pendaftar_referal');
    Route::post('/ReferalCode/store', [UserReferenceController::class, 'store'])->name('panitia.store.referalcode');
    Route::post('/CalonSiswa/store/', [CalonSiswaController::class, 'store'])->name('panitia.store.casis');
    Route::get('/CalonSiswa/edit/{id}', [CalonSiswaController::class, 'edit'])->name('panitia.edit.casis');
    Route::get('/CalonSiswa/detail/{id}', [CalonSiswaController::class, 'detail'])->name('panitia.detail.casis');
    Route::put('/CalonSiswa/update/{id}', [CalonSiswaController::class, 'update_from_panitia'])->name('panitia.update.casis');
   
    Route::put('/CalonSiswa/gugus/{id}', [CalonSiswaController::class, 'gugus'])->name('panitia.update.casis_gugus');
    Route::get('/CalonSiswa/gugus/PenempatanKelas/{id}', [CalonSiswaController::class, 'penempatan_kelas'])->name('panitia.edit.penempatanKelasGugus');
    Route::put('/CalonSiswa/gugus/PenempatanKelas/ubah', [CalonSiswaController::class, 'penempatan_kelas_update'])->name('panitia.update.penempatanKelasGugus');
   
    Route::get('/PembayaranCalonSiswa/validasiPembayaran/{id}', [PembayaranCasisController::class, 'validasi_pembayaran'])->name('panitia.validasi_pembayaran');
    Route::get('/PembayaranCalonSiswa/detailImage/{id}', [PembayaranCasisController::class, 'detail_image'])->name('panitia.detail_image');
    Route::put('/PembayaranCalonSiswa/konfirmasi/{id}', [PembayaranCasisController::class, 'konfirmasi'])->name('panitia.konfirmasi');
    // Route::put('/PembayaranCalonSiswa/konfirmasiTolak/{id}', [PembayaranCasisController::class, 'konfirmasi_tolak'])->name('panitia.konfirmasi_tolak');


        

    Route::get('/dashboard', function (Request $request) {
        $no_casis = CalonSiswa::all()->count() + 1;
        // dd($no_casis);
        $no_daftar = str_pad($no_casis, 3, '0', STR_PAD_LEFT);
        // dd($increment);
        $asal_sekolah = AsalSekolah::all();
        $item = ['PPLG','ANIMASI','TJKT','BCF','TE'];
        foreach ($item as $key => $value) {
            $jurusan[] = Kela::where('kelas','X')->where('jurusan',$value)->first();
        }
        $kelas = Kela::all();
        // $search =  $request->input('search');
        // $filter =  $request->input('filter_status');
        // // dd($filter == "0");
      
        // // dd($search);
        // if($filter != ""){
        //         if ($filter == "0") {
        //             $casis_data = CalonSiswa::where('gugus_id',null)->get();
        //             foreach ($casis_data as $item ) {
        //                 // dd($casis);
        //                 $data_pembayaran = App\Models\Pembayaran::first();
                        
        //                 $pembayaran_acc =  App\Models\PembayaranCalonSiswa::where('calonsiswa_id',$item->id)->where('status','=',1)->get();
        //                 // dd($pembayaran_acc);
        //                 $nominal_menyeluruh = [];
        //                 foreach ($pembayaran_acc as $key ) {
        //                     // $calonsiswa[] = $key->calonsiswa_id; 
        //                     $nominal_menyeluruh[] = $key->nominal;
        //                 } 
        //                 $total_pembayaran = array_sum($nominal_menyeluruh);
                        
        //                 $ratio = $total_pembayaran / $data_pembayaran->nominal_pembayaran * 100;
        //                 $filter_belum_lunas[] = [$item->id,$ratio];
        //                 // dd($filter_belum_lunas);
        //             }
        //             foreach ($filter_belum_lunas as $key) {
        //                 if ($key[1] < 100.0) {
        //                     $casis_id_lunas[] = $key;
        //                 }
        //             }
        //             foreach ($casis_id_lunas as $key ) {
        //                 $casis_filter[] = CalonSiswa::where('id',$key[0])->first();
        //             }
        //         }else{
        //                         $casis_data = CalonSiswa::where('gugus_id',null)->get();
        //                 foreach ($casis_data as $item ) {
        //                     // dd($casis);
        //                     $data_pembayaran = App\Models\Pembayaran::first();
                            
        //                     $pembayaran_acc =  App\Models\PembayaranCalonSiswa::where('calonsiswa_id',$item->id)->where('status','=',1)->get();
        //                     // dd($pembayaran_acc);
        //                     $nominal_menyeluruh = [];
        //                     foreach ($pembayaran_acc as $key ) {
        //                         // $calonsiswa[] = $key->calonsiswa_id; 
        //                         $nominal_menyeluruh[] = $key->nominal;
        //                     } 
        //                     $total_pembayaran = array_sum($nominal_menyeluruh);
                            
        //                     $ratio = $total_pembayaran / $data_pembayaran->nominal_pembayaran * 100;
        //                     $filter_lunas[] = [$item->id,$ratio];
                            
        //                 }
        //                 foreach ($filter_lunas as $key) {
        //                     if ($key[1] == 100.0) {
        //                         $casis_id_lunas[] = $key;
        //                     }
        //                 }
        //                 foreach ($casis_id_lunas as $key ) {
        //                 $casis_filter[] = CalonSiswa::where('id',$key[0])->paginate(2);
        //                 }
        //         }
            
        // }else{
        //     $casis_filter = [];

        // }
        // if ($search != "") {
        //     $casis_search = CalonSiswa::where(function ($query) use ($search){
        //         $query->where('nama_lengkap', 'like', '%'.$search.'%')
        //           ->where('gugus_id',null)
        //             ->orWhere('nik', 'like', '%'.$search.'%');
        //     })->paginate(2);
            
        // }else{
        //     $casis_search = [];
        // }

            // dd($casis_filter,$casis_search);

            // $casis = $casis_search->paginate();
            // dd($casis);
            // ->paginate(10);
            // if ($casis->toArray()['data'] == null ) {
            //         $casis[] = "Data Tidak ada";
            // }
            // dd($casis);
            // $casis->appends(['q' => $search]);
            // $casis = DB::table('calon_siswa')
            // ->where('pegawai_nama','like',"%".$cari."%")
            // ->paginate();
        // }elseif($filter == "LUNAS"){
        //     $casis_data = CalonSiswa::where('gugus_id',null)->get();
        //     foreach ($casis_data as $item ) {
        //         // dd($casis);
        //         $data_pembayaran = App\Models\Pembayaran::first();
                
        //         $pembayaran_acc =  App\Models\PembayaranCalonSiswa::where('calonsiswa_id',$item->id)->where('status','=',1)->get();
        //         // dd($pembayaran_acc);
        //         $nominal_menyeluruh = [];
        //         foreach ($pembayaran_acc as $key ) {
        //             // $calonsiswa[] = $key->calonsiswa_id; 
        //             $nominal_menyeluruh[] = $key->nominal;
        //            } 
        //            $total_pembayaran = array_sum($nominal_menyeluruh);
                   
        //            $ratio = $total_pembayaran / $data_pembayaran->nominal_pembayaran * 100;
        //            $filter_lunas[] = [$item->id,$ratio];
                   
        //     }
        //     foreach ($filter_lunas as $key) {
        //         if ($key[1] == 100.0) {
        //             $casis_id_lunas[] = $key;
        //         }
        //     }
        //     foreach ($casis_id_lunas as $key ) {
        //        $casis[] = CalonSiswa::where('id',$key[0])->first();
        //     }
        //     // dd(collect($casis)->toArray());
        
        // }else{
            // if ($search == "" && $filter == "") {
                $casis = CalonSiswa::where('gugus_id','=',null)->get();
            // }
        // }
        
        // $casis = CalonSiswa::paginate(5);
        $referal_code = UserReference::all();

        $gugus = Gugus::all();

        $data_pembayaran = App\Models\Pembayaran::first();
        
        //  $item
       //  $calon_siswa = App\Models\CalonSiswa::where('id',$item->id)
        // $pembayaran_acc =  App\Models\PembayaranCalonSiswa::where('calonsiswa_id',$item->id)->where('status','=',1)->get();
        // $pembayaran_acc = [];
       //  $data_pembayaran->nominal_pembayaran
    //  $a =  CalonSiswa::has('pembayaranCasis')->get();
        // foreach ($casis as $key ) {
        //     $pembayaran_acc[] = PembayaranCalonSiswa::where('calonsiswa_id',$key->id)->where('status','=',1)->get()->toArray();

        //     $casis_pembayaran = [];
        //     foreach (array_filter(collect($pembayaran_acc)->toArray()) as $key => $value  ) {
        //         $casis_pembayaran[] = $value[$key];
        //        } 
        //     //    $total_pembayaran = array_sum($casis_pembayaran); 
        //     //    $ratio = $total_pembayaran / $data_pembayaran->nominal_pembayaran * 100;

        // }
        // foreach ($casis_pembayaran as $key => $value ) {
        //     // dd($value);
        // //     foreach ($value as  $item) {
        // //         dd($item);
        // //        $w[] = $item;
        // //        # code
        // //    }
        // }
        // // $w = [];
        // dd($casis_pembayaran);
        // foreach (array_filter(collect($pembayaran_acc)->toArray()) as $key => $value) {
        //     $w[] = $value[];
        // }
// $emptyRemoved = array_filter($linksArray);
                // dd(array_filter(collect($pembayaran_acc)->toArray()));
        // $siswa_udabayar = CalonSiswa::has('casis')->get();
        // $my_percentage = min(100, 110);
          // Get the next closest 100
//   $nextHundred = ceil(10 / 100) * 100;

  // Calculate ratio against nextHundred
        // dd($ratio); 
        // dd($casis->toArray());
        // dd($casis->toArray());

        return view('dashboard.dashboard',compact('gugus','asal_sekolah','no_daftar','casis','jurusan','kelas','referal_code'));
    })->name('dashboard.panitia');
});

// / Casis
Route::group(['prefix' => 'casis', 'middleware' => ['jwt.verify', 'auth:api', 'role:casis']], function () {
    Route::get('/pembayaran/casis/{id}', [PembayaranCasisController::class, 'pembayaran_casis'])->name('pembayaran.casis');
    Route::post('/pembayaran/casis/store', [PembayaranCasisController::class, 'pembayaran_casis_store'])->name('pembayaran.casisStore');
    Route::get('/edit/profile/{id}', [ProfileController::class, 'edit'])->name('edit.profileCasis');
    Route::put('/update/profile/{id}', [CalonSiswaController::class, 'update_from_casis'])->name('update.profileCasis');
    
    Route::get('/dashboard', function () {
        $pembayaran = Pembayaran::all();

        $user_id =  Auth::guard('api')->user()->id;
        $casis_id = App\Models\User::where('id', $user_id)->first()->calon_siswa_id;
      
        return view('casis.index',compact('pembayaran'));
    })->name('dashboard.casis');
});

//Admin
Route::group(['prefix' => 'adm', 'middleware' => ['jwt.verify', 'auth:api', 'role:admin']], function () {
    Route::get('/edit/profile/{id}', [ProfileController::class, 'edit'])->name('edit.profileAdm');
    Route::put('/update/profile/{id}', [ProfileController::class, 'update'])->name('update.profileAdm');
    Route::get('/dashboard', function () {
        // $article = Post::all();
  
        // dd($article);
        return view('dashboard.dashboard');
    })->name('dashboard.adm');
});
// Dinamis Page Web Sekolah
Route::get('/{menu:slug}', 'WebController@menucard');
Route::get('/{nav:slug}/{submenu:slug}', 'WebController@submenu');
