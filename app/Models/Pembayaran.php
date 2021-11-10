<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pembayaran extends Model
{
    use HasFactory;
    protected $table = "pembayarans";

    protected $fillable = [
        'calon_siswa_id',
        'nominal',
        'metode_bayar',
        'bukti_bayar'
       
    ];
}
