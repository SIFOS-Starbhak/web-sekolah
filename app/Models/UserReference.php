<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UserReference extends Model
{
    use HasFactory;
    protected $table = "user_reference";

    protected $fillable = [
        'nama',
        'no_hp',
        'email',
        'tipe_ref',
        'kelas',
        'sekolah',
        'ref_code',
    ];

     
    public function calonSiswa()
    {
        return $this->belongsTo(CalonSiswa::class,'id');
    }
}
