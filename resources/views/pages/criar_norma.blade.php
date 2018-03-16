@extends('layouts.default')

@section('content')

    <div class="container">

        <div class="row mt-5">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header text-center text-white" style="background-color: #2A4070">
                        <h5>Criação de Norma</h5>
                    </div>
                    <div class="card-body">
                        @if(Request::is('*/edit/*'))
                            {!! Form::open(['method'=> 'PATCH','url' =>'norma/'.$orientacao->id]) !!}
                        @else
                            {!! Form::open(['url' => 'norma/salvar']) !!}
                        @endif

                        <div class="form-group">
                            <label for="inputAddress">Nome da norma</label>
                            <input value="{{isset($norma->nome) ? $norma->nome : ''}}" name="nome" type="text" class="form-control" required="true" placeholder="Informe o nome da norma">
                            <input value="{{$id}}" name="orientacao_id" hidden>
                        </div>

                        <button type="submit" class="btn btn-primary">Inserir norma</button>
                        {!! Form::close() !!}
                    </div>
                </div>
            </div>
        </div>

    </div>

@stop