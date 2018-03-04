<?php

namespace App\Http\Controllers\Site;

use App\Models\Clipping;
use App\Models\Legislacao;
use App\Models\Noticia;
use App\Models\Orientacao;
use App\Models\FullClipping;
use DB;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Mockery\Matcher\Not;
use Redirect;
use Session;

class ClippingController extends Controller
{
    //
    public function criar(){
        return view('pages.criar');
    }

    public function clipping(){
        $clippings = DB::table('tb_clipping')->orderBy('numero')->get();
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

        $veja_tambem_1 = new Noticia();
        $veja_tambem_1->titulo = $request->clipping_titulo_vt_1;
        $veja_tambem_1->link = $request->clipping_link_vt_1;
        $veja_tambem_1->clipping_id = $clipping->id;

        $veja_tambem_1->save();

        $veja_tambem_2 = new Noticia();
        $veja_tambem_2->titulo = $request->clipping_titulo_vt_2;
        $veja_tambem_2->link = $request->clipping_link_vt_2;
        $veja_tambem_2->clipping_id = $clipping->id;

        $veja_tambem_2->save();

        $veja_tambem_3 = new Noticia();
        $veja_tambem_3->titulo = $request->clipping_titulo_vt_3;
        $veja_tambem_3->link = $request->clipping_link_vt_3;
        $veja_tambem_3->clipping_id = $clipping->id;
        $veja_tambem_3->save();

        $veja_tambem_4 = new Noticia();
        $veja_tambem_4->titulo = $request->clipping_titulo_vt_4;
        $veja_tambem_4->link = $request->clipping_link_vt_4;
        $veja_tambem_4->clipping_id = $clipping->id;
        $veja_tambem_4->save();

        $veja_tambem_5 = new Noticia();
        $veja_tambem_5->titulo = $request->clipping_titulo_vt_5;
        $veja_tambem_5->link = $request->clipping_link_vt_5;
        $veja_tambem_5->clipping_id = $clipping->id;
        $veja_tambem_5->save();


        Session::flash('mensagem_sucesso', 'Clipping cadastrado com sucesso!');

        return Redirect::to('clipping/criar');

    }

    public function editar($id){

        $clipping = new FullClipping($id);

        return view('pages.criar', [
            'clipping' => $clipping
            ]);

    }

    public function atualizar($id, Request $request){

        $clipping = new FullClipping($id);
        $clipping->clipping->autor = $request->clipping_autor;
        $clipping->clipping->numero = $request->clipping_numero;
        $clipping->clipping->ano = $request->clipping_ano;
        $clipping->clipping->data = now();

        $clipping->clipping->update();

        $noticias = $clipping->noticias;

        foreach($noticias as $nt){

            $noticia = Noticia::findOrFail($nt->id);
            $noticia->titulo = $request->clipping_noticia_titulo_1;
            $noticia->descricao = $request->clipping_noticia_descricao_1;
            $noticia->imagem = $request->clipping_noticia_imagem_1;
            $noticia->link = $request->clipping_noticia_link_1;
            $noticia->clipping_id = $clipping->clipping->id;

            $noticia->update();
        }

        $orientacao = Orientacao::findOrFail($clipping->orientacoes->id);
        $orientacao->texto = $request->clipping_orientacao;
        $orientacao->clipping_id = $clipping->clipping->id;

        $orientacao->update();

        $legislacao = Legislacao::findOrFail($clipping->legislacoes->id);
        $legislacao->texto = $request->clipping_legislacao;
        $legislacao->clipping_id = $clipping->clipping->id;

        $legislacao->update();

        $veja_tambem = $clipping->veja_tambem;

        foreach($veja_tambem as $vtbm){

            $vt = Noticia::findOrFail($vtbm->id);
            $vt->titulo = $request->clipping_titulo_vt_1;
            $vt->link = $request->clipping_link_vt_1;
            $vt->clipping_id = $clipping->clipping->id;

            $vt->update();
        }

        Session::flash('mensagem_sucesso', 'Clipping atualizado com sucesso!');

        return Redirect::to('clipping/edit/'.$id);

    }

    public function view($id){

        $clipping = new FullClipping($id);

        return view('layouts.detalhe_clipping', ['clipping' => $clipping]);

    }

}
