<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PembayaranCalonSiswa extends Model
{
    use HasFactory;
    protected $table = "pembayaran_calonsiswass";

    protected $fillable = [
        'calonsiswa_id',
        'tipecicilan_id',
        'nominal',
        'metode_bayar',
        'bukti_bayar',
        'status',
    ];
}
