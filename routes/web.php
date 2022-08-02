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

Route::get('/', \App\Http\Livewire\Home::class)->name('home');

Route::get('/works/{work}', \App\Http\Livewire\Content::class)->name('work');

Route::view('/vita', 'vita')->name('vita');
Route::view('/contact', 'contact')->name('contact');
Route::view('/privacy', 'privacy')->name('privacy');

// Admin
Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
