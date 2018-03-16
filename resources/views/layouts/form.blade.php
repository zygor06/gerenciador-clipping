

@if(Request::is('*/edit/*'))
    {!! Form::model($clipping, ['method'=> 'PATCH','url' =>'clipping/'.$clipping->clipping->id]) !!}
@else
    {!! Form::open(['url' => 'clipping/salvar']) !!}
@endif

{!! Form::input('text', 'clipping.autor',  isset($clipping) ? $clipping->clipping->autor : null, ['class' => 'form-control', 'autofocus', 'placeholder' => 'Nome do Autor', 'required' => 'true', 'maxlength'=> 255]) !!}

<br />

<div class="form-row">
    <div class="col">
        {!! Form::number('clipping.ano', isset($clipping) ? $clipping->clipping->ano : null, ['class' => 'form-control', 'placeholder' => 'Ano Ex: I', 'required' => 'true']) !!}
    </div>
    <div class="col">
        {!! Form::number('clipping.numero', isset($clipping) ? $clipping->clipping->numero : null, ['class' => 'form-control', 'placeholder' => 'Numero do clipping Ex: 6', 'required' => 'true']) !!}
    </div>
</div>
<br/>
<hr>

@php

    $n_atual = 1;
    $v_atual = 1;

@endphp

@if(isset($clipping))
    @foreach($clipping->noticias as $noticia)

        <h3 class="display1 text-center">
            {!! Form::label('noticia_'.$n_atual, 'Notícia '.$n_atual) !!}
        </h3>

        {!! Form::input('text', 'clipping.noticia_titulo_'.$n_atual, $noticia->titulo, ['class' => 'form-control', 'placeholder' => 'Titulo da noticia '.$n_atual, 'required' => 'true', 'maxlength'=> 255]) !!}
        {!! Form::input('text', 'clipping.noticia_link_'.$n_atual, $noticia->link, ['class' => 'form-control', 'placeholder' => 'Link da notícia', 'required' => 'true', 'maxlength'=> 255]) !!}
        {!! Form::input('text', 'clipping.noticia_imagem_'.$n_atual, $noticia->imagem, ['class' => 'form-control', 'placeholder' => 'Link da imagem', 'required' => 'true', 'maxlength'=> 255]) !!}
        <br>
        {!! Form::textarea('clipping.noticia_descricao_'.$n_atual, $noticia->descricao, ['class' => 'form-control', 'id' => 'noticia-editor', 'required' => 'true']) !!}
        <br />

        @php
            $n_atual ++;
        @endphp

    @endforeach

@else
    @for($i = 1; $i < 5; $i++)

        <h3 class="display1 text-center">
            {!! Form::label('noticia_'.$i, 'Notícia '.$i) !!}
        </h3>

        {!! Form::input('text', 'clipping.noticia_titulo_'.$i, '', ['class' => 'form-control', 'placeholder' => 'Titulo da noticia '.$i, 'required' => 'true', 'maxlength'=> 255]) !!}
        {!! Form::input('text', 'clipping.noticia_link_'.$i, '', ['class' => 'form-control', 'placeholder' => 'Link da notícia', 'required' => 'true', 'maxlength'=> 255]) !!}
        {!! Form::input('text', 'clipping.noticia_imagem_'.$i, '', ['class' => 'form-control', 'placeholder' => 'Link da imagem', 'required' => 'true', 'maxlength'=> 255]) !!}
        <br>
        {!! Form::textarea('clipping.noticia_descricao_'.$i, '', ['class' => 'form-control', 'id' => 'noticia-editor', 'required' => 'true']) !!}
        <br />

    @endfor
@endif

<hr>

<h3 class="display1 text-center">
    {!! Form::label('orientacao', 'Orientações') !!}
</h3>

{!! Form::textarea('clipping.orientacao', isset($clipping) ? $clipping->orientacoes->texto : null, ['class' => 'form-control', 'id' => 'orientacao-editor', 'required' => 'true']) !!}

<br />
<hr>

<h3 class="display1 text-center">
    {!! Form::label('orientacao', 'Deliberações') !!}
</h3>
{!! Form::textarea('clipping.legislacao', isset($clipping) ? $clipping->legislacoes->texto : null, ['class' => 'form-control', 'id' => 'legislacao-editor', 'required' => 'true']) !!}

<hr>

<h3 class="display1 text-center">
    {!! Form::label('', 'Veja também') !!}
</h3>

@if(isset($clipping))
    @foreach($clipping->veja_tambem as $vt)
        <div class="form-row mb-2">
            <div class="col">
                {!! Form::input('text', 'clipping.titulo_vt_'.$v_atual, $vt->titulo, ['class' => 'form-control', 'placeholder' => 'Titulo da notícia', 'required' => 'true', 'maxlength'=> 255]) !!}
            </div>
            <div class="col">
                {!! Form::input('text', 'clipping.link_vt_'.$v_atual, $vt->link, ['class' => 'form-control', 'placeholder' => 'Link da notícia', 'required' => 'true', 'maxlength'=> 255]) !!}
            </div>
        </div>

        @php
            $v_atual ++;
        @endphp

    @endforeach
@else
    @for($i = 1; $i < 6; $i++)
        @if($i < 3)
            <div class="form-row mb-2">
                <div class="col">
                    {!! Form::input('text', 'clipping.titulo_vt_'.$i, '', ['class' => 'form-control', 'placeholder' => 'Titulo da notícia', 'required' => 'true', 'maxlength'=> 255]) !!}
                </div>
                <div class="col">
                    {!! Form::input('text', 'clipping.link_vt_'.$i, '', ['class' => 'form-control', 'placeholder' => 'Link da notícia', 'required' => 'true', 'maxlength'=> 255]) !!}
                </div>
            </div>
        @else
            <div class="form-row mb-2">
                <div class="col">
                    {!! Form::input('text', 'clipping.titulo_vt_'.$i, '', ['class' => 'form-control', 'placeholder' => 'Titulo da notícia', 'maxlength'=> 255]) !!}
                </div>
                <div class="col">
                    {!! Form::input('text', 'clipping.link_vt_'.$i, '', ['class' => 'form-control', 'placeholder' => 'Link da notícia', 'maxlength'=> 255]) !!}
                </div>
            </div>
        @endif

    @endfor
@endif



<hr>


<div class="form-row mb-2">
    <div class="col">
        {!! Form::submit('Salvar', ['class' =>'form-control btn-success', 'value' => '']) !!}
    </div>
    <div class="col">
        <button class="form-control btn btn-primary" type="submit" name="action" formtarget="_blank" formaction="{{url('clipping/visualizar')}}"  formnovalidate>Visualizar</button>
    </div>
</div>