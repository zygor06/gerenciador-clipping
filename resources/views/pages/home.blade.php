@extends('layouts.default')

@section('content')

    @include('layouts.carousel')



    <div class="container">

        <div class="row">

            <div class="col-12 text-center my-5">

                <p>A SecexDefesa possui a finalidade de assessorar os relatores em matéria inerente ao
                    controle externo e oferecer subsídios técnicos para o julgamento das contas e apreciação dos demais
                    processos relativos às unidades jurisdicionadas ao Tribunal</p>

            </div>

        </div>

        @include('layouts.lista_clippings')

    </div>

@stop