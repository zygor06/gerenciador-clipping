@extends('layouts.default')

@section('content')


    <div class="container">

        <div class="row mt-5">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header text-center text-white" style="background-color: #2A4070">
                        <h5>Criação de Termo de Pesquisa</h5>
                    </div>
                    <div class="card-body">
                        {!! Form::open(['url' => 'noticias/store']) !!}
                            <div class="form-group">
                                <label for="inputAddress">Termo da Pesquisa</label>
                                <input name="texto" type="text" class="form-control" id="inputAddress" required="true" placeholder="Informe o termo da pesquisa">
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-4">
                                    <label for="inputState">Categoria</label>
                                    <select name="tipo" id="inputState" class="form-control">
                                        <option selected>Escolher...</option>
                                        <option>Segurança Pública</option>
                                        <option>Defesa Nacional</option>
                                    </select>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary">Inserir link</button>
                        {!! Form::close() !!}
                    </div>
                </div>
            </div>
        </div>

    </div>


@stop