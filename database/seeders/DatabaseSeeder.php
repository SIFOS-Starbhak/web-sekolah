<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use App\Models\Siswa;
use App\Models\Kela;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        DB::table('gurus')->insert([
            'name' => 'Pak Dwi',
            'email' => 'dwi@gmail.com',
            'password' => Hash::make('password'),
            'nik' => '312314',
        ]);
        DB::table('siswas')->insert([
            'name' => 'Kukuh',
            'kelas' => 1,
            'email' => 'kukuh@gmail.com',
            'password' => Hash::make('password'),
            'nipd' => '1920100325',
        ]);
    }
}
