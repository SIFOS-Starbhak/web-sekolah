<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Pembayaran;
use App\Models\User;
use App\Models\PembayaranCalonSiswa;
use App\Models\CalonSiswa;
use Auth;

use File;
use Carbon\Carbon;
class PembayaranCasisController extends Controller
{
    public function pembayaran_casis($id)
    {
        // dd($id);
        $pembayaran = Pembayaran::where('id',$id)->first();
        // dd($pembayaran);
     return view('casis.pembayaran',compact('pembayaran'));
    }
    public function konfirmasi_pembayaran(Request $request,$id)
    {
        // $blog = TbBlog::find($id);
        return view('site.show',compact('blog'))->renderSections()['content'];
    }
    public function pembayaran_casis_store(Request $request)
    {
        $request->validate([
            'bukti_pembayaran' => 'required|mimes:jpeg,png,jpg |max:4096',
            'tipe_cicilan' => 'required',
            'metode_bayar' => 'required',
            
        ],
           [
                'required' => 'Tidak boleh kosong!',
                'mimes' => 'Only jpeg, png, bmp,tiff are allowed.'
            ]
        );
        $casis_id = User::where('id', Auth::guard('api')->user()->id)->first();
        // dd($request->file);
        $filebukti_pembayaran = $request->bukti_pembayaran;
        // dd($filebukti_pembayaran);
        // $data = "123_12313.sdawda.String";   
        $data = substr($request->bukti_pembayaran->getClientOriginalName(),-6) ;
        $format_image = substr($data, strpos($data, ".") + 1);    
        $name_bukti_pembayaran = time() . '|' . $casis_id->nomor_induk.'.'.$format_image;
        // dd($name_bukti_pembayaran);

        // $path_bukti_pembayaran = "bukti_pembayaran_casis/" . $name_bukti_pembayaran;
        // $filebukti_pembayaran->move(public_path() . '/bukti_pembayaran_casis', $name_bukti_pembayaran);
                // $fileCV = $request->cv;
                // $name_cv = time() . ' ' . $request->cv->getClientOriginalName();

                // $path_cv = "user-cv/" . $name_cv;
                // $fileCV->move(public_path() . '/user-cv', $name_cv);



        $public_storage_voyager =  Carbon::now()->format('F').Carbon::now()->year;
        // dd($)

        $filebukti_pembayaran->move(public_path().'/storage/bukti_pembayaran_casis/'.$public_storage_voyager,$name_bukti_pembayaran);
        // dd($filebukti_pembayaran);
       
        $filepath = 'bukti_pembayaran_casis/'.$public_storage_voyager.'/'.$name_bukti_pembayaran;
    

            $user_id =  Auth::guard('api')->user()->id;
             $casis_id = User::where('id', $user_id)->first();
               $casis = CalonSiswa::where('id',$casis_id->calon_siswa_id)->first();        
                
               PembayaranCalonSiswa::create([
                    'calonsiswa_id' => $casis->id,
                    'tipecicilan_id' => $request->tipe_cicilan,
                    'nominal' => $request->pembayaran_nominal,
                    'metode_bayar' => $request->metode_bayar,
                    'bukti_bayar' => $filepath,
                    'status' => null
                ]);
        return redirect()->route('dashboard.casis')->with('message', 'Berhasil Melakukan Pembayaran!');

            // $profile = User::where('id', $id)->first();
        
    
            //    $casis = CalonSiswa::where('id',$profile->calon_siswa_id)->first();        

        // PembayaranCalonSiswa::create([
        //     'calonsiswa_id' => $request->
        // ]);
        
        // dd($request);
        // $pembayaran = Pembayaran::where('id',$id)->first();
   


     return view('casis.pembayaran',compact('pembayaran'));
    }

    public function validasi_pembayaran($id)
    {
        $pembayaran = PembayaranCalonSiswa::where('calonsiswa_id',$id)->get();
       
        return view('dashboard.pembayaran_casis.modal',compact('pembayaran'));
    }
    public function detail_image($id)
    {
        $data = PembayaranCalonSiswa::where('id',$id)->first();

       
        return view('dashboard.pembayaran_casis.modalimage',compact('data'));
    }
    public function konfirmasi(Request $request,$id)
    {
         PembayaranCalonSiswa::where('id',$id)->update([
            'status' => request('status')
        ]);

       if (request('status') == "0" || request('status') == 0) {
           $msg = "Berhasil Menolak Pembayaran Calon Siswa";
       }else{
        $msg = "Berhasil Menerima Pembayaran Calon Siswa";

       }
        return  response()->json(['success'=>$msg]);
    }
   
  
}
