<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\Kela;
use App\Models\User;
use Firebase\JWT\JWT;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cookie;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use App\Models\Role;
use Str;
use Carbon\Carbon;
class AuthenticatedSessionController extends Controller
{
    public function __construct()
    {
        $this->middleware(['auth:api'], ['except' => ['store', 'create', 'userData', 'userCreate']]);
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

        //$user = User::where(["username"=>$request->usename],['password'=> md5($request->password)]);
        // dd(auth('api')->user());

        if ($validator->fails()) {
            return response()->json($validator->errors(), 422);
        }
        if (!$token = auth('api')->attempt(['nomor_induk' => $request->username, 'password' => $request->password])) {
            return response()->json(['error' => 'Unauthorized'], 401);
        }

        // TODO: api seharusnya jangan pake cookie
        // simpen token ke cookie
        Cookie::queue('token', $token, time() + (60 * 60 * 24 * 30));
        Cookie::queue('auth_token', JWT::encode($validator->validated(), "srtarbhak-key"), time() + (60 * 60 * 24 * 30));

        $data = array('original_token' => $this->createNewToken($token));

        if (auth('api')->user()->hasRole('admin') && auth('api')->user()->spesifc_role == 'admin') {
            $data['redirect'] = route('dashboard.adm');

        } else if (auth('api')->user()->hasRole('casis') && auth('api')->user()->spesifc_role == 'casis') {
            $data['redirect'] = route('dashboard.casis');
        } else if (auth('api')->user()->hasRole('siswa')) {
            $data['redirect'] = route('dashboard.siswa');
        } else if (auth('api')->user()->hasRole('user') && auth('api')->user()->spesifc_role == 'panitia') {
            $data['redirect'] = route('dashboard.panitia');
        }else if (auth('api')->user()->hasRole('guru')) {
            $data['redirect'] = route('dashboard.guru');
        } else if (auth('api')->user()->hasRole('manager')) {
            $data['redirect'] = route('dashboard.manager');
        } else if (auth('api')->user()->hasRole('perusahaan')) {
            $data['redirect'] = route('dashboard.perusahaan');
        }else if (auth('api')->user()->hasRole('admin')) {
            $data['redirect'] = '/admin';

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
        $data = array('user' => auth('api')->user());
        // XXX: Di Moodle user udah ada kelas sama rolenya tapi pas di matiin malah kgk ada kelas&role nya
        if (auth('api')->user()->hasRole('siswa')) {
            $data['kelas'] = auth('api')->user()->kelas;
        }
        if (auth('api')->user()->hasRole('admin')) {
            $data['auth'] = ["username" => auth('api')->user()->nomor_induk, "password" => auth('api')->user()->password, "role" => "admin", "spesifc_role" => auth('api')->user()->spesifc_role];
            $data['role'] = 'admin';
        }
        //  else if (auth('api')->user()->hasRole('casis') ) {
        //     $data['auth'] = ["username" => auth('api')->user()->nomor_induk, "password" => auth('api')->user()->password, "role" => "casis", "spesifc_role" => auth('api')->user()->spesifc_role];
        // }
         else if (auth('api')->user()->hasRole('siswa')) {
            $data['auth'] = ["username" => auth('api')->user()->nomor_induk, "password" => auth('api')->user()->password, "role" => "siswa", "spesifc_role" => auth('api')->user()->spesifc_role];
            $data['role'] = 'siswa';
        } else if (auth('api')->user()->hasRole('guru')) {
            $data['auth'] = ["username" => auth('api')->user()->nomor_induk, "password" => auth('api')->user()->password, "role" => "guru", "spesifc_role" => auth('api')->user()->spesifc_role];
        } else if (auth('api')->user()->hasRole('manager')) {
            $data['auth'] = ["username" => auth('api')->user()->nomor_induk, "password" => auth('api')->user()->password, "role" => "manager" , "spesifc_role" => auth('api')->user()->spesifc_role];
        } else if (auth('api')->user()->hasRole('perusahaan')) {
            $data['auth'] = ["username" => auth('api')->user()->email, "password" => auth('api')->user()->password, "role" => "perusahaan", "spesifc_role" => auth('api')->user()->spesifc_role];
        } else if (auth('api')->user()->hasRole('admin') && auth('api')->user()->spesifc_role == 'admin') {
            $data['auth'] = ["username" => auth('api')->user()->email, "password" => auth('api')->user()->password, "role" => "admin", "spesifc_role" => auth('api')->user()->spesifc_role];
        } else if (auth('api')->user()->hasRole('user') && auth('api')->user()->spesifc_role == 'panitia') {
            $data['auth'] = ["username" => auth('api')->user()->email, "password" => auth('api')->user()->password, "role" => "user", "spesifc_role" => auth('api')->user()->spesifc_role];
        }
            
        

        $token = JWT::encode($data, "1342423424324324234", 'HS256');
        return response()->json(['token' => $token], 200)->header("Access-Control-Allow-Origin", "*");
    }
    /**
     * Get the User.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function userData()
    {
        return response()->json(User::with('kelas')->get(), 200);
    }
    /**
     * create the User.
     *
     * @return \Illuminate\Http\JsonResponse
     */

    public function userCreate(Request $request)
    {
        
        function kelas($lastname){
            $return = Kela::where('nama_kelas',$lastname)->first();
            if(!empty($return)){  
                Kela::create([
                    'nama_kelas' => $lastname,
                    'kelas' => explode(' ',$lastname)[0],
                    'tahun_ajaran' => Carbon::now()->Isoformat('YYYY') .'/'. Carbon::now()->addYear(1)->Isoformat('YYYY'),
                    'status' => "Aktif"
                ]);
                $kelas = Kela::where('nama_kelas',$lastname)->first();
                return $kelas->id;
            }else{
                return $return->id;
            }  
        }
        
        function cekrole($role)
        {
            switch ($role) {
                case 'manager':
                    $roles = Role::where("name", "manager")->first();
                    return $roles->id;
                    break;
                case 'student':
                    $roles = Role::where("name", "siswa")->first();
                    return $roles->id;
                case 'teacher':
                case 'coursecreator':
                case 'editingteacher':
                    $roles = Role::where("name", "guru")->first();
                    return $roles->id;
                default: 
                $roles = Role::where("name", "siswa")->first();
                return $roles->id;
                break;
            }
        }

        function sitakols_role($role)
        {
            switch ($role) {
                case 'manager':
                    return "kaprog";
                    break;
                case 'student':
                    return "siswa";
                    break;
                case 'teacher':
                case 'coursecreator':
                case 'editingteacher':
                    return "guru";
                    break;
                default: 
                    return "siswa";
                break;
            }
        }

        User::create([
            "name" => $request->firstname,
            "email" => $request->email,
            "password" => $request->password,
            "nomor_induk" => $request->username,
            "role_id" => cekrole($request->role),
            "spesifc_role" => sitakols_role($request->role),
            'kelas_siswa' => kelas($request->lastname),
        ]);
        return response()->json(["success" => "Succesfully"], 201);
    }
}
