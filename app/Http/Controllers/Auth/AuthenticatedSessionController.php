<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Firebase\JWT\JWT;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cookie;
use Illuminate\Support\Facades\Validator;

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
        $validator = Validator::make($request->all(), [
            'username' => 'required',
            'password' => 'required|string',
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors(), 422);
        }
        if (!$token = auth('api')->attempt(['nomor_induk' => $request->username, 'password' => $request->password])) {
            return response()->json(['error' => 'Unauthorized'], 401);
        }

        // TODO: api seharusnya jangan pake cookie
        // simpen token ke cookie
        Cookie::queue('token', $token, time() + (60 * 60 * 24 * 30));
        Cookie::queue('auth_token', JWT::encode($validator->validated(), $token,'HS256'), time() + (60 * 60 * 24 * 30));

        $data = array('original_token' => $this->createNewToken($token));

        if (auth('api')->user()->hasRole('admin')) {
            $data['redirect'] = '/admin';
        } else if (auth('api')->user()->hasRole('siswa')) {
            $data['redirect'] = route('siswa.dashboard');
        } else if (auth('api')->user()->hasRole('guru')) {
            $data['redirect'] = route('guru.dashboard');
        } else if (auth('api')->user()->hasRole('manager')) {
            $data['redirect'] = route('manager.dashboard');
        } else {
            $data['redirect'] = route('dashboard');
        }
        $data['auth_token'] = JWT::encode(['nomor_induk' => $request->username, 'password' => $request->password], $token);
        return response()->json($data, 200);
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
        Cookie::queue(Cookie::forget('token'));
        Cookie::queue(Cookie::forget('auth_token'));
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
        // XXX: Ini auth_token untuk data auth
        $data = array('user' => auth('api')->user(), 'auth_token' => JWT::decode(Cookie::get('auth_token'), Cookie::get('token'),['HS256']));
        // XXX: Di Moodle user udah ada kelas sama rolenya tapi pas di matiin malah kgk ada kelas&role nya
        if (auth('api')->user()->kelas_siswa) {
            $data['kelas'] = auth('api')->user()->kelas;
        }
        if (auth('api')->user()->hasRole('admin')) {
            $data['role'] = 'admin';
        } else if (auth('api')->user()->hasRole('siswa')) {
            $data['role'] = 'siswa';
        } else if (auth('api')->user()->hasRole('guru')) {
            $data['role'] = 'guru';
        } else if (auth('api')->user()->hasRole('manager')) {
            $data['role'] = 'manager';
        }
        return response()->json($data, 200)->header("Access-Control-Allow-Origin", "*");
    }
}
