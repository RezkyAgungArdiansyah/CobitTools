<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\GMOController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\DFMapController;
use App\Http\Controllers\DFController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\RegistrationController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/',[HomeController::class,'index'])->middleware('auth');


Route::get('/GMO',[GMOController::class,'ShowGMO'])->middleware('auth');;

Route::get('/DFMap/{slug}',[DFMapController::class, 'DFMap_slug'])->name('DFMap')->middleware('auth');;
 
Route::get('/DFMap',[DFMapController::class,'DFMap'])->middleware('auth');;

Route::get('/login',[LoginController::class,'index'])->middleware('guest');;

Route::post('/login',[LoginController::class,'authenticate'])->name('login.index')->middleware('guest');;

Route::get('/register',[RegistrationController::class,'index'])->middleware('guest');;

Route::post('/register',[RegistrationController::class,'store'])->middleware('guest');;

Route::post('logout',[LoginController::class,'logout'])->middleware('auth');

Route::fallback(function () {
    return view('myCustom404Error');
    });

Route::get('/DF',[DFController::class,'index'])-> middleware('auth');

Route::get('/DF/{slug}',[DFController::class,'DF_slug'])->name('DF')->middleware('auth');

