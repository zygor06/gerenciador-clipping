@extends('layouts.default')

@section('content')

    <div class="container">

        <div class="row">

            <div class="col-12 text-center my-5">

                <h3 class="display-1">Adicionar um novo clipping</h3>
                <p>Preencha o formulário abaixo para criar um novo clipping, e no final clique no botão visualizar.</p>
                <p>Caso esteja com dificuldades, <a href="{{url('tutorial')}}">clique aqui</a> para ir para o tutorial</p>

            </div>

        </div>

        <div class="row">

            <div class="col-12">

                <div class="card card-inverse">
                    <div class="card-header text-center" style="background-color: #353535;">
                        <h3>Criar novo clipping</h3>
                    </div>

                    <div class="card-block">

                        @if(Session::has('mensagem_sucesso'))
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
                charCounterMax: 140,
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
                charCounterMax: 140,
                heightMin: 150,
                heightMax: 200,
                placeholderText: 'Digite aqui as legislações'
            })

            $('textarea#noticia-editor-1').froalaEditor({
                theme: 'dark',
                zIndex: 2003,
                charCounterMax: 140,
                heightMin: 150,
                heightMax: 200,
                placeholderText: 'Digite aqui a descrição da notícia 1'
            })

            $('textarea#noticia-editor-2').froalaEditor({
                theme: 'dark',
                zIndex: 2003,
                charCounterMax: 140,
                heightMin: 150,
                heightMax: 200,
                placeholderText: 'Digite aqui a descrição da notícia 2'
            })

            $('textarea#noticia-editor-3').froalaEditor({
                theme: 'dark',
                zIndex: 2003,
                charCounterMax: 140,
                heightMin: 150,
                heightMax: 200,
                placeholderText: 'Digite aqui a descrição da notícia 3'
            })

            $('textarea#noticia-editor-4').froalaEditor({
                theme: 'dark',
                zIndex: 2003,
                charCounterMax: 140,
                heightMin: 150,
                heightMax: 200,
                placeholderText: 'Digite aqui a descrição da notícia 4'
            })
        });
    </script>
@stop