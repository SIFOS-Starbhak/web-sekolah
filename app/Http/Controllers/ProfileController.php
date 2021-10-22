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
class ProfileController extends Controller
{
    public function edit($id)
    {

    // $settings = Setting::all();
        $profile = User::where('id',$id)->first();
        // $profile
        $kelas = Kela::all();
        $skill = Skill::all();
        $detailUser = $profile->detailUser;
        // dd($detailUser);
        if ($detailUser == null) {
            $yourSkill = [];
            $detailProfileSkill = [];
        }else{
            $detailProfileSkill =  explode(',',$profile->detailUser->skill);
            // dd($detailProfileSkill);
            foreach ($detailProfileSkill as $key => $value) {
                $yourSkill[] = Skill::where('id',$value)->first();
            }
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

        return view('profile.edit',compact('detailProfileSkill','skill','profile','kelas','yourSkill'));

    }

    public function update(Request $request, $id){
        if(Auth::user()->role->name == "manager" || Auth::user()->role->name == "guru"){
            $request->validate([
                "name" => 'required',
                "email" => 'required',
            ],[
                'name.required' => "Nama tidak boleh kosong",
                'email.required' => "Email tidak boleh kosong",
            ]);
        }else{
            $request->validate([
                "name" => 'required',
                "email" => 'required',
                "kelas_id" => 'required',
                "no_telpon" => 'required',
                // "bio" => 'required',
                // "skill.*" => 'required',
                // "cv" => 'requ'
            ],[
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

        $detailCheck = User::where('id',$id)->first()->detailUser;
        //  dd($detailCheck->detailUser,$detailCheck);
        // dd($request);
        
        if ($detailCheck == null ) {
            $fileCV = $request->cv;
            
           
            if ($fileCV == NULL ) {
               $path_cv = NULL;
            //    dd('cv kosong');

            }else{
            //    dd('cv tidak kosong');

                $fileCV = $request->cv;
                $name_cv = time().' '.$request->cv->getClientOriginalName();

                $path_cv = "user-cv/".$name_cv;
                $fileCV->move(public_path().'/user-cv',$name_cv);
            }
            if ($request->bio == NULL) {
                $request->bio = NULL;
            //    dd('bio kosong');

            }
            if ($request->skill == NULL) {
                $implode_skill = NULL;
            //    dd('skill kosong');

            }else{
            //    dd('skill tidak kosong');

                $implode_skill = implode(',',$request->skill);
            }


            
               
                $detail_id =   DetailUser::create([
                    "bio" => $request->bio,
                    "cv" => $path_cv,
                    "no_telpon" => $request->no_telpon,
                    "skill" => $implode_skill,
                ]);
                // dd($detail_id);
                User::where('id',$id)->update([
                    "detail_user" => $detail_id->id,
                ]);
           
          
                
       
        }else{


            if ($request->bio == NULL) {
                $request->bio = NULL;
            //    dd('bio kosong');

            }
            if ($request->skill == NULL) {
                $implode_skill = NULL;
            //    dd('skill kosong');

            }else{
            //    dd('skill tidak kosong');

                $implode_skill = implode(',',$request->skill);
            }


            

            $fileCV = $request->cv;
            

            //request cv kosong / tidak ada
            if ($fileCV == NULL ) {
                $old_cv = User::where('id',$id)->first()->detailUser->cv;
                if ($old_cv  == NULL) {// jika akun ini tidak punya cv
                    $path_cv = NULL;
                    
                }else{ // jika  akun ini punya cv
                  $old_cv = User::where('id',$id)->first()->detailUser->cv;
                //    dd($old_cv);
                $path_cv = $old_cv;
                    
                }
                
            }else{

                  $old_cv = User::where('id',$id)->first()->detailUser->cv;
                //   dd($old_cv);
            //    dd('cv tidak kosong');
                if (File::exists(public_path($old_cv))) {
                    File::delete(public_path($old_cv));
                    // dd('true');
                }
                $fileCV = $request->cv;
                // dd($fileCV);
                $name_cv = time().' '.$request->cv->getClientOriginalName();

                $path_cv = "user-cv/".$name_cv;

                // dd($path_cv);
                $fileCV->move(public_path().'/user-cv',$name_cv);

                                    
                



            }

            // dd($path_cv);



                $detail_id =   DetailUser::where('id',$detailCheck->id)->update([
                    "bio" => $request->bio,
                    "cv" => $path_cv,
                    "no_telpon" => $request->no_telpon,
                    "skill" => $implode_skill,
                ]);
               
            
         

                

        }


        if ($request->profileImg == null) {
            if ($request->password == null) {
             User::where('id',$id)->update([
                 "name" => $request->name,
                 "email" => $request->email,
                 // "password" => Hash::make($request->password),
                 "kelas_siswa" => $request->kelas_id,
             ]);
            }else{
             User::where('id',$id)->update([
                 "name" => $request->name,
                 "email" => $request->email,
                 "password" => Hash::make($request->password),
                 "kelas_siswa" => $request->kelas_id,
             ]);
            }
            
         }else{
             $old_img = User::where('id',$id)->first()->avatar;
             // $avatar_nameFile = substr($old_img, strpos($old_img, "/") + 1);    
             if (File::exists(public_path($old_img))) {
                 File::delete(public_path($old_img));
                 // dd('true');
             }
 
             $file = $request->profileImg;
             $name = time().' '.$request->profileImg->getClientOriginalName();
            
             $file->move(public_path().'/user-img',$name);
             if ($request->password == null) {
                 User::where('id',$id)->update([
                     "name" => $request->name,
                     "email" => $request->email,
                     // "password" => Hash::make($request->password),
                     "kelas_siswa" => $request->kelas_id,
                     "avatar" => "user-img/".$name
                 ]);
             }else{
                 User::where('id',$id)->update([
                     "name" => $request->name,
                     "email" => $request->email,
                     "password" => Hash::make($request->password),
                     "kelas_siswa" => $request->kelas_id,
                     "avatar" => "user-img/".$name
                 ]);
             }
         }
       
        
        return redirect()->route('dashboard.'.Auth::user()->role->name)->with('message', 'Berhasil update Profile');
    }
}
