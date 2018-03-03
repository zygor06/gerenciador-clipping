<?php

namespace App\Http\Controllers\Site;

use App\Models\Clipping;
use App\Models\Legislacao;
use App\Models\Noticia;
use App\Models\Orientacao;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Redirect;
use Session;

class ClippingController extends Controller
{
    //
    public function criar(){
        return view('pages.criar');
    }

    public function clipping(){
        $clippings = Clipping::get();
        return view('pages.clippings', ['clippings' => $clippings]);
    }

    public function salvar(Request $request){

        $clipping = new Clipping();
        $clipping->autor = $request->clipping_autor;
        $clipping->numero = $request->clipping_numero;
        $clipping->ano = $request->clipping_ano;
        $clipping->data = now();

        $clipping->save();

        $noticia1 = new Noticia();
        $noticia1->titulo = $request->clipping_noticia_titulo_1;
        $noticia1->descricao = $request->clipping_noticia_descricao_1;
        $noticia1->imagem = $request->clipping_noticia_imagem_1;
        $noticia1->link = $request->clipping_noticia_link_1;
        $noticia1->clipping_id = $clipping->id;

        $noticia1->save();

        $noticia2 = new Noticia();
        $noticia2->titulo = $request->clipping_noticia_titulo_2;
        $noticia2->descricao = $request->clipping_noticia_descricao_2;
        $noticia2->imagem = $request->clipping_noticia_imagem_2;
        $noticia2->link = $request->clipping_noticia_link_2;
        $noticia2->clipping_id = $clipping->id;

        $noticia2->save();

        $noticia3 = new Noticia();
        $noticia3->titulo = $request->clipping_noticia_titulo_3;
        $noticia3->descricao = $request->clipping_noticia_descricao_3;
        $noticia3->imagem = $request->clipping_noticia_imagem_3;
        $noticia3->link = $request->clipping_noticia_link_3;
        $noticia3->clipping_id = $clipping->id;

        $noticia3->save();

        $noticia4 = new Noticia();
        $noticia4->titulo = $request->clipping_noticia_titulo_4;
        $noticia4->descricao = $request->clipping_noticia_descricao_4;
        $noticia4->imagem = $request->clipping_noticia_imagem_4;
        $noticia4->link = $request->clipping_noticia_link_4;
        $noticia4->clipping_id = $clipping->id;

        $noticia4->save();

        $orientacao = new Orientacao();
        $orientacao->texto = $request->clipping_orientacao;
        $orientacao->clipping_id = $clipping->id;

        $orientacao->save();

        $legislacao = new Legislacao();
        $legislacao->texto = $request->clipping_legislacao;
        $legislacao->clipping_id = $clipping->id;

        $legislacao->save();

        Session::flash('mensagem_sucesso', 'Clipping cadastrado com sucesso!');

        return Redirect::to('clipping/criar');

    }

    public function editar($id){

        $clipping = Clipping::findOrFail($id);
        $orientacao = new Orientacao();
        $orientacao = $orientacao->where('clipping_id', '=', $id);

        return view('pages.criar', [
            'clipping' => $clipping,
            'orientacao' => $orientacao
            ]);

    }

    public function atualizar($id){

        return view('pages.criar');

    }

    public function view($id){

        $clipping = new FullClipping();

        return view('layout.clipping', ['clipping' => $clipping]);

    }

}
