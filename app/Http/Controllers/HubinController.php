<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Alumni;
use App\Models\Bgcontent;
use App\Models\Jurusan;
use App\Models\Setting;
use App\Models\Navbar;
use App\Models\Background;

class HubinController extends Controller
{
    public function index()
    {
        // Jurusan TKJ
        $tkjKuliah = Alumni::where('categories_alumnis', 'Kuliah')
            ->where('jurusan', 'Teknik Komputer Jaringan')->where('status', 'PUBLISHED')
            ->latest()->paginate(5);
        $tkjKerja = Alumni::where('categories_alumnis', 'Bekerja')
            ->where('jurusan', 'Teknik Komputer Jaringan')->where('status', 'PUBLISHED')
            ->latest()->paginate(5);
        $tkjWira = Alumni::where('categories_alumnis', 'Wirausaha')
            ->where('jurusan', 'Teknik Komputer Jaringan')->where('status', 'PUBLISHED')
            ->latest()->paginate(5);
        // Akhir Jurusan TKJ 

        // Jurusan MM
        $mmKuliah = Alumni::where('categories_alumnis', 'Kuliah')
            ->where('jurusan', 'Multimedia')->where('status', 'PUBLISHED')
            ->latest()->paginate(5);
        $mmKerja = Alumni::where('categories_alumnis', 'Bekerja')
            ->where('jurusan', 'Multimedia')->where('status', 'PUBLISHED')
            ->latest()->paginate(5);
        $mmWira = Alumni::where('categories_alumnis', 'Wirausaha')
            ->where('jurusan', 'Multimedia')->where('status', 'PUBLISHED')
            ->latest()->paginate(5);
        // Akhir Jurusan MM

        // Jurusan BC
        $bcKuliah = Alumni::where('categories_alumnis', 'Kuliah')
            ->where('jurusan', 'Broadcast')->where('status', 'PUBLISHED')
            ->latest()->paginate(5);
        $bcKerja = Alumni::where('categories_alumnis', 'Bekerja')
            ->where('jurusan', 'Broadcast')->where('status', 'PUBLISHED')
            ->latest()->paginate(5);
        $bcWira = Alumni::where('categories_alumnis', 'Wirausaha')
            ->where('jurusan', 'Broadcast')->where('status', 'PUBLISHED')
            ->latest()->paginate(5);
        // Akhir Jurusan BC

        // Jurusan TEI
        $teiKuliah = Alumni::where('categories_alumnis', 'Kuliah')
            ->where('jurusan', 'Teknik Elektronik Industri')->where('status', 'PUBLISHED')
            ->latest()->paginate(5);
        $teiKerja = Alumni::where('categories_alumnis', 'Bekerja')
            ->where('jurusan', 'Teknik Elektronik Industri')->where('status', 'PUBLISHED')
            ->latest()->paginate(5);
        $teiWira = Alumni::where('categories_alumnis', 'Wirausaha')
            ->where('jurusan', 'Teknik Elektronik Industri')->where('status', 'PUBLISHED')
            ->latest()->paginate(5);
        // Akhir Jurusan TEI

        // Jurusan RPL
        $rplKuliah = Alumni::where('categories_alumnis', 'Kuliah')
            ->where('jurusan', 'Rekayasa Perangkat Lunak')->where('status', 'PUBLISHED')
            ->latest()->paginate(5);
        $rplKerja = Alumni::where('categories_alumnis', 'Bekerja')
            ->where('jurusan', 'Rekayasa Perangkat Lunak')->where('status', 'PUBLISHED')
            ->latest()->paginate(5);
        $rplWira = Alumni::where('categories_alumnis', 'Wirausaha')
            ->where('jurusan', 'Rekayasa Perangkat Lunak')->where('status', 'PUBLISHED')
            ->latest()->paginate(5);
        // Akhir Jurusan RPL




        $jurusan = Jurusan::all();
        $settings = Setting::all();
        $navbar = Navbar::all()->where('status', 'Active');
        $backgrounds = Background::all();

        return view('hubin', compact('backgrounds', 'tkjKuliah', 'tkjWira', 'tkjKerja', 'mmKuliah', 'mmWira', 'mmKerja', 'bcKuliah', 'bcWira', 'bcKerja', 'teiKerja', 'teiWira', 'teiKuliah', 'rplKerja', 'rplWira', 'rplKuliah', 'jurusan', 'settings', 'navbar'));
    }
}
