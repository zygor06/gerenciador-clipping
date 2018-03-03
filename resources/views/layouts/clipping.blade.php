<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Layout Info Defesa e Segurança</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<page size="A4">
    <div id="header">
        <div id="titulo">
            <span class="info_titulo">info</span> <span class="defesa_seguranca_titulo">defesa</span> <span class="info_titulo">&#38;</span> <span class="defesa_seguranca_titulo">seguran&#231;a</span>
            <div id="white-line"></div>
        </div>
        <div id="dados_publicacao">
            <span class="align_left">Ano @yield('ano') n° @yield('numero') - @yield('data')</span>
        </div>

        <div>
            <img class="logo_tcu" src="tcu.png">
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
            <a href="@yield('link_vt_1')" target="blank">@yield('titulo_vt_1')</a>
            <a href="@yield('link_vt_2')" target="blank">@yield('titulo_vt_2')</a>
            <a href="@yield('link_vt_3')" target="blank">@yield('titulo_vt_3')</a>
            <a href="@yield('link_vt_4')" target="blank">@yield('titulo_vt_4')</a>
            <a href="@yield('link_vt_5')" target="blank">@yield('titulo_vt_5')</a>
        </div>
    </div>
    <div id="main">
        <div class="conteudo">
            <img src="@yield('noticia_img_1')" />
            <h1>@yield('noticia_titulo_1')</h1>
            @yield('noticia_desc_1')<a href="@yield('noticia_link_1')" target="blank">Leia +</a>
        </div>
        <div class="conteudo">
            <img src="@yield('noticia_img_2')" />
            <h1>@yield('noticia_titulo_2')</h1>
            @yield('noticia_desc_2')<a href="@yield('noticia_link_2')" target="blank">Leia +</a>
        </div>
        <div class="conteudo">
            <img src="@yield('noticia_img_3')" />
            <h1>@yield('noticia_titulo_3')</h1>
            @yield('noticia_desc_3')<a href="@yield('noticia_link_3')" target="blank">Leia +</a>
        </div>
        <div class="conteudo">
            <img src="@yield('noticia_img_4')" />
            <h1>@yield('noticia_titulo_4')</h1>
            @yield('noticia_desc_4')<a href="@yield('noticia_link_4')" target="blank">Leia +</a>
        </div>
    </div>
    <div id="footer">
        <br>
        <br>
        <span class="footer-center">Email: secexdefesa@tcu.gov.br</span>
        <br>
        <span>Ramal: 7680</span>
        <br>
        <img class="logo_footer" src="tcu.png">
        <span id="tcu_footer">Tribunal de Contas da Uni&atilde;o</span>
    </div>
</page>
</body>
</html>