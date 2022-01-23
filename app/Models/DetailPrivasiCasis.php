<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DetailPrivasiCasis extends Model
{
    use HasFactory;
    protected $table = 'detail_privasi_casis';

    protected $fillable = [
        'tinggi_badan',
        'berat_badan',
        'lingkar_kepala',
        'lingkar_pinggang',
        'jarak_rumah_ke_sekolah',
        'waktu_tempuh',
        'anak_ke',
        'jumlah_saudara_kandung',
    ];
    public function calonSiswa()
    {
        return $this->hasOne(CalonSiswa::class,'id');
    }
}
