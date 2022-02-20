<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pembayaran extends Model
{
    use HasFactory;
    protected $table = "pembayarans";

    protected $fillable = [
        'nama_pembayaran',
        'nominal_pembayaran'
       
    ];
    public function pembayaranCasis()
    {
        return $this->hasOne(PembayaranCalonSiswa::class,'id');
    }
}
