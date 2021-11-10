<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PembayaranCalonSiswa extends Model
{
    use HasFactory;
    protected $table = "calon_siswa";

    protected $fillable = [
        'nama',
        'tempat_lahir',
        'tanggal_lahir',
        'status',
        'gugus_id',
        'jurusan_id',
        'note',
    ];
}
