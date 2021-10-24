<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Dompdf\Dompdf;
use App\Models\User;
use Response;
class PDFController extends Controller
{
    public function Stream($id)
    {
        $fileCV = User::where('id',$id)->first()->detailUser->cv;
        
        return response()->file(
            $file= public_path($fileCV)
        );

    }
    public function downloadCV($id)
    {
       //PDF file is stored under project/public/download/info.pdf

       $fileCV = User::where('id',$id)->first()->detailUser->cv;
       $file= public_path($fileCV);


 

    $headers = array(

              'Content-Type: application/pdf',

            );

            $name = User::where('id',$id)->first()->name;
 

    return Response::download($file, $name.'CV.pdf', $headers);
    }
}
