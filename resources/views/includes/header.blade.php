<nav class="navbar navbar-expand-lg navbar-dark " style="background-color: #2a4070; border-radius:0px;!important;">

    <div class="container">

        <a class="navbar-brand h1 mb-0" href="/">Gerenciador de Clippings</a>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSite">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSite">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link" href="{{url('/')}}">Inicio</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{{url('clipping/criar')}}">Criar</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{{url('clipping')}}">Clippings</a>
                </li>


                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Gerenciador de Conteúdo
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="{{url('noticias')}}">Pesquisa de Notícias</a>
                        <a class="dropdown-item" href="{{url('repositorio')}}">Repositório de Notícias</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="{{url('orientacoes')}}">Orientações</a>
                    </div>
                </li>

            </ul>



            <ul class="navbar-nav navbar-right">
                <!-- Authentication Links -->
                @guest
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('login') }}">Login</a>
                    </li>
                @else
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown" role="button" aria-expanded="false" aria-haspopup="true">
                            {{ Auth::user()->name }} <span class="caret"></span>
                        </a>

                        <ul class="dropdown-menu">
                            <li>
                                <a class="btn" href="{{ route('logout') }}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                                    Sair
                                </a>
                                <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                    {{ csrf_field() }}
                                </form>
                            </li>
                        </ul>
                    </li>
                @endguest
            </ul>
        </div>



    </div>

</nav>