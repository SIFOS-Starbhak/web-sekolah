<?php

namespace App\Http\Controllers;

use App\Models\Kela;
use Illuminate\Http\Request;
use App\Models\Setting;
use App\Models\User;
use App\Models\Skill;
use App\Models\DetailUser;
use Hash;
use Auth;
use File;

use App\Models\CalonSiswa;
use App\Models\DetailPrivasiCasis;
use App\Models\OrangtuaWaliCasis;
use App\Models\PrestasiCasis;

class ProfileController extends Controller
{
    public function edit($id)
    {
        // dd($id);

        if (Auth::guard('api')->user()->id == $id) {
            # code...
            // $settings = Setting::all();
            $profile = User::where('id', $id)->first();
            // $profile
            $kelas = Kela::all();
            $skill = Skill::all();
            $detailUser = $profile->detailUser;
            // dd($detailUser);
            if (Auth::user()->spesifc_role == 'casis') {
    
               $casis = CalonSiswa::where('id',$profile->calon_siswa_id)->first();
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
            // dd($prestasi_casis);
            $item = ['PPLG','ANIMASI','TJKT','BCF','TE'];
            foreach ($item as $key => $value) {
                $jurusan[] = Kela::where('kelas','X')->where('jurusan',$value)->first();
            }
            //  $prestasi_siswa = count($a);
                return view('profile.edit',compact('casis','prestasi_casis','jurusan'));
                
            }else{
                if ($detailUser == null) {
                    $yourSkill = [];
                    $detailProfileSkill = [];
                } else {
                    $detailProfileSkill =  explode(',', $profile->detailUser->skill);
                    // dd($detailProfileSkill);
                    foreach ($detailProfileSkill as $key => $value) {
                        $yourSkill[] = Skill::where('id', $value)->first();
                    }
                }
                return view('profile.edit', compact('detailProfileSkill', 'skill', 'profile', 'kelas', 'yourSkill'));
            }
            // dd($yourSkill);
    
    
            // foreach($skill as $v)
            // {
            //     // Group the teams into their respective addresses
            //     $filtered[$v['address']][] = $v;
            // }
    
            // Filter out any address with 1 or fewer teams
            // $filtered = array_filter($filtered, function($v){
            //     return count($v) > 1;
            // });
        }else{
            return redirect()->back();
        }

    }

    public function update(Request $request, $id)
    {
        if (Auth::user()->role->name == "manager" || Auth::user()->role->name == "guru") {
            $request->validate([
                "name" => 'required',
                "email" => 'required',
            ], [
                'name.required' => "Nama tidak boleh kosong",
                'email.required' => "Email tidak boleh kosong",
            ]);
        }elseif((Auth::user()->role->name == "perusahaan" )){
            $request->validate([
                "name" => 'required',
                "email" => 'required',
                "no_telpon" => 'required',
            ], [
                'name.required' => "Nama tidak boleh kosong",
                'email.required' => "Email tidak boleh kosong",
                'no_telpon.required' => "Contact tidak boleh kosong",
                
            ]);
        }elseif((Auth::user()->role->name == "admin" && Auth::user()->spesifc_role == "admin" || Auth::user()->role->name == "user" && Auth::user()->spesifc_role == "panitia" )){
            $request->validate([
                "name" => 'required',
                "email" => 'required',
                // "no_telpon" => 'required',
            ], [
                'name.required' => "Nama tidak boleh kosong",
                'email.required' => "Email tidak boleh kosong",
                // 'no_telpon.required' => "Contact tidak boleh kosong",
                
            ]);
        }else {
            $request->validate([
                "name" => 'required',
                "email" => 'required',
                "kelas_id" => 'required',
                "no_telpon" => 'required',
                // "bio" => 'required',
                // "skill.*" => 'required',
                // "cv" => 'requ'
            ], [
                'name.required' => "Nama tidak boleh kosong",
                'email.required' => "Email tidak boleh kosong",
                'kelas_id.required' => "Kelas tidak boleh kosong",
                'no_telpon.required' => "Nomor tidak boleh kosong",
                // 'bio.required' => "Bio tidak boleh kosong",
                // 'skill.*.required' => "Skill Minimal 1",
                // 'cv.mimes' => "file harus PDF",
            ]);
        } 

        // dd($request);

        // dd('berhasil');

        $detailCheck = User::where('id', $id)->first()->detailUser;
        //  dd($detailCheck->detailUser,$detailCheck);
        // dd($request);

        if ($detailCheck == null) {
            $fileCV = $request->cv;


            if ($fileCV == NULL) {
                $path_cv = NULL;
                //    dd('cv kosong');

            } else {
                //    dd('cv tidak kosong');

                $fileCV = $request->cv;
                $name_cv = time() . ' ' . $request->cv->getClientOriginalName();

                $path_cv = "user-cv/" . $name_cv;
                $fileCV->move(public_path() . '/user-cv', $name_cv);
            }
            if ($request->bio == NULL) {
                $request->bio = NULL;
                //    dd('bio kosong');

            }
            if ($request->skill == NULL) {
                $implode_skill = NULL;
                //    dd('skill kosong');

            } else {
                //    dd('skill tidak kosong');

                $implode_skill = implode(',', $request->skill);
            }




            $detail_id =   DetailUser::create([
                "bio" => $request->bio,
                "cv" => $path_cv,
                "no_telpon" => $request->no_telpon,
                "skill" => $implode_skill,
            ]);
            // dd($detail_id);
            User::where('id', $id)->update([
                "detail_user" => $detail_id->id,
            ]);
        } else {


            if ($request->bio == NULL) {
                $request->bio = NULL;
                //    dd('bio kosong');

            }
            if ($request->skill == NULL) {
                $implode_skill = NULL;
                //    dd('skill kosong');

            } else {
                //    dd('skill tidak kosong');

                $implode_skill = implode(',', $request->skill);
            }




            $fileCV = $request->cv;


            //request cv kosong / tidak ada
            if ($fileCV == NULL) {
                $old_cv = User::where('id', $id)->first()->detailUser->cv;
                if ($old_cv  == NULL) { // jika akun ini tidak punya cv
                    $path_cv = NULL;
                } else { // jika  akun ini punya cv
                    $old_cv = User::where('id', $id)->first()->detailUser->cv;
                    //    dd($old_cv);
                    $path_cv = $old_cv;
                }
            } else {

                $old_cv = User::where('id', $id)->first()->detailUser->cv;
                //   dd($old_cv);
                //    dd('cv tidak kosong');
                if (File::exists(public_path($old_cv))) {
                    File::delete(public_path($old_cv));
                    // dd('true');
                }
                $fileCV = $request->cv;
                // dd($fileCV);
                $name_cv = time() . ' ' . $request->cv->getClientOriginalName();

                $path_cv = "user-cv/" . $name_cv;

                // dd($path_cv);
                $fileCV->move(public_path() . '/user-cv', $name_cv);
            }

            // dd($path_cv);



            $detail_id =   DetailUser::where('id', $detailCheck->id)->update([
                "bio" => $request->bio,
                "cv" => $path_cv,
                "no_telpon" => $request->no_telpon,
                "skill" => $implode_skill,
            ]);
        }


        if ($request->profileImg == null) {
            if ($request->password == null) {
                User::where('id', $id)->update([
                    "name" => $request->name,
                    "email" => $request->email,
                    // "password" => Hash::make($request->password),
                    "kelas_siswa" => $request->kelas_id,
                ]);
            } else {
                User::where('id', $id)->update([
                    "name" => $request->name,
                    "email" => $request->email,
                    "password" => Hash::make($request->password),
                    "kelas_siswa" => $request->kelas_id,
                ]);
            }
        } else {
            $old_img = User::where('id', $id)->first()->avatar;
            // $avatar_nameFile = substr($old_img, strpos($old_img, "/") + 1);    
            if (File::exists(public_path($old_img))) {
                File::delete(public_path($old_img));
                // dd('true');
            }

            $file = $request->profileImg;
            $name = time() . ' ' . $request->profileImg->getClientOriginalName();

            $file->move(public_path() . '/user-img', $name);
            if ($request->password == null) {
                User::where('id', $id)->update([
                    "name" => $request->name,
                    "email" => $request->email,
                    // "password" => Hash::make($request->password),
                    "kelas_siswa" => $request->kelas_id,
                    "avatar" => "user-img/" . $name
                ]);
            } else {
                User::where('id', $id)->update([
                    "name" => $request->name,
                    "email" => $request->email,
                    "password" => Hash::make($request->password),
                    "kelas_siswa" => $request->kelas_id,
                    "avatar" => "user-img/" . $name
                ]);
            }
        }

        if (Auth::user()->role->name == "admin" && Auth::user()->spesifc_role == "admin" ) {
            # code...
            return redirect()->route('dashboard.adm')->with('message', 'Berhasil update Profile');
        }elseif (Auth::user()->role->name == "user" && Auth::user()->spesifc_role == "panitia" ) {
            # code...
            return redirect()->route('dashboard.panitia')->with('message', 'Berhasil update Profile');
        }else{
            return redirect()->route('dashboard.'. Auth::user()->role->name)->with('message', 'Berhasil update Profile');

        }

    }

    public function detail($id)
    {
        $profile = User::where('id', $id)->first();
        // $profile
        $kelas = Kela::all();
        $skill = Skill::all();
        $detailUser = $profile->detailUser;
        // dd($detailUser);
        if ($detailUser == null) {
            $yourSkill = [];
            $detailProfileSkill = [];
        } else {
            $detailProfileSkill =  explode(',', $profile->detailUser->skill);
            // dd($detailProfileSkill);
            foreach ($detailProfileSkill as $key => $value) {
                $yourSkill[] = Skill::where('id', $value)->first();
            }
        }
        return view('profile.detail', compact('detailProfileSkill', 'skill', 'profile', 'kelas', 'yourSkill'));

        // return view('profile.detail');

    }
}
