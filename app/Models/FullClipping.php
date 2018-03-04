<?php

namespace App\Models;

use App\Models\Legislacao;
use App\Models\Clipping;
use App\Models\Noticia;
use App\Models\Orientacao;
use DB;

class FullClipping{

    public $clipping;
    public $orientacoes;
    public $legislacoes;
    public $noticias;
    public $veja_tambem;

    public function __construct($id){

        $this->clipping = Clipping::findOrFail($id);
        $this->orientacoes = DB::table('tb_orientacao')->where('clipping_id', $id)->first();
        $this->legislacoes = DB::table('tb_legislacao')->where('clipping_id', $id)->first();
        $this->noticias = DB::table('tb_noticia')->where('clipping_id', $id)->where('imagem', '<>', 'null')->get();
        $this->veja_tambem = DB::table('tb_noticia')->where('clipping_id', $id)->whereNull('imagem')->get();

    }

}