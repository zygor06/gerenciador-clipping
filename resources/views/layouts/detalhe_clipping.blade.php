@extends('layouts.clipping')

@section('title')
    {{'Clipping Nº '.$clipping->clipping->numero}}
@stop

@section('ano')
    {{$clipping->clipping->ano}}
@stop

@section('data')

    @php

        $data = $clipping->clipping->data;
        $dia = substr($data, -2);
        $mes = substr($data, -5, 2);

        echo $dia . " de ";

        switch($mes){
            case '01': echo 'Janeiro';      break;
            case '02': echo 'Fevereiro';    break;
            case '03': echo 'Março';        break;
            case '04': echo 'Abril';        break;
            case '05': echo 'Maio';         break;
            case '06': echo 'Junho';        break;
            case '07': echo 'Julho';        break;
            case '08': echo 'Agosto';       break;
            case '09': echo 'Setembro';     break;
            case '10': echo 'Outubro';      break;
            case '11': echo 'Novembro';     break;
            case '12': echo 'Dezembro';     break;
        }

    @endphp
@stop

@section('numero')
    {{$clipping->clipping->numero}}
@stop

@section('legislacoes')
    @php
        echo $clipping->legislacoes->texto
    @endphp
@stop

@section('orientacoes')
    @php
        echo $clipping->orientacoes->texto
    @endphp
@stop

@section('noticias')

    @foreach($clipping->noticias as $noticia)

        <div class="conteudo">
            <img src="{{$noticia->imagem}}" />
            <h1>{{$noticia->titulo}}</h1>
            @php
                echo $noticia->descricao
            @endphp
            <a href="{{$noticia->link}}" target="blank">Leia +</a>
        </div>

    @endforeach
@endsection

@section('veja_tambem')
    @foreach($clipping->veja_tambem as $vt)
        <a href="{{$vt->link}}" target="blank">{{$vt->titulo}}</a>
    @endforeach
@endsection