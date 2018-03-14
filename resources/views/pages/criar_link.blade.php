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
                        {!! Form::open(['url' => 'repositorio/salvar']) !!}
                        <div class="form-group">
                            <label for="inputAddress">Título da Notícia</label>
                            <input name="titulo" type="text" class="form-control" id="inputAddress" required="true" placeholder="Informe o título da notícia">
                        </div>
                        <div class="form-group">
                            <label for="inputAddress">Link da Notícia</label>
                            <input name="link" type="text" class="form-control mb-3" id="inputAddress" required="true" placeholder="Informe o link da pesquisa">
                            {!! Form::date('data', isset($clipping) ? $clipping->clipping->data : null, ['class' => 'form-control', 'required']) !!}
                        </div>



                        <button type="submit" class="btn btn-primary">Inserir link</button>
                        {!! Form::close() !!}
                    </div>
                </div>
            </div>
        </div>

    </div>


@stop