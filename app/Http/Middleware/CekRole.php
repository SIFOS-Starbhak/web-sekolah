<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Auth;

class CekRole
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next,...$role)
    {
            if (in_array(Auth::guard('api')->user()->role->name,$role)) {
                    return $next($request);
            } else{
                abort(403);
            }
    }
}
