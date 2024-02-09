<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\Category\CategoryController;
use App\Http\Controllers\API\OTPController;
use App\Http\Controllers\API\HomeController;




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
});


 // Fetch Externel API All Route 
 Route::controller(HomeController::class)->group(function () {
    Route::get('/authors', 'FetchAuthor')->name('fetch_authors'); 
    Route::get('/home_books', 'Books')->name('fetch_books'); 
   
});







//Fetch otp
Route::controller(OTPController::class)->group(function () {
    Route::post('/send-otp', 'SendOTP')->name('send-otp');
    Route::post('/verify-otp', 'verifyOtp')->name('verify-otp');  
    Route::post('/login', 'Login')->name('login');
});


Route::middleware('auth:sanctum')->controller(OTPController::class)->group(function () {
    Route::get('/user', 'FetchUser')->name('fetch_user'); 
 });
 
