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

Auth::routes();

Route::group( ['prefix' => 'rt','as' => 'rt.'], function() {

    Route::resource('/dashboard-rt','API\PrestasiRtController');
    Route::get('/dashboard-rt/respon/{id}/{status}','API\PrestasiRtController@respon')->name('dashboard-rt.respon');
    Route::post('/dashboard-rt/laporan-updateaksi/{id}','API\PrestasiRtController@updateaksi')->name('laporan.updateaksi');

    Route::resource('/data-warga','API\DatawargartController');
    Route::get('/reset-pass/{id}','API\DatawargartController@resetpass')->name('resetpass');

    Route::get('/dashboard-rt/deleted-prestasi/{id}', 'API\PrestasiRtController@deletedprestasi')->name('deletedprestasi');
    Route::post('/dashboard-rt/prestasi-update','API\PrestasiRtController@updateprestasi')->name('prestasiupdate');





});

