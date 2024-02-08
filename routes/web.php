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

Route::post('/DFMap/{slug}',[DFMapController::class, 'DFMap_slug'])->name('DFMap')->middleware('auth');;

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

Route::get('DF/step_2_summary',[DFController::class,'DF_Summary1'])->Name('Summary1');

Route::post('DF/step_2_summary',[DFController::class,'DF_Summary1'])->Name('Summary1');

Route::get('DF/step_3_summary',[DFController::class,'DF_Summary2'])->Name('Summary2');

Route::post('DF/step_3_summary',[DFController::class,'DF_Summary2'])->Name('Summary2');

Route::get('/DF/{slug}',[DFController::class,'DF_slug'])->name('DF')->middleware('auth');

Route::post('/DF/{slug}',[DFController::class,'DF_slug_submit'])->middleware('auth');

Route::get('/DF/{slug}/{version}',[DFController::class,'DF_slug'])->Name('DFX')->middleware('auth');
