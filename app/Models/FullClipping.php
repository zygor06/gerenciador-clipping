<?php

use App\Models\Legislacao;
use App\Models\Clipping;
use App\Models\Noticia;
use App\Models\Orientacao;

class FullClipping{

    public $clipping;
    public $orientacoes;
    public $legislacoes;
    public $noticias;
    public $veja_tambem;

    public function __construct($id){

        $this->clipping = Clipping::findOrFail($id);
        $this->orientacoes = Orientacao::all()->where('clipping_id', '=', $id);
        $this->legislacoes = Legislacao::all()->where('clipping_id', '=', $id);
        $this->noticias = Noticia::all()->where('clipping_id', '=', $id)->where('imagem', 'IS NOT', 'null');
        $this->veja_tambem = Noticia::all()->where('clipping_id', '=', $id)->where('imagem', '=', 'null');

    }

}