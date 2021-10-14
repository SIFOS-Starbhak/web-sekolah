<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Alumni extends Model
{
    use HasFactory;
    protected $table = 'alumnis';

    protected $fillable = [
        'name',
        'tahun_lulus',
        'nama_perusahaan',
        'posisi',
        'tahun_kerja',
        'penghasilan',
        'categories_alumnis',
        'jurusan',
        'status',
    ];
    public function jurusan()
    {
        return $this->belongsTo(Jurusan::class);
    }
}
