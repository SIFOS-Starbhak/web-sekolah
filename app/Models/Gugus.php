<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Gugus extends Model
{
    use HasFactory;
    protected $table = "gugus";

    protected $fillable = [
        'nama_gugus'
       
    ];
    public function calonSiswa()
    {
        return $this->hasOne(CalonSiswa::class,'id');
    }
}
