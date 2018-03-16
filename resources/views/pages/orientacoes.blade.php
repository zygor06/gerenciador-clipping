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

                        <a href="{{url('orientacoes/atualizar_publicadas')}}" class="btn btn-success mb-3">Adicionar orientações publicadas</a>
                        <a href="{{url('orientacoes/criar')}}" class="btn btn-primary float-right mb-3">Adicionar +</a>

                        <table class="table table-sm">

                                <tr style="background-color: #2A4070; color:white;">
                                    @guest
                                        <th class="text-center col-md-3">TIPO DE NORMA</th>
                                        <th class="text-center col-md-6">TÍTULO</th>
                                        <th class="text-center col-md-2">Nº CLIPPING</th>
                                        <th class="text-center col-md-1"></th>
                                    @endguest
                                    @auth
                                        <th class="text-center col-md-3">TIPO DE NORMA</th>
                                        <th class="text-center col-md-5">TÍTULO</th>
                                        <th class="text-center col-md-2">Nº Clipping</th>
                                        <th class="text-center col-md-1"></th>
                                        <th class="col-md-1">&nbsp;</th>
                                    @endauth
                                </tr>
                            <tbody>
                            @foreach($orientacoes as $orientacao)
                                @php
                                    if($orientacao->status == 1){
                                        $cor = (App\Models\Clipping::findOrFail($orientacao->clipping_id)->numero % 2 == 1) ? '#F4F6F9' : '#FFFFFF';
                                    }else{
                                        $cor = '#FFBCBC';
                                    }

                                @endphp
                                <tr style="background-color: {{$cor}};">
                                    @guest
                                        <td class="text-center col-md-3" scope="row">{{App\Models\Tipo::findOrFail($orientacao->tipo)->nome}}</td>
                                        <td class="text-left col-md-6"><a href="{{$orientacao->link}}" target="_blank">{{$orientacao->titulo}}</a></td>
                                        <td class="text-center col-md-2">{{App\Models\Clipping::findOrFail($orientacao->clipping_id)->numero}}</td>
                                        <td class="text-center col-md-1"><a class="btn btn-success" href="{{url('orientacoes/edit/'.$orientacao->id)}}">Editar</a></td>
                                    @endguest
                                    @auth
                                        <td class="text-center col-md-3" scope="row">{{App\Models\Tipo::findOrFail($orientacao->tipo)->nome}}</td>
                                        <td class="text-left col-md-5"><a href="{{$orientacao->link}}" target="_blank">{{$orientacao->titulo}}</a></td>
                                        <td class="text-center col-md-2">{{App\Models\Clipping::findOrFail($orientacao->clipping_id)->numero}}</td>
                                        <td class="text-center col-md-1"><a class="btn btn-success" href="{{url('orientacoes/edit/'.$orientacao->id)}}">Editar</a></td>
                                        {!! Form::open(['method' => 'DELETE', 'url' => 'orientacoes/delete/' . $orientacao->id, 'style' => 'display:inline;', 'class' => 'deletar']) !!}
                                            <td class="text-center col-md-1"><button type="submit" class="float-right btn btn-danger">Excluir</button></td>
                                        {!! Form::close() !!}
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