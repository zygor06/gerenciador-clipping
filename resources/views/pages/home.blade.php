@extends('layouts.default')

@section('content')

    @include('layouts.carousel')



    <div class="container">

        <div class="row">

            <div class="col-12 text-center my-5">

                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce egestas leo non elit iaculis, sed varius magna vehicula. Morbi magna mauris, iaculis quis ultricies sed, gravida in massa.</p>

            </div>

        </div>

        <div class="row">

            <div class="col-md-12">

                <div class="card">

                    <div class="card-header ">
                        <h3 class="text-center">Listagem de Clippings</h3>
                    </div>

                    <div class="card-block">

                        <a href="{{url('clipping/criar')}}" class="btn btn-primary float-right mb-3">Adicionar +</a>

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
                                    <td>{{  date('d/m/Y', strtotime($clipping->data))  }}</td>
                                    <td><a href="clipping/{{$clipping->id}}">Visualizar</a></td>
                                    <td><a href="clipping/edit/{{$clipping->id}}">Editar</a></td>
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