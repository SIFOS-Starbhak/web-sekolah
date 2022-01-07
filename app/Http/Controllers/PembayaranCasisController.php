<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Pembayaran;

class PembayaranCasisController extends Controller
{
    public function pembayaran_casis($id)
    {

        $pembayaran = Pembayaran::where('id',$id)->first();
        // dd($pembayaran);
        // if ($) {
        //     # code...
        // }



     return view('casis.pembayaran',compact('pembayaran'));
    }
}
