<?php

namespace App\Http\Controllers;

use App\Models\Kela;
use Illuminate\Http\Request;
use App\Models\Setting;
use App\Models\User;
use Hash;
use Auth;
use File;
class ProfileController extends Controller
{
    public function edit($id)
    {

    // $settings = Setting::all();
        $profile = User::where('id',$id)->first();
        $kelas = Kela::all();
        // dd($profile);
        return view('profile.edit',compact('profile','kelas'));

    }

    public function update(Request $request, $id){
        if(Auth::user()->role->name !== "manager" || Auth::user()->role->name !== "guru"){
            $request->validate([
                "name" => 'required',
                "email" => 'required',
            ],[
                'name.required' => "Nama tidak boleh kosong",
                'email.required' => "Email tidak boleh kosong",
                'password.required' => "Password tidak boleh kosong",
            ]);
        }else{
            $request->validate([
                "name" => 'required',
                "email" => 'required',
                "kelas_id" => 'required',
            ],[
                'name.required' => "Nama tidak boleh kosong",
                'email.required' => "Email tidak boleh kosong",
                'kelas_id.required' => "Kelas tidak boleh kosong",
            ]);
        }
        // dd($request->file('profileImg')->originalName);
        $file = $request->profileImg;
        $name = time().' '.$request->profileImg->getClientOriginalName();
        if (File::exists(public_path('user-img/' . $name))) {
            File::delete(public_path('user-img/' . $name));
        }
        $file->move(public_path().'/user-img',$name);
        if ($request->image == null) {
            User::where('id',$id)->update([
                "name" => $request->name,
                "email" => $request->email,
                "password" => Hash::make($request->password),
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
       
        
        return redirect()->route('dashboard.'.Auth::user()->role->name)->with('message', 'Berhasil update Profile');
    }
}
