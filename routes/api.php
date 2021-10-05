<?php
use App\Http\Controllers\Auth\AuthenticatedSessionController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;


/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
 */
header('Access-Control-Allow-Origin: http://127.0.0.1:8000');
header('Access-Control-Allow-Methods: *');
header('Access-Control-Allow-Headers: *');
header('Access-Control-Allow-Credentials: true');


Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::group([
    'middleware' => 'api',
], function ($router) {
    Route::post('/login', [AuthenticatedSessionController::class, 'store']);
    // Route::post('/register', [AuthenticatedSessionController::class, 'register']);
    Route::post('/logout', [AuthenticatedSessionController::class, 'destroy']);
    Route::post('/refresh', [AuthenticatedSessionController::class, 'refresh']);
    Route::get('/me', [AuthenticatedSessionController::class, 'userProfile']);
});
