@extends('layouts.default')

@section('content')

    @include('layouts.carousel')



    <div class="container">

        <div class="row">

            <div class="col-12 text-center my-5">

                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce egestas leo non elit iaculis, sed varius magna vehicula. Morbi magna mauris, iaculis quis ultricies sed, gravida in massa.</p>

            </div>

        </div>

        @include('layouts.lista_clippings')

    </div>

@stop