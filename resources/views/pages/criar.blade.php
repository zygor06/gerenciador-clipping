@extends('layouts.default')

@section('content')

    <div class="container">

        <div class="row">

            <div class="col-12 text-center my-5">

                @if(Request::is('*/edit/*'))
                    <h3 class="display-1">Atualize o clipping</h3>
                    <p>Preencha o formulário abaixo para atualizar um clipping existente, e no final clique no botão visualizar.</p>
                    <p>Caso esteja com dificuldades, <a href="{{url('tutorial')}}">clique aqui</a> para ir para o tutorial</p>
                @else
                    <h3 class="display-1">Adicionar um novo clipping</h3>
                    <p>Preencha o formulário abaixo para criar um novo clipping, e no final clique no botão visualizar.</p>
                    <p>Caso esteja com dificuldades, <a href="{{url('tutorial')}}">clique aqui</a> para ir para o tutorial</p>
                @endif


            </div>

        </div>

        <div class="row">

            <div class="col-12">

                <div class="card card-inverse">
                    <div class="card-header text-center" style="background-color: #353535;">
                        @if(Request::is('*/edit/*'))
                            <h3>Atualizar o clipping</h3>
                        @else
                            <h3>Criar novo clipping</h3>
                        @endif

                    </div>

                    <div class="card-block">

                        @if(Session::has('mensagem_sucesso') && Session::has('clipping_id'))
                            <div class="alert alert-success">{{Session::get('mensagem_sucesso')}} - <a target="_blank" href="{{url('clipping/view/' . Session::get('clipping_id'))}}">Visualizar</a></div>
                        @elseif(Session::has('mensagem_sucesso'))
                            <div class="alert alert-success">{{Session::get('mensagem_sucesso')}}</div>
                        @endif

                        @include('layouts/form')

                    </div>

                </div>

            </div>

        </div>

    </div>

    @if(Request::is('*/edit/*'))

    @endif

@stop

@section('text-script')
    <script>
        $(function() {
            $('textarea#orientacao-editor').froalaEditor({
                theme: 'dark',
                zIndex: 2003,
                charCounterMax: 320,
                heightMin: 150,
                heightMax: 200,
                placeholderText: 'Digite aqui as orientações',
                paragraphStyles: {
                    class1: 'Class 1',
                    class2: 'Class 2'
                }
            })

            $('textarea#legislacao-editor').froalaEditor({
                theme: 'dark',
                zIndex: 2003,
                charCounterMax: 320,
                heightMin: 150,
                heightMax: 200,
                placeholderText: 'Digite aqui as legislações'
            })

            $('textarea#noticia-editor').froalaEditor({
                theme: 'dark',
                zIndex: 2003,
                heightMin: 150,
                heightMax: 200,
                placeholderText: 'Digite aqui a descrição da notícia'
            })
        });
    </script>
@stop