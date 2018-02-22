@extends('layouts.default')

@section('content')

    @include('layouts.carousel')

    <div class="container">

        <div class="row">

            <div class="col-12 text-center my-5">

                <h1 class="display-3">Lorem Ipsum dolor</h1>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce egestas leo non elit iaculis, sed varius magna vehicula. Morbi magna mauris, iaculis quis ultricies sed, gravida in massa.</p>

            </div>

        </div>

        <div class="row">

            <div class="col-3">

                <nav id="navbarVertical" class="navbar navbar-light bg-light">

                    <nav class="nav nav-pills flex-column">

                        <a class="nav-link" href="#item1">Cadastro</a>
                        <a class="nav-link" href="#item2">Atualizar</a>
                        <a class="nav-link" href="#item3">Deletar</a>

                    </nav>

                </nav>

            </div>

            <div class="col-9">



            </div>

        </div>

    </div>

@stop