

@if(Request::is('*/edit/*'))
    {!! Form::model($clipping, ['method'=> 'PATCH','url' =>'clipping/atualizar']) !!}
@else
    {!! Form::open(['url' => 'clipping/salvar']) !!}
@endif

{!! Form::input('text', 'clipping.autor', null, ['class' => 'form-control', 'autofocus', 'placeholder' => 'Nome do Autor']) !!}

<br />

<div class="form-row">
    <div class="col">
        {!! Form::input('text', 'clipping.ano', null, ['class' => 'form-control', 'placeholder' => 'Ano Ex: I']) !!}
    </div>
    <div class="col">
        {!! Form::input('text', 'clipping.numero', null, ['class' => 'form-control', 'placeholder' => 'Numero do clipping Ex: 6']) !!}
    </div>
</div>
<br/>
<hr>

<h3 class="display1 text-center">
    {!! Form::label('noticia_1', 'Notícia 1') !!}
</h3>

{!! Form::input('text', 'clipping.noticia_titulo_1', '', ['class' => 'form-control', 'placeholder' => 'Titulo da noticia 1']) !!}
{!! Form::input('text', 'clipping.noticia_link_1', '', ['class' => 'form-control', 'placeholder' => 'Link da notícia']) !!}
{!! Form::input('text', 'clipping.noticia_imagem_1', '', ['class' => 'form-control', 'placeholder' => 'Link da imagem']) !!}
<br>
{!! Form::textarea('clipping.noticia_descricao_1', '', ['class' => 'form-control', 'id' => 'noticia-editor-1']) !!}
<br />

<h3 class="display1 text-center">
    {!! Form::label('noticia_2', 'Notícia 2') !!}
</h3>

{!! Form::input('text', 'clipping.noticia_titulo_2', '', ['class' => 'form-control', 'placeholder' => 'Titulo da noticia 2']) !!}
{!! Form::input('text', 'clipping.noticia_link_2', '', ['class' => 'form-control', 'placeholder' => 'Link da notícia']) !!}
{!! Form::input('text', 'clipping.noticia_imagem_2', '', ['class' => 'form-control', 'placeholder' => 'Link da imagem']) !!}
<br>
{!! Form::textarea('clipping.noticia_descricao_2', '', ['class' => 'form-control', 'id' => 'noticia-editor-2']) !!}
<br />

<h3 class="display1 text-center">
    {!! Form::label('noticia_3', 'Notícia 3') !!}
</h3>

{!! Form::input('text', 'clipping.noticia_titulo_3', '', ['class' => 'form-control', 'placeholder' => 'Titulo da noticia 3']) !!}
{!! Form::input('text', 'clipping.noticia_link_3', '', ['class' => 'form-control', 'placeholder' => 'Link da notícia']) !!}
{!! Form::input('text', 'clipping.noticia_imagem_3', '', ['class' => 'form-control', 'placeholder' => 'Link da imagem']) !!}
<br>
{!! Form::textarea('clipping.noticia_descricao_3', '', ['class' => 'form-control', 'id' => 'noticia-editor-3']) !!}
<br />

<h3 class="display1 text-center">
    {!! Form::label('noticia_1', 'Notícia 4') !!}
</h3>

{!! Form::input('text', 'clipping.noticia_titulo_4', '', ['class' => 'form-control', 'placeholder' => 'Titulo da noticia 4']) !!}
{!! Form::input('text', 'clipping.noticia_link_4', '', ['class' => 'form-control', 'placeholder' => 'Link da notícia']) !!}
{!! Form::input('text', 'clipping.noticia_imagem_4', '', ['class' => 'form-control', 'placeholder' => 'Link da imagem']) !!}
<br>
{!! Form::textarea('clipping.noticia_descricao_4', '', ['class' => 'form-control', 'id' => 'noticia-editor-4']) !!}
<br />

<hr>

<h3 class="display1 text-center">
    {!! Form::label('orientacao', 'Orientações') !!}
</h3>

{!! Form::textarea('clipping.orientacao', '', ['class' => 'form-control', 'id' => 'orientacao-editor']) !!}

<br />
<hr>

<h3 class="display1 text-center">
    {!! Form::label('orientacao', 'Legislações') !!}
</h3>
{!! Form::textarea('clipping.legislacao', '', ['class' => 'form-control', 'id' => 'legislacao-editor']) !!}

<hr>

<h3 class="display1 text-center">
    {!! Form::label('', 'Veja também') !!}
</h3>

<div class="form-row mb-2">
    <div class="col">
        {!! Form::input('text', 'clipping.titulo_vt_1', '', ['class' => 'form-control', 'placeholder' => 'Titulo da notícia']) !!}
    </div>
    <div class="col">
        {!! Form::input('text', 'clipping.link_vt_1', '', ['class' => 'form-control', 'placeholder' => 'Link da notícia']) !!}
    </div>
</div>

<div class="form-row mb-2">
    <div class="col">
        {!! Form::input('text', 'clipping.titulo_vt_2', '', ['class' => 'form-control', 'placeholder' => 'Titulo da notícia']) !!}
    </div>
    <div class="col">
        {!! Form::input('text', 'clipping.link_vt_2', '', ['class' => 'form-control', 'placeholder' => 'Link da notícia']) !!}
    </div>
</div>

<div class="form-row mb-2">
    <div class="col">
        {!! Form::input('text', 'clipping.titulo_vt_3', '', ['class' => 'form-control', 'placeholder' => 'Titulo da notícia']) !!}
    </div>
    <div class="col">
        {!! Form::input('text', 'clipping.link_vt_3', '', ['class' => 'form-control', 'placeholder' => 'Link da notícia']) !!}
    </div>
</div>

<div class="form-row mb-2">
    <div class="col">
        {!! Form::input('text', 'clipping.titulo_vt_4', '', ['class' => 'form-control', 'placeholder' => 'Titulo da notícia']) !!}
    </div>
    <div class="col">
        {!! Form::input('text', 'clipping.link_vt_4', '', ['class' => 'form-control', 'placeholder' => 'Link da notícia']) !!}
    </div>
</div>

<div class="form-row mb-2">
    <div class="col">
        {!! Form::input('text', 'clipping.titulo_vt_5', '', ['class' => 'form-control', 'placeholder' => 'Titulo da notícia']) !!}
    </div>
    <div class="col">
        {!! Form::input('text', 'clipping.link_vt_5', '', ['class' => 'form-control', 'placeholder' => 'Link da notícia']) !!}
    </div>
</div>

<hr>


<div class="form-row mb-2">
    <div class="col">
        {!! Form::submit('Salvar', ['class' =>'form-control btn-success']) !!}
    </div>
    <div class="col">
        <a href="{{url('clipping/')}}" target="_blank" class="form-control btn-primary text-center">Visualizar</a>
    </div>
</div>

{!! Form::close() !!}