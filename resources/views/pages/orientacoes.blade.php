@extends('layouts.default')

@section('content')

    <div class="container my-5">
        <div class="row">

            <div class="col-md-12">

                <div class="card">

                    <div class="card-header text-white" style="background-color: #2A4070;">
                        <h3 class="text-center">Orientações e Legislações</h3>
                    </div>

                    <div class="card-block">

                        <a href="{{url('orientacoes/criar')}}" class="btn btn-primary float-right mb-3">Adicionar +</a>

                        <table class="table table-sm">
                            <thead class="thead-inverse">
                            <tr>
                                @guest
                                    <th class="text-center col-md-3" style="background-color: #2A4070;">TIPO DE NORMA</th>
                                    <th class="text-center col-md-7" style="background-color: #2A4070;">TÍTULO</th>
                                    <th class="text-center col-md-2" style="background-color: #2A4070;">Nº CLIPPING</th>
                                @endguest
                                @auth
                                    <th class="text-center col-md-3" style="background-color: #2A4070;">TIPO DE NORMA</th>
                                    <th class="text-center col-md-5" style="background-color: #2A4070;">TÍTULO</th>
                                    <th class="text-center col-md-2" style="background-color: #2A4070;">Nº CLIPPING</th>
                                    <th class="col-md-2" style="background-color: #2A4070;">&nbsp;</th>
                                @endauth
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($orientacoes as $orientacao)
                                @php
                                    $cor = (App\Models\Clipping::findOrFail($orientacao->clipping_id)->numero % 2 == 1) ? '#F4F6F9' : '#FFFFFF';
                                @endphp
                                <tr style="background-color: {{$cor}};">
                                    @guest
                                        <td class="text-center col-md-3" scope="row">{{App\Models\Tipo::findOrFail($orientacao->tipo)->nome}}</td>
                                        <td class="text-left col-md-7"><a href="{{$orientacao->link}}" target="_blank">{{$orientacao->titulo}}</a></td>
                                        <td class="text-center col-md-2">{{App\Models\Clipping::findOrFail($orientacao->clipping_id)->numero}}</td>
                                    @endguest
                                    @auth
                                        <td class="text-center col-md-3" scope="row">{{$clipping->numero}}</td>
                                        <td class="text-left col-md-5">{{$clipping->autor}}</td>
                                        <td class="text-center col-md-2">{{$clipping->ano}}</td>
                                        <td class="text-center col-md-2"><a href="{{url('clipping/delete/'.$clipping->id)}}">Excluir</a></td>
                                    @endauth
                                </tr>

                            @endforeach
                            </tbody>

                        </table>

                    </div>

                </div>

            </div>

        </div>
    </div>

@stop