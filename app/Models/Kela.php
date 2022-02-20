<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Kela extends Model
{
    use HasFactory;

    protected $fillable = [
        'kelas',
        'jurusan',
        'nama_kelas',
        'tahun_ajaran',
        'wali_kelas',
        'status'
    ];

    public function siswa()
    {
        return $this->hasMany(Siswa::class);
    }
    public function calonSiswa()
    {
        return $this->hasOne(CalonSiswa::class,'id');
    }
}
