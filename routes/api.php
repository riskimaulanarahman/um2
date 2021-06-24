<?php

use Illuminate\Http\Request;

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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/cek-detail/{id}','API\PrestasiController@cekdetail')->name('prestasi.cek');


//lapor RT
Route::apiResource('prestasi-warga', 'API\PrestasiController');
Route::apiResource('prestasi-rt', 'API\prestasiRtController');

//master data
Route::apiResource('kecamatan', 'API\KecamatanController');
Route::apiResource('kelurahan', 'API\KelurahanController');
Route::apiResource('rt', 'API\RtController');
Route::apiResource('kategori', 'API\KategoriController');

// list option
Route::get('list-kecamatan','API\ListController@listKecamatan');
Route::get('list-kelurahan','API\ListController@listKelurahan');

Route::get('opt-kelurahan/{kelurahan}','API\ListController@optKelurahan');
Route::get('opt-rt/{kelurahan}','API\ListController@optrt');



Route::get('list-prestasi/{kategori}','API\ListController@getlistPrestasi')->name('listprestasi');
Route::get('count-prestasi','API\ListController@countPrestasi')->name('countprestasi');