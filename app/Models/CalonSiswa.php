<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CalonSiswa extends Model
{
    use HasFactory;

    protected $table = "calon_siswa";

    protected $fillable = [
         'no_daftar',
         'jurusan_1',
         'jurusan_2',
         'jurusan_3',
         'nik'  ,
         'nisn'  ,
         'agama',
         'alamat',
         'note',
         'gugus_id',
         'status',
         'no_telpon_rumah'  ,
         'nama_lengkap',
         'jenis_kelamin',
         'no_kartu_keluarga',  
         'no_reg_akta_kelahiran' , 
         'tempat_lahir',
         'tanggal_lahir',
         'alamat',
         'rt',
         'rw'  ,
         'kode_pos'  ,
         'dusun',
         'desa_kelurahan',
         'kecamatan',
         'kabupaten',
         'tempat_tinggal',
         'transportasi',
         'punya_kip',
         'no_kip',
         'nama_kip',
         'no_telpon',
         'email',
         'no_peserta_un',
         'no_seri_ijazah',
         'no_seri_skhun',
         'detail_privasi_casis_id',
         'asal_sekolah',
         'orangtua_wali_casis_id',
         'prestasi_casis_id',
    ];
    
    public function user()
    {
        return $this->hasOne(User::class,'id');
    }

    // public function asalSekolah()
    // {
    //     return $this->belongsTo(AsalSekolah::class,'asal_sekolah_id');
    // }
    public function detailPrivasiCasis()
    {
        return $this->belongsTo(DetailPrivasiCasis::class,'detail_privasi_casis_id');
    }
    public function prestasiCasis()
    {
        return $this->belongsTo(PrestasiCasis::class,'prestasi_casis_id');
    }
    public function orangtuaWaliCasis()
    {
        return $this->belongsTo(OrangtuaWaliCasis::class,'orangtua_wali_casis_id');
    }
}
