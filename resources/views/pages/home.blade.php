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

            <table class="table table-bordered">
                <thead class="thead-inverse">
                    <tr>
                        <th>#</th>
                        <th>Autor</th>
                        <th>Numero</th>
                        <th>Ano</th>
                        <th>Data de Criação</th>
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($clippings as $clipping)

                    <tr>
                        <th scope="row">{{$clipping->id}}</th>
                        <td>{{$clipping->autor}}</td>
                        <td>{{$clipping->numero}}</td>
                        <td>{{$clipping->ano}}</td>
                        <td>{{$clipping->data}}</td>
                        <td><a href="clipping/{{$clipping->id}}">Visualizar</a></td>
                        <td><a href="clipping/edit/{{$clipping->id}}">Editar</a></td>
                    </tr>

                    @endforeach
                </tbody>
            </table>

        </div>

    </div>

@stop