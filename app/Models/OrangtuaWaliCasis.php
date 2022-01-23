<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OrangtuaWaliCasis extends Model
{
    use HasFactory;
    protected $table = 'orangtua_wali_casis';

    protected $fillable = [
        'nama_ayah_kandung',
        'nik_ayah',
        'tahun_lahir_ayah',
        'pendidikan_ayah',
        'pekerjaan_ayah',
        'penghasilan_ayah',
        'penghasilan_ayah',
        'nama_ibu_kandung',
        'nik_ibu',
        'tahun_lahir_ibu',
        'pendidikan_ibu',
        'pekerjaan_ibu',
        'penghasilan_ibu',
        'penghasilan_ibu',

        'nama_wali',
        'nik_wali',
        'tahun_lahir_wali',
        'pendidikan_wali',
        'pekerjaan_wali',
        'penghasilan_wali',
        'penghasilan_wali',
    ];
    public function calonSiswa()
    {
        return $this->hasOne(CalonSiswa::class,'id');
    }
}
