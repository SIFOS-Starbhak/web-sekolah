<?php

namespace App\Http\Controllers;

use App\Models\Alumni;
use App\Models\Jurusan;
use Illuminate\Http\Request;

class RegistalumController extends Controller
{
    
    public function create()
{
    
    return view('/registalum', [ 'jurusans' => Jurusan::all() ]);
}

public function store(Request $request)
{
    $this->validate($request, [
        'name'     => 'required',
        'tahun_lulus'     => 'required',
        'nama_perusahaan'     => 'required',
        'posisi'     => 'required',
        'tahun_kerja'   => 'required',
        'penghasilan'   => 'required',
        'categories_alumnis'   => 'required',
        'jurusan'   => 'required',
    ]);

    //upload foto

    $registalum = Alumni::create([
        'name'     => $request->name,
        'tahun_lulus'     => $request->tahun_lulus,
        'nama_perusahaan'     => $request->nama_perusahaan,
        'posisi'     => $request->posisi,
        'tahun_kerja'     => $request->tahun_kerja,
        'penghasilan'     => $request->penghasilan,
        'categories_alumnis'     => $request->categories_alumnis,
        'jurusan'     => $request->jurusan,
        
    ]);
 if($registalum){
        //redirect dengan pesan sukses
        return redirect()->route('/hubin')->with(['success' => 'Pengajuan Data Alumni telah Terkirim dan Akan Segra Kami Konfirmasi!']);
    }else{
        //redirect dengan pesan error
        return redirect()->route('/hubin')->with(['error' => 'Data Gagal Terkirim!']);
    }
}
}
