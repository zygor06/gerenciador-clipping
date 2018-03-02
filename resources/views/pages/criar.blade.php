@extends('layouts.default')

@section('content')

    <div class="container">

        <div class="row">

            <div class="col-12 text-center my-5">

                <h1 class="display-3">Lorem Ipsum dolor</h1>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce egestas leo non elit iaculis, sed varius magna vehicula. Morbi magna mauris, iaculis quis ultricies sed, gravida in massa.</p>

            </div>

        </div>

        <div class="row">

            <div class="col-12 text-center my-5">

                {!! Form::open() !!}

                {!! Form::input('text', 'nome', '', ['class' => 'form-control', 'autofocus', 'placeholder' => 'Nome']) !!}

                {!! Form::close() !!}

            </div>


        </div>

    </div>

@stop