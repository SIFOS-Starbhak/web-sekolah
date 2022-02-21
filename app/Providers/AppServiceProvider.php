<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

use Illuminate\Support\Facades\View;
use Illuminate\Support\Facades\Schema;

use Illuminate\Support\Facades\Auth;
use DB;
use App\Models\Gugus;

use Illuminate\Pagination\Paginator;
// use Paginator;


class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {


        Paginator::useBootstrap();
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
        $gugus_frontView = Gugus::all();
        View::share(compact('greetings','gugus_frontView'));  

        // View::share();  

    }
}
