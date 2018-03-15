@extends('layouts.default')

@section('content')

    <div class="container">

        <div class="row mt-5">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header text-center text-white" style="background-color: #2A4070">
                        <h5>Criação de Orientação</h5>
                    </div>
                    <div class="card-body">
                        {!! Form::open(['url' => 'orientacoes/salvar']) !!}
                        <div class="form-row">
                            <div class="form-group col-md-4">
                                <label for="inputState">Tipo de Norma</label>
                                <select name="tipo" id="inputState" class="form-control">
                                    <option selected>Escolher...</option>
                                    @foreach($tipos as $tipo)
                                        <option>{{$tipo->nome}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputAddress">Número do Clipping</label>
                            <input name="numero" type="number" class="form-control" required="true" placeholder="Informe o número do clipping">
                        </div>
                        <div class="form-group">
                            <label for="inputAddress">Titulo</label>
                            <input name="titulo" type="text" class="form-control" required="true" placeholder="Informe o titulo da orientação">
                        </div>
                        <div class="form-group">
                            <label for="inputAddress">Link</label>
                            <input name="link" type="text" class="form-control" required="true" placeholder="Informe o link da orientação">
                        </div>

                        <button type="submit" class="btn btn-primary">Inserir termo</button>
                        {!! Form::close() !!}
                    </div>
                </div>
            </div>
        </div>

    </div>

@stop