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

                        <a href="{{url('repositorio/criar')}}" class="btn btn-primary float-right mb-3">Adicionar +</a>

                        <table class="table table-bordered text-right">
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

                                <tr>
                                    <th scope="row"><a href="{{$link->link}}" target="_blank">{{$link->titulo}}</a></th>
                                    <td class="text-center">{{  date('d/m/Y', strtotime($link->data))  }}</td>
                                    @auth
                                        <td class="text-center">
                                            {!! Form::open(['method' => 'DELETE', 'url' => 'repositorio/delete/' . $link->id, 'style' => 'display:inline;', 'class' => 'deletar']) !!}
                                            <button type="submit" class="btn btn-danger">Excluir</button>
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