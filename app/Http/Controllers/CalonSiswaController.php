<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\CalonSiswa;

class CalonSiswaController extends Controller
{
    public function store(Request $request)
    {
        
        $string = 'Sarah has 4 dolls and 6 bunnies.';
$no_telpon_rumah = preg_replace('/[^0-9]/', '', $request->no_telpon_hp);  
        // dd($request);

      $request->validate([
            'nama_lengkap' => 'required|max:255',
            'jenis_kelamin' => 'required',
            'nisn' => 'required|numeric',
            'nik' => 'required|numeric',
            'no_telpon_rumah' => 'required|numeric',
            'no_telpon_hp' => 'required|numeric',
            'agama' => 'required',
            'jurusan_1' => 'required',
            'jurusan_2' => 'required',
            'alamat' => 'required',
        ], [
            'required' => 'Tidak Boleh Kosong!',
            'numeric' => 'Harus Noomor!'
        ]);

       $casis = CalonSiswa::create([
            'nama_lengkap' => $request->nama_lengkap,
            'jenis_kelamin' => $request->jenis_kelamin,
            'nisn' => $request->nisn,
            'nik' => $request->nik,
            'no_telpon_rumah' => $request->no_telpon_rumah,
            'no_telpon_hp' => $request->no_telpon_hp,
            'agama' => $request->agama,
            'jurusan_1' => $request->jurusan_1,
            'jurusan_2' => $request->jurusan_2,
            'alamat' => $request->alamat,
        ]);


        
        # code...
    }
}
