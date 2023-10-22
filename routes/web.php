<?php

use Illuminate\Support\Facades\Route;


Route::get('/', function () {
    return view('welcome');
});

Auth::routes();


Route::get('/users', 'App\Http\Controllers\UserController@index')->name('users.index');
Route::get('/users/search', 'App\Http\Controllers\UserController@search')->name('users.search');
Route::get('/home', 'App\Http\Controllers\HomeController@index')->name('home');

// User CRUD Routes
Route::resource('users', 'App\Http\Controllers\UserController');