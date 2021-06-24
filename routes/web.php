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

// Route::get('/panduan', function () {
//     return view('pages/panduan');
// });
// Route::get('/cek-jadwal', 'HomeController@cekjadwal')->name('home.cekjadwal');

Auth::routes();

// Route::get('/', function () {
//     return view('home');
//   })->name('beranda');
Route::get('/','API\ListController@listPrestasi')->name('listprestasi');


Route::post('/rest/changepp/{id}', 'SA_MasterUserController@changepp')->name('rest.changepp');

Route::get('/login', 'HomeController@index')->name('home');
Route::get('/home', 'HomeController@index')->name('home');

Route::group( ['middleware' => ['auth','cors','roleAdmin']], function() {

});