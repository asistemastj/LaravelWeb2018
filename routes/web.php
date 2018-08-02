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

#vistas del frontend
#***********************************************
Route::get('/','FrontController@index')->name('home');
Route::get('/nosotros','FrontController@abousUs')->name('nosotros');
Route::get('/servicios','FrontController@service')->name('servicios');
Route::get('/ubicacion','FrontController@location')->name('ubicacion');
Route::get('/contacto','FrontController@contact')->name('contacto');
Route::get('/historia','FrontController@logros')->name('historia');
Route::get('/transporte','FrontController@transport')->name('transporte');

#Routes para noticias
Route::get('noticias','FrontController@notic')->name('noticias');
Route::get('noticia/{slug}','FrontController@PostNotic')->name('post');


Route::get('prueba', 'PetroleoController@index');
// Get Data
Route::get('prueba/showTable', 'PetroleoController@showTable')->name('prueba.showTable');

#visitas del backend
#***********************************************
Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();

        Route::post('petroleo',['uses' => 'PetroleoController@showTable',  'as' => 'petroleo.showTable']);
});

#***********************************************
Auth::routes();
