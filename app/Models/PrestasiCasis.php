<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PrestasiCasis extends Model
{
    use HasFactory;
    protected $table = 'prestasi_casis';

    protected $fillable = [
               'jenis_prestasi',
                'tingkat_prestasi',
                'nama_prestasi',
                'tahun_prestasi',
                'penyelenggara_prestasi',
                'peringkat_prestasi',
    ];
    public function calonSiswa()
    {
        return $this->hasOne(CalonSiswa::class,'id');
    }
}

