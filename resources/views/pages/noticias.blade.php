@extends('layouts.default')

@section('content')

    <div class="container">

        <div class="row mt-5">
            <div class="col-md-12 text-center">
                <h4 class="display-1">Termos de pesquisa</h4>
                <p>Aqui você poderá gerenciar os termos de pesquisa que irão compor o clipping</p>
                <p>Para utilizar basta selecionar quais termos deseja pesquisar e clicar no botão "Pesquisar" no final da lista</p>
                <p>Caso queria adicionar um novo termo de pesquisa clique no botão abaixo</p>
                <a href="{{url('noticias/create')}}" class="btn btn-primary">Criar novo termo</a>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6 mt-5">
                <div class="card">
                    <div class="card-header text-center text-white" style="background-color: #1659bf;">
                        Segurança Pública
                    </div>
                    <div class="card-body">
                        <div class="list-group">

                            @foreach($segurancas as $seguranca)
                                <div class="list-group-item pull-left">
                                    <input type="checkbox" id="seguranca_{{$loop->index}}" value="{{$seguranca->texto}}" />
                                    <label for="seguranca_{{$loop->index}}">
                                        {{$seguranca->texto}}
                                    </label>
                                    @auth
                                        {!! Form::open(['method' => 'DELETE', 'url' => 'noticias/delete/' . $seguranca->id, 'style' => 'display:inline;', 'class' => 'deletar']) !!}
                                        <button type="submit" class="float-right btn btn-danger">Excluir</button>
                                        {!! Form::close() !!}
                                    @endauth
                                </div>
                            @endforeach

                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 mt-5">
                <div class="card">
                    <div class="card-header text-center text-white" style="background-color: #1f752a;">
                        Defesa Nacional
                    </div>
                    <div class="card-body">
                        <div class="list-group">

                            @foreach($defesas as $defesa)
                                <div class="list-group-item">
                                    <input type="checkbox" id="defesa_{{$loop->index}}" value="{{$defesa->texto}}" />
                                    <label for="defesa_{{$loop->index}}">
                                        {{$defesa->texto}}
                                    </label>
                                    @auth
                                        {!! Form::open(['method' => 'DELETE', 'url' => 'noticias/delete/' . $defesa->id, 'style' => 'display:inline;', 'class' => 'deletar']) !!}
                                            <button type="submit" class="float-right btn btn-danger">Excluir</button>
                                        {!! Form::close() !!}
                                    @endauth
                                </div>
                            @endforeach
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <hr>
        <div class="row">
            <div class="col-md-12 text-center">
                <a href="#" id="btn_pesquisa_noticias" class="btn btn-primary">Pesquisar</a>
            </div>
        </div>
    </div>

@stop