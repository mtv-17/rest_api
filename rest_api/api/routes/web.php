<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/', function () {
    return view('welcome');
});

//Route::get('/plant', '\App\Http\Controllers\MainController@getPlant');

//Route::get('/plant/{id}', '\App\Http\Controllers\MainController@getPlantId');
//
//Route::get('/family', '\App\Http\Controllers\MainController@createFamily');
//
//Route::get('/familyGet', '\App\Http\Controllers\MainController@getFamilyAll');

//Route::get('/plant', '\App\Http\Controllers\PlantController@index');

//Route::post('/plant', '\App\Http\Controllers\PlantController@store');


