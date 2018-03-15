<?php

namespace App\Http\Controllers\Site;

use App\Models\Links;
use App\Models\Noticia;
use App\Models\PesquisaNoticia;
use DB;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Redirect;
use function var_dump;

class NoticiaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $defesas = DB::table('pesquisa_noticias')->where('tipo', 'defesa')->get();
        $segurancas = DB::table('pesquisa_noticias')->where('tipo', 'seguranca')->get();
        //var_dump($noticias);
        return view('pages.noticias', ['defesas' => $defesas, 'segurancas' => $segurancas]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('pages.criar_noticia');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $termo_pesquisa = new PesquisaNoticia();
        $termo_pesquisa->texto = $request->texto;
        $termo_pesquisa->tipo = $request->tipo ==  'Segurança Pública' ? 'seguranca' : 'defesa';
        $termo_pesquisa->save();

        return Redirect::to('noticias');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Noticia  $noticia
     * @return \Illuminate\Http\Response
     */
    public function show(Noticia $noticia)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Noticia  $noticia
     * @return \Illuminate\Http\Response
     */
    public function edit(Noticia $noticia)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Noticia  $noticia
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Noticia $noticia)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Noticia  $noticia
     * @return \Illuminate\Http\Response
     */
    public function destroy(Noticia $noticia)
    {
        //
    }

    public function delete($id)
    {
        //
        $pesquisa = PesquisaNoticia::findOrFail($id);
        $pesquisa->delete();

        return Redirect::to('noticias');
    }

    public function links(){

        $links = DB::table('links')->orderByDesc('data')->get();

        return view('pages.repositorio', ['links' => $links]);
    }

    public function criar_link(){
        return view('pages.criar_link');
    }

    public function deletar_link($id){
        $link = Links::findOrFail($id);
        $link->delete();

        return Redirect::to('repositorio');
    }

    public function salvar_link(Request $r){

        $link = new Links();
        $link->titulo = $r->titulo;
        $link->link = $r->link;
        $link->data = $r->data;
        $link->save();

        return Redirect::to('repositorio');

    }

}
