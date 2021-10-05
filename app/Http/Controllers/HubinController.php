<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Alumni;
use App\Models\Bgcontent;
use App\Models\Jurusan;
use App\Models\Setting;

class HubinController extends Controller
{
    public function index()
    {
        // Jurusan TKJ
        $tkjKuliah = Alumni::where('categories_alumnis', 'Kuliah')
            ->where('jurusan', 'Teknik Komputer Jaringan')
            ->get();
        $tkjKerja = Alumni::where('categories_alumnis', 'Bekerja')
            ->where('jurusan', 'Teknik Komputer Jaringan')
            ->get();
        $tkjWira = Alumni::where('categories_alumnis', 'Wirausaha')
            ->where('jurusan', 'Teknik Komputer Jaringan')
            ->get();
        // Akhir Jurusan TKJ 

        // Jurusan MM
        $mmKuliah = Alumni::where('categories_alumnis', 'Kuliah')
            ->where('jurusan', 'Multimedia')
            ->get();
        $mmKerja = Alumni::where('categories_alumnis', 'Bekerja')
            ->where('jurusan', 'Multimedia')
            ->get();
        $mmWira = Alumni::where('categories_alumnis', 'Wirausaha')
            ->where('jurusan', 'Multimedia')
            ->get();
        // Akhir Jurusan MM

        // Jurusan BC
        $bcKuliah = Alumni::where('categories_alumnis', 'Kuliah')
            ->where('jurusan', 'Broadcast')
            ->get();
        $bcKerja = Alumni::where('categories_alumnis', 'Bekerja')
            ->where('jurusan', 'Broadcast')
            ->get();
        $bcWira = Alumni::where('categories_alumnis', 'Wirausaha')
            ->where('jurusan', 'Broadcast')
            ->get();
        // Akhir Jurusan BC

        // Jurusan TEI
        $teiKuliah = Alumni::where('categories_alumnis', 'Kuliah')
            ->where('jurusan', 'Teknik Elektronik Industri')
            ->get();
        $teiKerja = Alumni::where('categories_alumnis', 'Bekerja')
            ->where('jurusan', 'Teknik Elektronik Industri')
            ->get();
        $teiWira = Alumni::where('categories_alumnis', 'Wirausaha')
            ->where('jurusan', 'Teknik Elektronik Industri')
            ->get();
        // Akhir Jurusan TEI

        // Jurusan RPL
        $rplKuliah = Alumni::where('categories_alumnis', 'Kuliah')
            ->where('jurusan', 'Rekayasa Perangkat Lunak')
            ->get();
        $rplKerja = Alumni::where('categories_alumnis', 'Bekerja')
            ->where('jurusan', 'Rekayasa Perangkat Lunak')
            ->get();
        $rplWira = Alumni::where('categories_alumnis', 'Wirausaha')
            ->where('jurusan', 'Rekayasa Perangkat Lunak')
            ->get();
        // Akhir Jurusan RPL




        $jurusan = Jurusan::all();
        $settings = Setting::all();

        return view('hubin', compact('tkjKuliah', 'tkjWira', 'tkjKerja', 'mmKuliah', 'mmWira', 'mmKerja', 'bcKuliah', 'bcWira', 'bcKerja', 'teiKerja', 'teiWira', 'teiKuliah', 'rplKerja', 'rplWira', 'rplKuliah', 'jurusan', 'settings'));
    }
}
