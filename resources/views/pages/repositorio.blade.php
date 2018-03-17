@extends('layouts.default')

@section('content')

    <div class="container my-5">
        <div class="row">

            <div class="col-md-12">

                <div class="card">

                    <div class="card-header ">
                        <h3 class="text-center">Repositório de Notícias</h3>
                    </div>

                    <div class="card-block">

                        @auth
                            <a href="{{url('repositorio/deletar_existente')}}" class="btn btn-danger mb-3">Deletar links publicados</a>
                        @endauth
                        <a href="{{url('repositorio/criar')}}" class="btn btn-primary float-right mb-3">Adicionar +</a>

                        <table class="table table-bordered table-sm text-right">
                            <thead class="thead-inverse">
                            <tr>
                                <th class="text-center">Notícia</th>
                                <th class="text-center">Data</th>
                                @auth
                                    <th></th>
                                @endauth
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($links as $link)

                                @php
                                    if($link->tipo == 'defesa'){
                                        $cor = '#DAEEC0';
                                        $cor_texto = '#54732C';
                                    }else{
                                        $cor = '#D4EBF6';
                                        $cor_texto = '#397A99';
                                    }
                                @endphp

                                <tr style="background-color: {{$cor}};">
                                    <td class="text-left pl-4"><a style="color:{{$cor_texto}};" href="{{$link->link}}" target="_blank">{{$link->titulo}}</a></td>
                                    <td style="color:{{$cor_texto}};" class="text-center">{{  date('d/m/Y', strtotime($link->data))  }}</td>
                                    @auth
                                        <td class="text-center">
                                            {!! Form::open(['method' => 'DELETE', 'url' => 'repositorio/delete/' . $link->id, 'style' => 'display:inline;', 'class' => 'deletar']) !!}
                                                <button type="submit" class="btn btn-danger btn-sm">Excluir</button>
                                            {!! Form::close() !!}
                                        </td>
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