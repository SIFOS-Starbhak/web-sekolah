<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class RedirectIfAuthenticated
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @param  string|null  ...$guards
     * @return mixed
     */
    public function handle(Request $request, Closure $next, ...$guards)
    {
        $guards = empty($guards) ? [null] : $guards;
        foreach ($guards as $guard) {
            if (Auth::guard($guard)->check()) {
                // dd(Auth::guard($guard)->user());
                if (Auth::guard($guard)->user()->hasRole('admin') && Auth::guard($guard)->user()->spesifc_role == 'admin')  {
                    return redirect()->route('dashboard.adm');
                } else if (Auth::guard($guard)->user()->hasRole('guru')) {
                    return redirect()->route('dashboard.guru');
                } else if (Auth::guard($guard)->user()->hasRole('siswa')) {
                    return redirect()->route('dashboard.siswa');
                } else if (Auth::guard($guard)->user()->hasRole('manager')) {
                    return redirect()->route('dashboard.manager');
                } else if (Auth::guard($guard)->user()->hasRole('perusahaan')) {
                    return redirect()->route('dashboard.perusahaan');
                }else if (Auth::guard($guard)->user()->hasRole('admin')) {
                    return redirect("/admin");
                } else {
                    return redirect()->route('dashboard');
                }
            }
        }

        return $next($request);
    }
}
