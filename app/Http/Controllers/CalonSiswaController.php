<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\CalonSiswa;
use App\Models\DetailPrivasiCasis;
use App\Models\OrangtuaWaliCasis;
use App\Models\PrestasiCasis;
use App\Models\User;
use App\Models\Gugus;
use App\Models\Kela;
use App\Models\UserReference;
use Carbon\Carbon;
class CalonSiswaController extends Controller
{
    public function store(Request $request)
    {
      
      
        // dd($request);

      $request->validate([
            // 'no_daftar' => 'required',
            'jurusan_1' => 'required',
            'jurusan_2' => 'required',
            'jurusan_3' => 'required',
            'nik' => 'required|numeric',
            'nisn' => 'required|numeric',
            'agama' => 'required',
            'alamat' => 'required',
            // 'note' => 'required',
            // 'gugus_id' => 'required',
            // 'status' => 'required',
            'no_telpon_rumah' => 'max:30',
            'nama_lengkap' => 'required',
            'jenis_kelamin' => 'required',
            'no_kartu_keluarga' => 'required|numeric',
            'no_registerasi_akta_kelahiran' => 'required|numeric',
            'tempat_lahir' => 'required',
            'tanggal_lahir' => 'required',
            'alamat' => 'required',
            'rt' => 'required|numeric|max:50',
            'rw' => 'required|numeric|max:50',
            'kode_pos' => 'required|numeric',
            'dusun' => 'required',
            'desa_kelurahan' => 'required',
            'kecamatan' => 'required',
            'kabupaten' => 'required',
            'tempat_tinggal' => 'required',
            'transportasi' => 'required',
            // 'punya_kip' => 'required',
            // 'no_kip' => 'required',
            // 'nama_kip' => 'required',
            'no_telpon_hp' => 'max:30',
            'email' => 'required',
            //detail privasi casis
                'tinggi_badan' => 'required',
                'berat_badan' => 'required',
                // 'lingkar_kepala' => 'required',
                // 'lingkar_pinggang' => 'required',
                // 'jarak_rumah_ke_sekolah' => 'required',
                // 'waktu_tempuh' => 'required',
                // 'anak_ke' => 'required',
                // 'jumlah_saudara_kandung' => 'required',
            //detail privasi casis end

            //orangtua wali casis
                    'nama_ayah' => 'required',
                    // 'nik_ayah' => 'required',
                    // 'tahun_lahir_ayah' => 'required',
                    // 'pendidikan_ayah' => 'required',
                    // 'pekerjaan_ayah' => 'required',
                    // 'penghasilan_ayah' => 'required',
                    // 'penghasilan_ayah' => 'required',
                    'nama_ibu' => 'required',
                    // 'nik_ibu' => 'required',
                    // 'tahun_lahir_ibu' => 'required',
                    // 'pendidikan_ibu' => 'required',
                    // 'pekerjaan_ibu' => 'required',
                    // 'penghasilan_ibu' => 'required',
                    // 'penghasilan_ibu' => 'required',

                    // 'nama_wali' => 'required',
                    // 'nik_wali' => 'required',
                    // 'tahun_lahir_wali' => 'required',
                    // 'pendidikan_wali' => 'required',
                    // 'pekerjaan_wali' => 'required',
                    // 'penghasilan_wali' => 'required',
                    // 'penghasilan_wali' => 'required',
            //orangtua wali casis end
               'asal_sekolah' => 'required',
            // prestasi casis
                // 'jenis_prestasi' => 'required',
                // 'tingkat_prestasi' => 'required',
                // 'nama_prestasi' => 'required',
                // 'tahun_prestasi' => 'required',
                // 'penyelenggara_prestasi' => 'required',
                // 'peringkat_prestasi' => 'required',
            // prestasi casis end
        ]
        // , [
        //     'required' => 'Tidak Boleh Kosong!',
        //     'numeric' => 'Harus Noomor!',
        //     'max' => 'Tidak Boleh lebih!'
        // ]
        );
        // dd($request->nama_ayah);

     
        // dd($kode_referal_id,$check);

        $detailPrivasiCasis = DetailPrivasiCasis::create([
               'tinggi_badan' => $request->tinggi_badan,
                'berat_badan' => $request->berat_badan,
                'lingkar_kepala' => $request->lingkar_kepala,
                'lingkar_pinggang' => $request->lingkar_pinggang,
                'jarak_rumah_ke_sekolah' => $request->jarak_rumah_kesekolah,
                'waktu_tempuh' => $request->waktu_tempuh,
                'anak_ke' => $request->anak_ke,
                'jumlah_saudara_kandung' => $request->jumlah_saudara_kandung
        ]);
        // dd($detailPrivasiCasis);


        $orangtuaWaliCasis = OrangtuaWaliCasis::create([
            'nama_ayah_kandung' => $request->nama_ayah,
            'nik_ayah' => $request->nik_ayah,
            'tahun_lahir_ayah' => $request->tahun_lahir_ayah,
            'pendidikan_ayah' => $request->pendidikan_ayah,
            'pekerjaan_ayah' => $request->pekerjaan_ayah,
            'penghasilan_ayah' => $request->penghasilan_ayah,
            'nama_ibu_kandung' => $request->nama_ibu,
            'nik_ibu' => $request->nik_ibu,
            'tahun_lahir_ibu' => $request->tahun_lahir_ibu,
            'pendidikan_ibu' => $request->pendidikan_ibu,
            'pekerjaan_ibu' => $request->pekerjaan_ibu,
            'penghasilan_ibu' => $request->penghasilan_ibu,

            'nama_wali' => $request->nama_wali,
            'nik_wali' => $request->nik_wali,
            'tahun_lahir_wali' => $request->tahun_lahir_wali,
            'pendidikan_wali' => $request->pendidikan_wali,
            'pekerjaan_wali' => $request->pekerjaan_wali,
            'penghasilan_wali' => $request->penghasilan_wali,
        ]);
        // dd($orangtuaWaliCasis);

        $prestasiCasis = PrestasiCasis::create([
                'jenis_prestasi' => $request->jenis_prestasi == '' ? null : $request->jenis_prestasi,
                'tingkat_prestasi' => $request->tingkat_prestasi == '' ? null : $request->tingkat_prestasi,
                'nama_prestasi' => $request->nama_prestasi == '' ? null : $request->nama_prestasi,
                'tahun_prestasi' => $request->tahun_prestasi == '' ? null : $request->tahun_prestasi,
                'penyelenggara_prestasi' => $request->penyelenggara_prestasi == '' ? null : $request->penyelenggara_prestasi,
                'peringkat_prestasi' => $request->peringkat_prestasi == '' ? null : $request->peringkat_prestasi,
        ]);
        $no_casis = CalonSiswa::all()->count() + 1;
        // dd($no_casis);
        $no_daftar = str_pad($no_casis, 3, '0', STR_PAD_LEFT);
// dd($request);
$check = UserReference::where('ref_code',$request->kode_referal)->first();

if ($check == null ) {
    $kode_referal_id = null;
}else{
    $kode_referal_id  = intval($check->id);
}
// dd($kode_referal_id);
       $casis = CalonSiswa::create([
        'no_daftar' => $no_daftar,
        'jurusan_1' => $request->jurusan_1,
        'jurusan_2' => $request->jurusan_2,
        'jurusan_3' => $request->jurusan_3,
        'no_daftar' => $request->no_daftar,
        'nik' => $request->nik,
        'nisn' => $request->nisn,
        'agama' => $request->agama,
        'alamat' => $request->alamat,
        'note' => null,
        'gugus_id' => null,
        'status' => 'Terdaftar',
        'no_telpon_rumah' => $request->no_telpon_rumah,
        'nama_lengkap' => $request->nama_lengkap,
        'jenis_kelamin' => $request->jenis_kelamin,
        'no_kartu_keluarga' => $request->no_kartu_keluarga,
        'no_reg_akta_kelahiran' => $request->no_registerasi_akta_kelahiran,
        'tempat_lahir' => $request->tempat_lahir,
        'tanggal_lahir' => $request->tanggal_lahir,
        'alamat' => $request->alamat,
        'rt' => $request->rt,
        'rw' => $request->rw,
        'kode_pos' => $request->kode_pos,
        'dusun' => $request->dusun,
        'desa_kelurahan' => $request->desa_kelurahan,
        'kecamatan' => $request->kecamatan,
        'kabupaten' => $request->kabupaten,
        'tempat_tinggal' => $request->tempat_tinggal,
        'transportasi' => $request->transportasi,
        'punya_kip' => $request->punya_kip,
        'no_kip' => $request->no_kip,
        'nama_kip' => $request->nama_kip,
        'no_telpon' => $request->no_telpon_hp,
        'email' => $request->email,
        'asal_sekolah'=> $request->asal_sekolah,
        'no_peserta_un'=> $request->no_peserta_un,
        'no_seri_ijazah'=> $request->no_seri_ijazah,
        'no_seri_skhun'=> $request->no_seri_skhun,
        'detail_privasi_casis_id'=> $detailPrivasiCasis->id,
        'orangtua_wali_casis_id'=> $orangtuaWaliCasis->id,
        'prestasi_casis_id'=> $prestasiCasis->id,
        'referal_code_id' => $kode_referal_id
        ]);
        // dd($casis);




        User::create([
           'role_id' => 7,  
           'name' => $request->nama_lengkap,
           'email' => $request->email,
           'avatar' => 'users/default.png',
           'email_verified_at' => NULL,
           'password' => bcrypt('password'),
           'remember_token' => '',
           'settings' => NULL,
           'created_at' => Carbon::now(),
           'nomor_induk' => $request->nik,
           'jabatan_guru' => NULL,
           'kelas_siswa' => NULL,
           'spesifc_role' => 'casis',
           'mapel_id' =>  NULL,
           'calon_siswa_id' =>  $casis->id,
        ]);

            return redirect()->back()->with('message','Berhasil menambah data Calon Siswa');            

    }


    public function update_from_casis(Request $request,$id)
    {
         
        
      $request->validate([
        // 'no_daftar' => 'required',
        'jurusan_1' => 'required',
        'jurusan_2' => 'required',
        'jurusan_3' => 'required',
        'nik' => 'required|numeric',
        'nisn' => 'required|numeric',
        'agama' => 'required',
        'alamat' => 'required',
        // 'note' => 'required',
        // 'gugus_id' => 'required',
        // 'status' => 'required',
        'no_telpon_rumah' => 'max:30',
        'nama_lengkap' => 'required',
        'jenis_kelamin' => 'required',
        'no_kartu_keluarga' => 'required|numeric',
        'no_registerasi_akta_kelahiran' => 'required|numeric',
        'tempat_lahir' => 'required',
        'tanggal_lahir' => 'required',
        'alamat' => 'required',
        'rt' => 'required|numeric|max:50',
        'rw' => 'required|numeric|max:50',
        'kode_pos' => 'required|numeric',
        'dusun' => 'required',
        'desa_kelurahan' => 'required',
        'kecamatan' => 'required',
        'kabupaten' => 'required',
        'tempat_tinggal' => 'required',
        'transportasi' => 'required',
        // 'punya_kip' => 'required',
        // 'no_kip' => 'required',
        // 'nama_kip' => 'required',
        'no_telpon_hp' => 'max:30',
        'email' => 'required',
        //detail privasi casis
            'tinggi_badan' => 'required',
            'berat_badan' => 'required',
            // 'lingkar_kepala' => 'required',
            // 'lingkar_pinggang' => 'required',
            // 'jarak_rumah_ke_sekolah' => 'required',
            // 'waktu_tempuh' => 'required',
            // 'anak_ke' => 'required',
            // 'jumlah_saudara_kandung' => 'required',
        //detail privasi casis end

        //orangtua wali casis
                'nama_ayah' => 'required',
                // 'nik_ayah' => 'required',
                // 'tahun_lahir_ayah' => 'required',
                // 'pendidikan_ayah' => 'required',
                // 'pekerjaan_ayah' => 'required',
                // 'penghasilan_ayah' => 'required',
                // 'penghasilan_ayah' => 'required',
                'nama_ibu' => 'required',
                // 'nik_ibu' => 'required',
                // 'tahun_lahir_ibu' => 'required',
                // 'pendidikan_ibu' => 'required',
                // 'pekerjaan_ibu' => 'required',
                // 'penghasilan_ibu' => 'required',
                // 'penghasilan_ibu' => 'required',

                // 'nama_wali' => 'required',
                // 'nik_wali' => 'required',
                // 'tahun_lahir_wali' => 'required',
                // 'pendidikan_wali' => 'required',
                // 'pekerjaan_wali' => 'required',
                // 'penghasilan_wali' => 'required',
                // 'penghasilan_wali' => 'required',
        //orangtua wali casis end
           'asal_sekolah' => 'required',
        // prestasi casis
            // 'jenis_prestasi' => 'required',
            // 'tingkat_prestasi' => 'required',
            // 'nama_prestasi' => 'required',
            // 'tahun_prestasi' => 'required',
            // 'penyelenggara_prestasi' => 'required',
            // 'peringkat_prestasi' => 'required',
        // prestasi casis end
    ]
    // , [
    //     'required' => 'Tidak Boleh Kosong!',
    //     'numeric' => 'Harus Noomor!',
    //     'max' => 'Tidak Boleh lebih!'
    // ]
    );
    // dd($request);

    $casis = CalonSiswa::where('id',$id)->first();
    $user = User::where('calon_siswa_id',$id)->first();
    // dd($user);
    $detailPrivasiCasis = DetailPrivasiCasis::where('id',$casis->detail_privasi_casis_id)->update([
           'tinggi_badan' => $request->tinggi_badan,
            'berat_badan' => $request->berat_badan,
            'lingkar_kepala' => $request->lingkar_kepala,
            'lingkar_pinggang' => $request->lingkar_pinggang,
            'jarak_rumah_ke_sekolah' => $request->jarak_rumah_kesekolah,
            'waktu_tempuh' => $request->waktu_tempuh,
            'anak_ke' => $request->anak_ke,
            'jumlah_saudara_kandung' => $request->jumlah_saudara_kandung
    ]);


    $orangtuaWaliCasis = OrangtuaWaliCasis::where('id',$casis->orangtua_wali_casis_id)->update([
        'nama_ayah_kandung' => $request->nama_ayah,
        'nik_ayah' => $request->nik_ayah,
        'tahun_lahir_ayah' => $request->tahun_lahir_ayah,
        'pendidikan_ayah' => $request->pendidikan_ayah,
        'pekerjaan_ayah' => $request->pekerjaan_ayah,
        'penghasilan_ayah' => $request->penghasilan_ayah,
        'nama_ibu_kandung' => $request->nama_ibu,
        'nik_ibu' => $request->nik_ibu,
        'tahun_lahir_ibu' => $request->tahun_lahir_ibu,
        'pendidikan_ibu' => $request->pendidikan_ibu,
        'pekerjaan_ibu' => $request->pekerjaan_ibu,
        'penghasilan_ibu' => $request->penghasilan_ibu,

        'nama_wali' => $request->nama_wali,
        'nik_wali' => $request->nik_wali,
        'tahun_lahir_wali' => $request->tahun_lahir_wali,
        'pendidikan_wali' => $request->pendidikan_wali,
        'pekerjaan_wali' => $request->pekerjaan_wali,
        'penghasilan_wali' => $request->penghasilan_wali,
    ]);

    $prestasiCasis = PrestasiCasis::where('id',$casis->prestasi_casis_id)->update([
            'jenis_prestasi' => $request->jenis_prestasi == '' ? null : $request->jenis_prestasi,
            'tingkat_prestasi' => $request->tingkat_prestasi == '' ? null : $request->tingkat_prestasi,
            'nama_prestasi' => $request->nama_prestasi == '' ? null : $request->nama_prestasi,
            'tahun_prestasi' => $request->tahun_prestasi == '' ? null : $request->tahun_prestasi,
            'penyelenggara_prestasi' => $request->penyelenggara_prestasi == '' ? null : $request->penyelenggara_prestasi,
            'peringkat_prestasi' => $request->peringkat_prestasi == '' ? null : $request->peringkat_prestasi,
    ]);
    $no_casis = CalonSiswa::all()->count() + 1;
    // dd($no_casis);
    $no_daftar = str_pad($no_casis, 3, '0', STR_PAD_LEFT);

   $casis = CalonSiswa::where('id',$casis->id)->update([
    'no_daftar' => $no_daftar,
    'jurusan_1' => $request->jurusan_1,
    'jurusan_2' => $request->jurusan_2,
    'jurusan_3' => $request->jurusan_3,
    'no_daftar' => $request->no_daftar,
    'nik' => $request->nik,
    'nisn' => $request->nisn,
    'agama' => $request->agama,
    'alamat' => $request->alamat,
    'note' => null,
    'gugus_id' => null,
    'status' => 'Terdaftar',
    'no_telpon_rumah' => $request->no_telpon_rumah,
    'nama_lengkap' => $request->nama_lengkap,
    'jenis_kelamin' => $request->jenis_kelamin,
    'no_kartu_keluarga' => $request->no_kartu_keluarga,
    'no_reg_akta_kelahiran' => $request->no_registerasi_akta_kelahiran,
    'tempat_lahir' => $request->tempat_lahir,
    'tanggal_lahir' => $request->tanggal_lahir,
    'alamat' => $request->alamat,
    'rt' => $request->rt,
    'rw' => $request->rw,
    'kode_pos' => $request->kode_pos,
    'dusun' => $request->dusun,
    'desa_kelurahan' => $request->desa_kelurahan,
    'kecamatan' => $request->kecamatan,
    'kabupaten' => $request->kabupaten,
    'tempat_tinggal' => $request->tempat_tinggal,
    'transportasi' => $request->transportasi,
    'punya_kip' => $request->kip,
    'no_kip' => $request->no_kip,
    'nama_kip' => $request->nama_kip,
    'no_telpon' => $request->no_telpon_hp,
    'email' => $request->email,
    'asal_sekolah'=> $request->asal_sekolah,
    'no_peserta_un'=> $request->no_peserta_un,
    'no_seri_ijazah'=> $request->no_seri_ijazah,
    'no_seri_skhun'=> $request->no_seri_skhun,
    // 'detail_privasi_casis_id'=> $detailPrivasiCasis->id,
    // 'orangtua_wali_casis_id'=> $orangtuaWaliCasis->id,
    // 'prestasi_casis_id'=> $prestasiCasis->id,
    ]);




    User::where('id',$user->id)->update([
       'role_id' => 7,  
       'name' => $request->nama_lengkap,
       'email' => $request->email,
       'avatar' => 'users/default.png',
       'email_verified_at' => NULL,
       'password' => bcrypt('password'),
       'remember_token' => '',
       'settings' => NULL,
       'created_at' => Carbon::now(),
       'nomor_induk' => $request->nik,
       'jabatan_guru' => NULL,
       'kelas_siswa' => NULL,
       'spesifc_role' => 'casis',
       'mapel_id' =>  NULL,
    //    'calon_siswa_id' =>  $casis,
    ]);

            return redirect()->route('dashboard.casis')->with('message','Profile Calon Siswa Berhasil Di Update!');
   
    }

    public function update_from_panitia(Request $request,$id)
    {
         
        
      $request->validate([
        // 'no_daftar' => 'required',
        'jurusan_1' => 'required',
        'jurusan_2' => 'required',
        'jurusan_3' => 'required',
        'nik' => 'required|numeric',
        'nisn' => 'required|numeric',
        'agama' => 'required',
        'alamat' => 'required',
        // 'note' => 'required',
        // 'gugus_id' => 'required',
        // 'status' => 'required',
        'no_telpon_rumah' => 'max:30',
        'nama_lengkap' => 'required',
        'jenis_kelamin' => 'required',
        'no_kartu_keluarga' => 'required|numeric',
        'no_registerasi_akta_kelahiran' => 'required|numeric',
        'tempat_lahir' => 'required',
        'tanggal_lahir' => 'required',
        'alamat' => 'required',
        'rt' => 'required|numeric|max:50',
        'rw' => 'required|numeric|max:50',
        'kode_pos' => 'required|numeric',
        'dusun' => 'required',
        'desa_kelurahan' => 'required',
        'kecamatan' => 'required',
        'kabupaten' => 'required',
        'tempat_tinggal' => 'required',
        'transportasi' => 'required',
        // 'punya_kip' => 'required',
        // 'no_kip' => 'required',
        // 'nama_kip' => 'required',
        'no_telpon_hp' => 'max:30',
        'email' => 'required',
        //detail privasi casis
            'tinggi_badan' => 'required',
            'berat_badan' => 'required',
            // 'lingkar_kepala' => 'required',
            // 'lingkar_pinggang' => 'required',
            // 'jarak_rumah_ke_sekolah' => 'required',
            // 'waktu_tempuh' => 'required',
            // 'anak_ke' => 'required',
            // 'jumlah_saudara_kandung' => 'required',
        //detail privasi casis end

        //orangtua wali casis
                'nama_ayah' => 'required',
                // 'nik_ayah' => 'required',
                // 'tahun_lahir_ayah' => 'required',
                // 'pendidikan_ayah' => 'required',
                // 'pekerjaan_ayah' => 'required',
                // 'penghasilan_ayah' => 'required',
                // 'penghasilan_ayah' => 'required',
                'nama_ibu' => 'required',
                // 'nik_ibu' => 'required',
                // 'tahun_lahir_ibu' => 'required',
                // 'pendidikan_ibu' => 'required',
                // 'pekerjaan_ibu' => 'required',
                // 'penghasilan_ibu' => 'required',
                // 'penghasilan_ibu' => 'required',

                // 'nama_wali' => 'required',
                // 'nik_wali' => 'required',
                // 'tahun_lahir_wali' => 'required',
                // 'pendidikan_wali' => 'required',
                // 'pekerjaan_wali' => 'required',
                // 'penghasilan_wali' => 'required',
                // 'penghasilan_wali' => 'required',
        //orangtua wali casis end
           'asal_sekolah' => 'required',
        // prestasi casis
            // 'jenis_prestasi' => 'required',
            // 'tingkat_prestasi' => 'required',
            // 'nama_prestasi' => 'required',
            // 'tahun_prestasi' => 'required',
            // 'penyelenggara_prestasi' => 'required',
            // 'peringkat_prestasi' => 'required',
        // prestasi casis end
    ]
    // , [
    //     'required' => 'Tidak Boleh Kosong!',
    //     'numeric' => 'Harus Noomor!',
    //     'max' => 'Tidak Boleh lebih!'
    // ]
    );
    // dd($request);

    $casis = CalonSiswa::where('id',$id)->first();
    $user = User::where('calon_siswa_id',$id)->first();
    // dd($user);
    $detailPrivasiCasis = DetailPrivasiCasis::where('id',$casis->detail_privasi_casis_id)->update([
           'tinggi_badan' => $request->tinggi_badan,
            'berat_badan' => $request->berat_badan,
            'lingkar_kepala' => $request->lingkar_kepala,
            'lingkar_pinggang' => $request->lingkar_pinggang,
            'jarak_rumah_ke_sekolah' => $request->jarak_rumah_kesekolah,
            'waktu_tempuh' => $request->waktu_tempuh,
            'anak_ke' => $request->anak_ke,
            'jumlah_saudara_kandung' => $request->jumlah_saudara_kandung
    ]);


    $orangtuaWaliCasis = OrangtuaWaliCasis::where('id',$casis->orangtua_wali_casis_id)->update([
        'nama_ayah_kandung' => $request->nama_ayah,
        'nik_ayah' => $request->nik_ayah,
        'tahun_lahir_ayah' => $request->tahun_lahir_ayah,
        'pendidikan_ayah' => $request->pendidikan_ayah,
        'pekerjaan_ayah' => $request->pekerjaan_ayah,
        'penghasilan_ayah' => $request->penghasilan_ayah,
        'nama_ibu_kandung' => $request->nama_ibu,
        'nik_ibu' => $request->nik_ibu,
        'tahun_lahir_ibu' => $request->tahun_lahir_ibu,
        'pendidikan_ibu' => $request->pendidikan_ibu,
        'pekerjaan_ibu' => $request->pekerjaan_ibu,
        'penghasilan_ibu' => $request->penghasilan_ibu,

        'nama_wali' => $request->nama_wali,
        'nik_wali' => $request->nik_wali,
        'tahun_lahir_wali' => $request->tahun_lahir_wali,
        'pendidikan_wali' => $request->pendidikan_wali,
        'pekerjaan_wali' => $request->pekerjaan_wali,
        'penghasilan_wali' => $request->penghasilan_wali,
    ]);

    $prestasiCasis = PrestasiCasis::where('id',$casis->prestasi_casis_id)->update([
            'jenis_prestasi' => $request->jenis_prestasi == '' ? null : $request->jenis_prestasi,
            'tingkat_prestasi' => $request->tingkat_prestasi == '' ? null : $request->tingkat_prestasi,
            'nama_prestasi' => $request->nama_prestasi == '' ? null : $request->nama_prestasi,
            'tahun_prestasi' => $request->tahun_prestasi == '' ? null : $request->tahun_prestasi,
            'penyelenggara_prestasi' => $request->penyelenggara_prestasi == '' ? null : $request->penyelenggara_prestasi,
            'peringkat_prestasi' => $request->peringkat_prestasi == '' ? null : $request->peringkat_prestasi,
    ]);
    $no_casis = CalonSiswa::all()->count() + 1;
    // dd($no_casis);
    $no_daftar = str_pad($no_casis, 3, '0', STR_PAD_LEFT);

    
   $casis = CalonSiswa::where('id',$casis->id)->update([
    'no_daftar' => $no_daftar,
    'jurusan_1' => $request->jurusan_1,
    'jurusan_2' => $request->jurusan_2,
    'jurusan_3' => $request->jurusan_3,
    'no_daftar' => $request->no_daftar,
    'nik' => $request->nik,
    'nisn' => $request->nisn,
    'agama' => $request->agama,
    'alamat' => $request->alamat,
    'note' => null,
    'gugus_id' => null,
    'status' => 'Terdaftar',
    'no_telpon_rumah' => $request->no_telpon_rumah,
    'nama_lengkap' => $request->nama_lengkap,
    'jenis_kelamin' => $request->jenis_kelamin,
    'no_kartu_keluarga' => $request->no_kartu_keluarga,
    'no_reg_akta_kelahiran' => $request->no_registerasi_akta_kelahiran,
    'tempat_lahir' => $request->tempat_lahir,
    'tanggal_lahir' => $request->tanggal_lahir,
    'alamat' => $request->alamat,
    'rt' => $request->rt,
    'rw' => $request->rw,
    'kode_pos' => $request->kode_pos,
    'dusun' => $request->dusun,
    'desa_kelurahan' => $request->desa_kelurahan,
    'kecamatan' => $request->kecamatan,
    'kabupaten' => $request->kabupaten,
    'tempat_tinggal' => $request->tempat_tinggal,
    'transportasi' => $request->transportasi,
    'punya_kip' => $request->kip,
    'no_kip' => $request->no_kip,
    'nama_kip' => $request->nama_kip,
    'no_telpon' => $request->no_telpon_hp,
    'email' => $request->email,
    'asal_sekolah'=> $request->asal_sekolah,
    'no_peserta_un'=> $request->no_peserta_un,
    'no_seri_ijazah'=> $request->no_seri_ijazah,
    'no_seri_skhun'=> $request->no_seri_skhun,
    // 'detail_privasi_casis_id'=> $detailPrivasiCasis->id,
    // 'orangtua_wali_casis_id'=> $orangtuaWaliCasis->id,
    // 'prestasi_casis_id'=> $prestasiCasis->id,
    ]);




    User::where('id',$user->id)->update([
       'role_id' => 3,  
       'name' => $request->nama_lengkap,
       'email' => $request->email,
       'avatar' => 'users/default.png',
       'email_verified_at' => NULL,
       'password' => bcrypt('password'),
       'remember_token' => '',
       'settings' => NULL,
       'created_at' => Carbon::now(),
       'nomor_induk' => $request->nik,
       'jabatan_guru' => NULL,
       'kelas_siswa' => NULL,
       'spesifc_role' => 'casis',
       'mapel_id' =>  NULL,
    //    'calon_siswa_id' =>  $casis,
    ]);
            return redirect()->route('panitia.detail.casis',$id)->with('message','Profile Calon Siswa Berhasil Di Update!');
   
    }
        
    public function detail($id)
    {
        
        $casis = CalonSiswa::where('id',$id)->first();
        return view('casis.show',compact('casis'));
        
    }
    public function edit($id)
    {
        
        $casis = CalonSiswa::where('id',$id)->first();
        $array_prestasi = collect($casis->prestasiCasis)->except(['id','created_at','updated_at']);
          
        $jml_null = [];
        foreach ($array_prestasi as $key => $value) {
            if ($value == null || $value == '') {
             // There are null (or empty) values.
                $jml_null[] = 'null';
           }
        }
        if (count($jml_null) == count($array_prestasi)) {
            $prestasi_casis = 'Umum';
        }else{
            $prestasi_casis = 'Prestasi';
            // dd(count($array_prestasi),'prestasi');
        }
        $item = ['PPLG','ANIMASI','TJKT','BCF','TE'];
        foreach ($item as $key => $value) {
            $jurusan[] = Kela::where('kelas','X')->where('jurusan',$value)->first();
        }
        return view('casis.edit',compact('casis','jurusan','prestasi_casis'));
        
    }


    public function gugus(Request $request,$id)
    {
      
        $ids = request('ids');

        // $count = count($ids);
        // for ($i=0; $i < $count; $i++) { 
        //     CalonSiswa::where('id',$ids[$i])->update([
        //         'gugus_id'=> $id
        //     ]);
        //     # code...
        // }
            CalonSiswa::whereIn('id',$ids)->update([
                'gugus_id'=> $id
            ]);
          $gugus =   Gugus::where('id',$id)->first()->nama_gugus;
        return response()->json(['success'=>"Calon Siswa Berhasil di masukan ke {$gugus} "]);
    }

    public function gugus_table()
    {
        $gugus = Gugus::all();
        return view('dashboard.gugus.table',compact('gugus'))->render();

    }

    public function penempatan_kelas($id)
    {
        $item = ['PPLG','ANIMASI','TJKT','BCF','TE'];
        foreach ($item as $key => $value) {
            $kelas[] = Kela::where('kelas','X')->where('jurusan',$value)->first();
        }
        // foreac
        $casis =  CalonSiswa::where('gugus_id',$id)->get();
        // dd($casis);
        foreach ($casis as $key ) {
                $id_casis[] = $key->id; 
        }
        $user =  User::where('role_id',7)->whereIn('calon_siswa_id',$id_casis)->get();
        // foreach
        // dd($user);
        return view('dashboard.gugus.penempatanKelas',compact('kelas','user'));

    }

    public function penempatan_kelas_update(Request $request)
    {
        // dd($request);
      $request->validate([
      'kelas'=>'required',
      'user_casis'=>'required',
      ],[
          'required' => 'Tidak Boleh Kosong!'
      ]);
    //   dd($request->user_casis);
       User::whereIn('id',$request->user_casis)->update([
           'role_id' => 3,
           'spesifc_role' => 'siswa',
           'kelas_siswa' => $request->kelas,
       ]);
       return redirect()->route('dashboard.panitia')->with('message','Berhasil Menentukan Siswa Kelas !');



    }
    
 
}
