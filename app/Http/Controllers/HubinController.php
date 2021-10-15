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
            ->where('jurusan', 'Teknik Komputer Jaringan')->where('status', 'PUBLISHED')
            ->latest()->paginate(5)
            ->get();
        $tkjKerja = Alumni::where('categories_alumnis', 'Bekerja')
            ->where('jurusan', 'Teknik Komputer Jaringan')->where('status', 'PUBLISHED')
            ->latest()->paginate(5)
            ->get();
        $tkjWira = Alumni::where('categories_alumnis', 'Wirausaha')
            ->where('jurusan', 'Teknik Komputer Jaringan')->where('status', 'PUBLISHED')
            ->latest()->paginate(5)
            ->get();
        // Akhir Jurusan TKJ 

        // Jurusan MM
        $mmKuliah = Alumni::where('categories_alumnis', 'Kuliah')
            ->where('jurusan', 'Multimedia')->where('status', 'PUBLISHED')
            ->latest()->paginate(5)
            ->get();
        $mmKerja = Alumni::where('categories_alumnis', 'Bekerja')
            ->where('jurusan', 'Multimedia')->where('status', 'PUBLISHED')
            ->latest()->paginate(5)
            ->get();
        $mmWira = Alumni::where('categories_alumnis', 'Wirausaha')
            ->where('jurusan', 'Multimedia')->where('status', 'PUBLISHED')
            ->latest()->paginate(5)
            ->get();
        // Akhir Jurusan MM

        // Jurusan BC
        $bcKuliah = Alumni::where('categories_alumnis', 'Kuliah')
            ->where('jurusan', 'Broadcast')->where('status', 'PUBLISHED')
            ->latest()->paginate(5)
            ->get();
        $bcKerja = Alumni::where('categories_alumnis', 'Bekerja')
            ->where('jurusan', 'Broadcast')->where('status', 'PUBLISHED')
            ->latest()->paginate(5)
            ->get();
        $bcWira = Alumni::where('categories_alumnis', 'Wirausaha')
            ->where('jurusan', 'Broadcast')->where('status', 'PUBLISHED')
            ->latest()->paginate(5)
            ->get();
        // Akhir Jurusan BC

        // Jurusan TEI
        $teiKuliah = Alumni::where('categories_alumnis', 'Kuliah')
            ->where('jurusan', 'Teknik Elektronik Industri')->where('status', 'PUBLISHED')
            ->latest()->paginate(5)
            ->get();
        $teiKerja = Alumni::where('categories_alumnis', 'Bekerja')
            ->where('jurusan', 'Teknik Elektronik Industri')->where('status', 'PUBLISHED')
            ->latest()->paginate(5)
            ->get();
        $teiWira = Alumni::where('categories_alumnis', 'Wirausaha')
            ->where('jurusan', 'Teknik Elektronik Industri')->where('status', 'PUBLISHED')
            ->latest()->paginate(5)
            ->get();
        // Akhir Jurusan TEI

        // Jurusan RPL
        $rplKuliah = Alumni::where('categories_alumnis', 'Kuliah')
            ->where('jurusan', 'Rekayasa Perangkat Lunak')->where('status', 'PUBLISHED')
            ->latest()->paginate(5)
            ->get();
        $rplKerja = Alumni::where('categories_alumnis', 'Bekerja')
            ->where('jurusan', 'Rekayasa Perangkat Lunak')->where('status', 'PUBLISHED')
            ->latest()->paginate(5)
            ->get();
        $rplWira = Alumni::where('categories_alumnis', 'Wirausaha')
            ->where('jurusan', 'Rekayasa Perangkat Lunak')->where('status', 'PUBLISHED')
            ->latest()->paginate(5)
            ->get();
        // Akhir Jurusan RPL




        $jurusan = Jurusan::all();
        $settings = Setting::all();

        return view('hubin', compact('tkjKuliah', 'tkjWira', 'tkjKerja', 'mmKuliah', 'mmWira', 'mmKerja', 'bcKuliah', 'bcWira', 'bcKerja', 'teiKerja', 'teiWira', 'teiKuliah', 'rplKerja', 'rplWira', 'rplKuliah', 'jurusan', 'settings'));
    }
}
