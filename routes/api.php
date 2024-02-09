<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\Category\CategoryController;
use App\Http\Controllers\API\OTPController;



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

 // Category All Route 
 Route::controller(CategoryController::class)->group(function () {
    Route::get('/categories/all', 'ApiAll')->name('categories.all'); 
});


 // Fetch Externel API All Route 
 Route::controller(CategoryController::class)->group(function () {
    Route::get('/books', 'FetchBook')->name('fetch_book'); 
    Route::get('/authors', 'FetchAuthors')->name('fetch_authors'); 
    
});


//Fetch otp
Route::controller(OTPController::class)->group(function () {
    Route::post('/send-otp', 'SendOTP')->name('send-otp');
    Route::post('/verify-otp', 'verifyOtp')->name('verify-otp');  
    Route::post('/login', 'Login')->name('login');
});


Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
