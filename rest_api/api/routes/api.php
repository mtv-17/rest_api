<?php

use App\Http\Controllers\PlantsController;
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


Route::post('/plant', "App\Http\Controllers\PlantsController@store"); // Create

Route::get('/plant/{plants}', "App\Http\Controllers\PlantsController@show"); // Detail

Route::put('/plant/{plants}', "App\Http\Controllers\PlantsController@update"); // Update

Route::delete('/plant/{plants}', "App\Http\Controllers\PlantsController@destroy"); // Delete
