<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Http\Requests\Auth\LoginRequest;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;

class AuthenticatedSessionController extends Controller
{
    public function __construct()
    {
        $this->middleware(['auth:api'], ['except' => ['store', 'create']]);
    }
    /**
     * Get the token array structure.
     *
     * @param  string $token
     *
     * @return \Illuminate\Http\JsonResponse
     */
    protected function createNewToken($token)
    {
        return response()->json([
            'access_token' => $token,
            'token_type' => 'bearer',
            'expires_in' => auth('api')->factory()->getTTL() * 60,
            'user' => auth('api')->user(),
        ]);
    }
    /**
     * Display the login view.
     *
     * @return \Illuminate\View\View
     */
    public function create()
    {
        return view('auth.login');
    }

    /**
     * Handle an incoming authentication request.
     *
     * @param  \App\Http\Requests\Auth\LoginRequest  $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(Request $request)
    {
        // TODO: SEHARUSNYA BUKAN KYK GINI TAPI KARENA DEADLINE
        $validator = Validator::make($request->all(), [
            'username' => 'required',
            'password' => 'required|string',
        ]);
        $data =  ["username" => $request->username, "password" => $request->password];
        $jwt = JWT::encode($data, "1342423424324324234"); // set cookie

        setcookie("user_data", $jwt, time() + (86400 * 30), "/"); // 86400 = 1 day


        if ($validator->fails()) {
            return response()->json($validator->errors(), 422);
        }
        if (!$token = auth('api')->attempt(['nomor_induk' => $request->username, 'password' => $request->password])) {
            return response()->json(['error' => 'Unauthorized'], 401);
        }
        return response()->json(['redirect' => route(Str::after(Str::lower($this->guardName()), 'api') . '.dashboard'), $this->createNewToken($token)], 200);

        // return redirect()->back();
    }

    /**
     * Destroy an authenticated session.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function destroy(Request $request)
    {
        auth('api')->logout();
        return response()->json(['message' => 'successfully signed out'], 200);
    }

    /**
     * Refresh a token.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function refresh()
    {
        return $this->createNewToken(auth('api')->refresh());
    }

    /**
     * Get the authenticated User.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function userProfile()
    {
        // $userdata = JWT::decode($_COOKIE['user_data'],"1342423424324324234", array('HS256')); // take user & password

        //hapus ini jika $_COOKIE['user_data'] sudah ada isinya
        $encode_cookies = JWT::encode(["username" => "1920100259" ,"password" =>"password"], "1342423424324324234"); // take user & password
        $userdata = JWT::decode($encode_cookies,"1342423424324324234", array('HS256')); // take user & password

        // $auth_token = // need token here
        return response()->json(auth('api')->user(), 200);
    }
}
