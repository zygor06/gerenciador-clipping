<?php

namespace App\Http\Controllers\Site;

use App\Models\Clipping;
use App\Models\OrientacoesRascunho;
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

    public function salvar(Request $r){

        $orientacao = new OrientacoesRascunho();
        $orientacao->titulo = $r->titulo;
        $orientacao->link = $r->link;

        $tipo = DB::table('tipos')->where('nome', $r->tipo)->get();
        $clipping = DB::table('tb_clipping')->where('numero', $r->numero)->get();

        $orientacao->tipo = $tipo[0]->id;
        $orientacao->clipping_id = $clipping[0]->id;

        $orientacao->save();

        return Redirect::to('orientacoes/criar');
    }

    public function deletar($id){

    }
}
