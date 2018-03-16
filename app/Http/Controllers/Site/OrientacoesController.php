<?php

namespace App\Http\Controllers\Site;

use App\Models\Clipping;
use App\Models\Orientacao;
use App\Models\OrientacoesRascunho;
use App\Models\Tipo;
use DB;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Redirect;

class OrientacoesController extends Controller
{
    //
    public function index(){
        $orientacoes = DB::table('orientacoes_rascunhos')->orderBy('clipping_id')->get();
        $tipos = DB::table('tipos')->get();
        $clippings = DB::table('tb_clipping')->get();

        return view('pages.orientacoes',
            [
                'orientacoes'=>$orientacoes,
                'tipos' => $tipos,
                'clippings' => $clippings
            ]
        );
    }

    public function criar(){
        $clippings = DB::table('tb_clipping')->orderBy('numero')->get();
        $tipos = DB::table('tipos')->orderBy('nome')->get();
        return view('pages.criar_orientacao', ['clippings' => $clippings, 'tipos'=> $tipos]);
    }

    public function editar($id){
        $clippings = DB::table('tb_clipping')->orderBy('numero')->get();
        $tipos = DB::table('tipos')->orderBy('nome')->get();
        $orientacao = OrientacoesRascunho::findOrFail($id);

        return view('pages.criar_orientacao', [
            'clippings' => $clippings,
            'tipos'=> $tipos,
            'orientacao' => $orientacao
        ]);
    }

    public function salvar(Request $r){

        $orientacao = new OrientacoesRascunho();
        $orientacao->titulo = $r->titulo;
        $orientacao->link = $r->link;
        $orientacao->status = 1;

        $tipo = DB::table('tipos')->where('nome', $r->tipo)->get();
        $clipping = DB::table('tb_clipping')->where('numero', $r->numero)->get();

        $orientacao->tipo = $tipo[0]->id;
        $orientacao->clipping_id = $clipping[0]->id;

        $orientacao->save();

        return Redirect::to('orientacoes');
    }

    public function update(Request $r, $id){
        $orientacao = OrientacoesRascunho::findOrFail($id);
        $orientacao->titulo = $r->titulo;
        $orientacao->link = $r->link;
        $orientacao->status = 1;

        $tipo = DB::table('tipos')->where('nome', $r->tipo)->get();
        $clipping = DB::table('tb_clipping')->where('numero', $r->numero)->get();

        $orientacao->tipo = $tipo[0]->id;
        $orientacao->clipping_id = $clipping[0]->id;

        $orientacao->update();

        return Redirect::to('orientacoes');
    }

    public function deletar($id){

        $orientacao = OrientacoesRascunho::findOrFail($id);
        $orientacao->delete();

        return Redirect::to('orientacoes');

    }

    public function verificar(){

        $dom = new \DOMDocument();
        $clippings = Clipping::all();
        $orientacoes = Orientacao::all();
        $orientacoes_publicadas = OrientacoesRascunho::all();

        foreach ($orientacoes as $orientacao){
            $dom->loadHTML($orientacao->texto);
            $links = $dom->getElementsByTagName('a');

            $cont = 0;

            foreach ($links as $link){

                foreach ($orientacoes_publicadas as $publicada){

                    if($link->getAttribute('href') == $publicada->link){
                        $cont ++;
                    }

                }

                if($cont == 0){

                    $or = new OrientacoesRascunho();
                    $or->titulo = $link->nodeValue;
                    $or->link = $link->getAttribute('href');
                    $or->tipo = 11;
                    $or->status = 0;
                    $or->clipping_id = $orientacao->clipping_id;
                    $or->save();

                }

            }

        }

        return Redirect::to('orientacoes');
    }

    public function nova_norma($id){
        return view('pages.criar_norma', ['id' => $id]);
    }

    public function salvar_norma(Request $request){

        $tipo = new Tipo();
        $tipo->nome = $request->nome;
        $tipo->save();

        if($request->orientacao_id == 0){
            return Redirect::to('orientacoes/criar');
        }else{
            return Redirect::to('orientacoes/edit/'.$request->orientacao_id);
        }

    }
}
