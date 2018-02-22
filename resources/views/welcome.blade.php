<!doctype html>
<html lang="{{ app()->getLocale() }}">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="{{ asset('node_modules/bootstrap/compiled/bootstrap.css')}}">

        <title>Gerenciador de clippings</title>
    </head>
    <body>

        <nav class="navbar navbar-expand-lg navbar-dark bg-primary">

            <div class="container">

                <a class="navbar-brand h1 mb-0" href="#">Gerenciador de Clippings</a>

                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSite">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSite">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="#">Inicio</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Notícias</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Criar +</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Tutorial</a>
                        </li>
                    </ul>

                    <form class="form-inline" action="">
                        <input class="form-control mr-2" type="search" placeholder="buscar">
                        <button class="btn btn-default" type="submit">Ok</button>
                    </form>
                </div>

            </div>

        </nav>

        <div id="carouselSite" class="carousel slide" data-ride="carousel">

            <ol class="carousel-indicators">
                <li data-target="#carouselSite" data-slide-to="0" class="active"></li>
                <li data-target="#carouselSite" data-slide-to="1"></li>
                <li data-target="#carouselSite" data-slide-to="2"></li>
            </ol>

            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="{{asset('img/slide1.png')}}" alt="imagem" class="img-fluid d-block">

                    <div class="carousel-caption d-none d-md-block">
                        <h3>Secex Defesa</h3>
                        <p class="lead">Mauris dictum, nulla sed placerat sodales, diam augue solluictiun dui, ut consectourur neque quam vita lorum</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="{{asset('img/slide2.png')}}" alt="imagem" class="img-fluid d-block">
                    <div class="carousel-caption d-none d-md-block">
                        <h3>Segurança Publica</h3>
                        <p class="lead">Mauris dictum, nulla sed placerat sodales, diam augue solluictiun dui, ut consectourur neque quam vita lorum</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="{{asset('img/slide3.png')}}" alt="imagem" class="img-fluid d-block">
                    <div class="carousel-caption d-none d-md-block">
                        <h3>Defesa Nacional</h3>
                        <p class="lead">Mauris dictum, nulla sed placerat sodales, diam augue solluictiun dui, ut consectourur neque quam vita lorum</p>
                    </div>
                </div>
            </div>

        </div>


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


        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="{{asset('node_modules/jquery/dist/jquery.js')}}"></script>
        <script src="{{asset('node_modules/popper.js/dist/umd/popper.js')}}"> </script>
        <script src="{{asset('node_modules/bootstrap/dist/js/bootstrap.js')}}"></script>
    </body>
</html>