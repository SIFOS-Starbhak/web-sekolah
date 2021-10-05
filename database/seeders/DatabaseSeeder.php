<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use App\Models\Siswa;
use App\Models\Kela;
use Faker\Factory as Faker;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;

// use A

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {

        $kelas = [2,3,4,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,
    31,32,33,34,35,36,37,38,39,40,
41,42,43,44,45,46,47,48];

        for ($i=0; $i < 50; $i++) { 
        $faker = Faker::create('id_ID');            

            User::create([
                'role_id' => 3,
                'name' => 'siswa'.$i,
                'email' => 'siswa'.$i.'@gmail.com',
                'avatar' => 'users/default.png',
                'email_verified_at' => NULL,
                'password' => bcrypt('password'),
                'remember_token' => '',
                'settings' => NULL,
                'created_at' => Carbon::now(),
                'nomor_induk' => $faker->unique()->randomNumber,
                'jabatan_guru' => '',
                'kelas_siswa' => $faker->randomElement($kelas),
                'spesifc_role' => 'siswa'
            ]);
            # code...
        }

        // $kelas = [1,2,4];

        // for ($i=1; $i <= 3; $i++) { 
        // $faker = Faker::create('id_ID');            

        //     Kela::create([
        //         'kelas' => 'XII',
        //         'nama_kelas' => 'XII TKJ'.$i,
        //         'tahun_ajaran' => '2020/2021',
        //         'wali_kelas' => $faker->name,
        //         'status' => 'Aktif',
        //         'created_at' => Carbon::now(),
        //         'jurusan' => 'TKJ'
        //     ]);
        //     # code...
        // }

        // for ($i=1; $i <= 3; $i++) { 
        //     $faker = Faker::create('id_ID');            
        //         Kela::create([
        //             'kelas' => 'XII',
        //             'nama_kelas' => 'XII MM '.$i,
        //             'tahun_ajaran' => '2020/2021',
        //             'wali_kelas' => $faker->name,
        //             'status' => 'Aktif',
        //             'created_at' => Carbon::now(),
        //             'jurusan' => 'MM'
        //         ]);
        //         # code...
        //     }

        //     for ($i=1; $i <= 3; $i++) { 
        //         $faker = Faker::create('id_ID');            
        //             Kela::create([
        //                 'kelas' => 'XII',
        //                 'nama_kelas' => 'XII BC '.$i,
        //                 'tahun_ajaran' => '2020/2021',
        //                 'wali_kelas' => $faker->name,
        //                 'status' => 'Aktif',
        //                 'created_at' => Carbon::now(),
        //                 'jurusan' => 'BC'
        //             ]);
        //             # code...
        //         }
        //         for ($i=1; $i <= 3; $i++) { 
        //             $faker = Faker::create('id_ID');            
        //                 Kela::create([
        //                     'kelas' => 'XII',
        //                     'nama_kelas' => 'XII TEI '.$i,
        //                     'tahun_ajaran' => '2020/2021',
        //                     'wali_kelas' => $faker->name,
        //                     'status' => 'Aktif',
        //                     'created_at' => Carbon::now(),
        //                     'jurusan' => 'TEI'
        //                 ]);
        //                 # code...
        //             }


        // buat kelas 11

                    // for ($i=1; $i <= 3; $i++) { 
                    //     $faker = Faker::create('id_ID');            
                
                    //         Kela::create([
                    //             'kelas' => 'XI',
                    //             'nama_kelas' => 'XI TKJ'.$i,
                    //             'tahun_ajaran' => '2020/2021',
                    //             'wali_kelas' => $faker->name,
                    //             'status' => 'Aktif',
                    //             'created_at' => Carbon::now(),
                    //             'jurusan' => 'TKJ'
                    //         ]);
                    //         # code...
                    //     }
                
                    //     for ($i=1; $i <= 3; $i++) { 
                    //         $faker = Faker::create('id_ID');            
                    //             Kela::create([
                    //                 'kelas' => 'XI',
                    //                 'nama_kelas' => 'XI MM '.$i,
                    //                 'tahun_ajaran' => '2020/2021',
                    //                 'wali_kelas' => $faker->name,
                    //                 'status' => 'Aktif',
                    //                 'created_at' => Carbon::now(),
                    //                 'jurusan' => 'MM'
                    //             ]);
                    //             # code...
                    //         }
                
                    //         for ($i=1; $i <= 3; $i++) { 
                    //             $faker = Faker::create('id_ID');            
                    //                 Kela::create([
                    //                     'kelas' => 'XI',
                    //                     'nama_kelas' => 'XI BC '.$i,
                    //                     'tahun_ajaran' => '2020/2021',
                    //                     'wali_kelas' => $faker->name,
                    //                     'status' => 'Aktif',
                    //                     'created_at' => Carbon::now(),
                    //                     'jurusan' => 'BC'
                    //                 ]);
                    //                 # code...
                    //             }
                    //             for ($i=1; $i <= 3; $i++) { 
                    //                 $faker = Faker::create('id_ID');            
                    //                     Kela::create([
                    //                         'kelas' => 'XI',
                    //                         'nama_kelas' => 'XI TEI '.$i,
                    //                         'tahun_ajaran' => '2020/2021',
                    //                         'wali_kelas' => $faker->name,
                    //                         'status' => 'Aktif',
                    //                         'created_at' => Carbon::now(),
                    //                         'jurusan' => 'TEI'
                    //                     ]);
                    //                     # code...
                    //                 }
                    //                 for ($i=1; $i <= 3; $i++) { 
                    //                     $faker = Faker::create('id_ID');            
                    //                         Kela::create([
                    //                             'kelas' => 'XI',
                    //                             'nama_kelas' => 'XI RPL '.$i,
                    //                             'tahun_ajaran' => '2020/2021',
                    //                             'wali_kelas' => $faker->name,
                    //                             'status' => 'Aktif',
                    //                             'created_at' => Carbon::now(),
                    //                             'jurusan' => 'RPL'
                    //                         ]);
                    //                         # code...
                    //                     }


                                        


        // buat kelas 10


        // for ($i=1; $i <= 3; $i++) { 
        //     $faker = Faker::create('id_ID');            
    
        //         Kela::create([
        //             'kelas' => 'X',
        //             'nama_kelas' => 'X TKJ'.$i,
        //             'tahun_ajaran' => '2020/2021',
        //             'wali_kelas' => $faker->name,
        //             'status' => 'Aktif',
        //             'created_at' => Carbon::now(),
        //             'jurusan' => 'TKJ'
        //         ]);
        //         # code...
        //     }
    
        //     for ($i=1; $i <= 3; $i++) { 
        //         $faker = Faker::create('id_ID');            
        //             Kela::create([
        //                 'kelas' => 'X',
        //                 'nama_kelas' => 'X MM '.$i,
        //                 'tahun_ajaran' => '2020/2021',
        //                 'wali_kelas' => $faker->name,
        //                 'status' => 'Aktif',
        //                 'created_at' => Carbon::now(),
        //                 'jurusan' => 'MM'
        //             ]);
        //             # code...
        //         }
    
        //         for ($i=1; $i <= 3; $i++) { 
        //             $faker = Faker::create('id_ID');            
        //                 Kela::create([
        //                     'kelas' => 'X',
        //                     'nama_kelas' => 'X BC '.$i,
        //                     'tahun_ajaran' => '2020/2021',
        //                     'wali_kelas' => $faker->name,
        //                     'status' => 'Aktif',
        //                     'created_at' => Carbon::now(),
        //                     'jurusan' => 'BC'
        //                 ]);
        //                 # code...
        //             }
        //             for ($i=1; $i <= 3; $i++) { 
        //                 $faker = Faker::create('id_ID');            
        //                     Kela::create([
        //                         'kelas' => 'X',
        //                         'nama_kelas' => 'X TEI '.$i,
        //                         'tahun_ajaran' => '2020/2021',
        //                         'wali_kelas' => $faker->name,
        //                         'status' => 'Aktif',
        //                         'created_at' => Carbon::now(),
        //                         'jurusan' => 'TEI'
        //                     ]);
        //                     # code...
        //                 }
        //                 for ($i=1; $i <= 3; $i++) { 
        //                     $faker = Faker::create('id_ID');            
        //                         Kela::create([
        //                             'kelas' => 'X',
        //                             'nama_kelas' => 'X RPL '.$i,
        //                             'tahun_ajaran' => '2020/2021',
        //                             'wali_kelas' => $faker->name,
        //                             'status' => 'Aktif',
        //                             'created_at' => Carbon::now(),
        //                             'jurusan' => 'RPL'
        //                         ]);
        //                         # code...
        //                     }
    
        // DB::table('gurus')->insert([
        //     'name' => 'Pak Dwi',
        //     'email' => 'dwi@gmail.com',
        //     'password' => Hash::make('password'),
        //     'nik' => '312314',
        // ]);
        // DB::table('siswas')->insert([
        //     'name' => 'Kukuh',
        //     'kelas' => 1,
        //     'email' => 'kukuh@gmail.com',
        //     'password' => Hash::make('password'),
        //     'nipd' => '1920100325',
        // ]);
    }
}
