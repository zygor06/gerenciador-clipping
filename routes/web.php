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

Route::get('clipping', 'Site\ClippingController@clipping');
Route::get('clipping/criar', 'Site\ClippingController@criar');
Route::get('clipping/edit/{id}', 'Site\ClippingController@editar');
Route::get('clipping/view/{id}', 'Site\ClippingController@view');
Route::post('clipping/salvar', 'Site\ClippingController@salvar');
Route::patch('clipping/{id}', 'Site\ClippingController@atualizar');


Route::get('info', function(){
    return view('pages.info');
});

Route::resource('noticias', 'Site\NoticiaController');
Route::post('noticias/store', 'Site\NoticiaController@store');
Route::delete('noticias/delete/{id}', 'Site\NoticiaController@delete');
Auth::routes();

Route::get('repositorio', 'Site\NoticiaController@links');
Route::get('repositorio/criar', 'Site\NoticiaController@criar_link');
Route::post('repositorio/salvar', 'Site\NoticiaController@salvar_link');
Route::delete('repositorio/delete/{id}', 'Site\NoticiaController@deletar_link');

Route::get('orientacoes', 'Site\OrientacoesController@index');
Route::get('orientacoes/criar', 'Site\OrientacoesController@criar');
Route::post('orientacoes/salvar', 'Site\OrientacoesController@salvar');
Route::delete('orientacoes/delete/{id}', 'Site\OrientacoesController@deletar');


