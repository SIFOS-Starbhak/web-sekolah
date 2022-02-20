<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\UserReference;
use App\Models\CalonSiswa;
class UserReferenceController extends Controller
{
    public function store(Request $request)
    {
        
        $text = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ123457890';
        $panj = 7;
        $txtl = strlen($text)-1;
        $koderef= '';
        for($i=1; $i<=$panj; $i++){
            $koderef .= $text[rand(0, $txtl)];
        }

        UserReference::create([
            'nama' => $request->nama, 
            'no_hp' => $request->no_hp,
            'email' =>  $request->email,
            'tipe_ref' => 'wali_kelas',
            'kelas' => $request->kelas,
            'sekolah' => 'SMK Taruna Bhakti',
            'ref_code' => $koderef
        ]);

        return redirect()->back()->with('message', 'Berhasil Tambah Referal Code milik '.$request->nama);

        
    }

    public function detail_pendaftar_referal($id)
    {
        $pendaftar = CalonSiswa::where('referal_code_id',$id)->get();
        
       
        return view('dashboard.detail_pendaftar_referal.modal',compact('pendaftar'));
    }
}
