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

    public function deletar(){
        try {

            foreach ($this->noticias as  $noticia) {
                Noticia::findOrFail($noticia->id)->delete();
            }
            foreach ($this->veja_tambem as $vt){
                Noticia::findOrFail($vt->id)->delete();
            }

            Orientacao::findOrFail($this->orientacoes->id)->delete();
            Legislacao::findOrFail($this->legislacoes->id)->delete();
            $this->clipping->delete();
        } catch (\Exception $e) {
            echo "Erro ao tentar deletar o clipping de número" . $this->clipping->numero;
        }
    }

}