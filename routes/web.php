<?php

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

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/', 'HomeController@main');

Route::get('/event/{id}/registration', "HomeController@addNewMember");

Route::get('/register', function () {
    return redirect('/login');
});

Route::get('/event/{id}', function ($id) {
    return view('/event' . $id);
});

Route::get('/send',"HomeController@sendMail");








