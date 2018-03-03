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

Route::get('/', 'Site\SiteController@index');

Route::get('tutorial', function(){
   return view('pages.tutorial');
});


Route::get('clipping/criar', 'Site\ClippingController@criar');
Route::get('clipping/edit/{id}', 'Site\ClippingController@editar');
Route::get('clipping/view/{id}', 'Site\ClippingController@view');
Route::post('clipping/salvar', 'Site\ClippingController@salvar');
Route::patch('clipping/{id}', 'Site\ClippingController@atualizar');


Route::get('info', function(){
    return view('pages.info');
});