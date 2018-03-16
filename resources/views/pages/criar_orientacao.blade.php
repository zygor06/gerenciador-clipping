@extends('layouts.default')

@section('content')


    @php
        $numero = isset($orientacao) ? \App\Models\Clipping::findOrFail($orientacao->clipping_id)->numero : "";
    @endphp

    <div class="container">

        <div class="row mt-5">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header text-center text-white" style="background-color: #2A4070">
                        <h5>Criação de Orientação</h5>
                    </div>
                    <div class="card-body">
                        @if(Request::is('*/edit/*'))
                            {!! Form::open(['method'=> 'PATCH','url' =>'orientacoes/'.$orientacao->id]) !!}
                        @else
                            {!! Form::open(['url' => 'orientacoes/salvar']) !!}
                        @endif
                        <div class="form-row">
                            <div class="form-group col-md-4">
                                <label for="inputState">Tipo de Norma</label>
                                <select name="tipo" id="inputState" class="form-control">
                                    @if(Request::is('*/edit/*'))
                                        @foreach($tipos as $tipo)[
                                        @if($tipo->id == $orientacao->tipo)
                                            <option selected>{{$tipo->nome}}</option>
                                        @else
                                            <option>{{$tipo->nome}}</option>
                                        @endif
                                        @endforeach
                                    @else
                                        <option selected>Escolher...</option>
                                        @foreach($tipos as $tipo)
                                            <option>{{$tipo->nome}}</option>
                                        @endforeach

                                    @endif
                                </select>
                            </div>
                        </div>

                        <div class="form-group">
                            <a class="btn btn-success" href="{{ url('orientacoes/novaNorma/' . (isset($orientacao->id) ? $orientacao->id : '0'))}}">Inserir tipo de norma</a>
                        </div>
                        <div class="form-group">
                            <label for="inputAddress">Número do Clipping</label>
                            <input value="{{$numero}}" name="numero" type="number" class="form-control" required="true" placeholder="Informe o número do clipping">
                        </div>
                        <div class="form-group">
                            <label for="inputAddress">Titulo</label>
                            <input value="{{isset($orientacao->titulo) ? $orientacao->titulo : ''}}" name="titulo" type="text" class="form-control" required="true" placeholder="Informe o titulo da orientação">
                        </div>
                        <div class="form-group">
                            <label for="inputAddress">Link</label>
                            <input value="{{isset($orientacao->link) ? $orientacao->link : ''}}" name="link" type="text" class="form-control" required="true" placeholder="Informe o link da orientação">
                        </div>

                        <button type="submit" class="btn btn-primary">Inserir orientação</button>
                        {!! Form::close() !!}
                    </div>
                </div>
            </div>
        </div>

    </div>

@stop