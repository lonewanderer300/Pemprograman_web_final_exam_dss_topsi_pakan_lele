<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\topsis_pakan_leleController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

//Route::resource('topsis_pakan_lele', 'App\Http\Controllers\topsis_pakan_leleController');
//Route::resource('topsis_pakan_lele', topsis_pakan_leleController::class);
//Route::get('topsis_pakan_lele/results', 'topsis_pakan_leleController@results')->name('topsis_pakan_lele.results');
//Route::get('topsis_pakan_lele/results', [topsis_pakan_leleController::class, 'calculateTopsis'])->name('topsis_pakan_lele.results');
//Route::resource('topsis_pakan_lele', topsis_pakan_leleController::class)->only(['index', 'create', 'store', 'show', 'edit', 'update', 'destroy']);
//Route::get('topsis_pakan_lele/results', 'App\Http\Controllers\topsis_pakan_leleController@results')->name('topsis_pakan_lele.results');

//Route::resource('topsis_pakan_lele', topsis_pakan_leleController::class)->only(['index', 'create', 'store', 'show', 'edit', 'update', 'destroy']);
//Route::get('topsis_pakan_lele/results', [topsis_pakan_leleController::class, 'results'])->name('topsis_pakan_lele.results');
Route::middleware(['auth'])->group(function() {
    Route::resource('topsis_pakan_lele', topsis_pakan_leleController::class)->only([
        'index', 'create', 'store', 'show', 'edit', 'update', 'destroy'
    ]);
    Route::get('topsis_pakan_lele/results', [topsis_pakan_leleController::class, 'results'])->name('topsis_pakan_lele.results');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
