<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AsalSekolah extends Model
{
    use HasFactory;
    protected $table = 'asal_sekolahs';

    protected $fillable = [
        'npsn_sekolah',
        'nama_sekolah',
        'alamat_sekolah',
    ];
}
