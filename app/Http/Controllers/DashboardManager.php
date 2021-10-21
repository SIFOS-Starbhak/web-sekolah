<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post;
use Tymon\JWTAuth\JWTAuth;
use Illuminate\Support\Facades\Auth;


class DashboardManager extends Controller
{
    public function index()
    {
        $article = Post::where('author_id', Auth::guard('api')->id())->get();
        $greetings = "";
        $time = date("H");
        $timezone = date("e");

        if ($time < "12") {
            $greetings = "Selamat Pagi";
        } else
            if ($time >= "12" && $time < "15") {
            $greetings = "Selamat Siang";
        } else
            if ($time >= "15" && $time < "18") {
            $greetings = "Selamat Sore";
        } else
            if ($time >= "18") {
            $greetings = "Selamat Malam";
        }

        return view('dashboard.dashboard', compact('greetings', 'article'));
    }
}
