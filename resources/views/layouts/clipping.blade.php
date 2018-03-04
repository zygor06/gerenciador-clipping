<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>@yield('title')</title>
    <link rel="stylesheet" type="text/css" href="{{asset('css/clipping.css')}}">
</head>
<body>
<page size="A4">
    <div id="header">
        <div id="titulo">
            <span class="info_titulo">info</span> <span class="defesa_seguranca_titulo">defesa</span> <span class="info_titulo">&#38;</span> <span class="defesa_seguranca_titulo">seguran&#231;a</span>
            <div id="white-line"></div>
        </div>
        <div id="dados_publicacao">
            <span class="align_left">Ano @yield('ano') -  N° @yield('numero') - @yield('data')</span>
        </div>

        <div>
            <img class="logo_tcu" src="{{asset('img/tcu.png')}}">
        </div>
        <div class="header_secex">
            <span >SecexDefesa</span>
        </div>
    </div>
    <div id="direita">
        <div class="conteudo-right">
            <h1>Orientações</h1>
             @yield('orientacoes')
        </div>
        <div class="conteudo-right pj">
            <h1>Legislacoes</h1>
            @yield('legislacoes')
        </div>
        <div class="conteudo-right vt">
            <h1>veja tamb&eacute;m</h1>
            @yield('veja_tambem')
        </div>
    </div>
    <div id="main">
        @yield('noticias')
    </div>
    <div id="footer">
        <br>
        <br>
        <span class="footer-center">Email: secexdefesa@tcu.gov.br</span>
        <br>
        <span>Ramal: 7680</span>
        <br>
        <img class="logo_footer" src="{{asset('img/tcu.png')}}">
        <span id="tcu_footer">Tribunal de Contas da Uni&atilde;o</span>
    </div>
</page>
</body>
</html>