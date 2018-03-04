<nav class="navbar navbar-expand-lg navbar-dark " style="background-color: #2a4070;">

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
                <li class="nav-item">
                    <a class="nav-link" href="{{url('tutorial')}}">Tutorial</a>
                </li>
            </ul>

            <form class="form-inline" action="">
                <input class="form-control mr-2" type="search" placeholder="buscar">
                <button class="btn btn-default" type="submit">Ok</button>
            </form>
        </div>

    </div>

</nav>