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
    public function calonSiswa()
    {
        return $this->belongsTo(CalonSiswa::class,'calonsiswa_id');
    }
    public function tipePembayaran()
    {
        return $this->belongsTo(Pembayaran::class,'tipecicilan_id');
    }
}
