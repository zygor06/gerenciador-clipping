<div class="row">

    <div class="col-md-12">

        <div class="card">

            <div class="card-header ">
                <h3 class="text-center">Listagem de Clippings</h3>
            </div>

            <div class="card-block">

                <a href="{{url('clipping/criar')}}" class="btn btn-primary float-right mb-3">Adicionar +</a>

                @if(Session::has('mensagem_sucesso') && Session::has('clipping_id'))
                    <div class="alert alert-success">{{Session::get('mensagem_sucesso')}} - <a target="_blank" href="{{url('clipping/view/' . Session::get('clipping_id'))}}">Visualizar</a></div>
                @elseif(Session::has('mensagem_sucesso'))
                    <div class="alert alert-success">{{Session::get('mensagem_sucesso')}}</div>
                @endif

                <table class="table table-bordered table-sm text-right">
                    <thead class="thead-inverse">
                    <tr>
                        <th class="text-center">Número</th>
                        <th class="text-center">Autor</th>
                        <th class="text-center">Ano</th>
                        <th class="text-center">Data de Criação</th>
                        <th></th>
                        <th></th>
                        @auth
                            <th></th>
                        @endauth
                    </tr>
                    </thead>
                    <tbody>
                    @foreach($clippings as $clipping)

                        <tr class="text-center">
                            <td>{{$clipping->numero}}</td>
                            <td>{{$clipping->autor}}</td>
                            <td>{{$clipping->ano}}</td>
                            <td>{{  date('d/m/Y', strtotime($clipping->data))  }}</td>
                            <td><a target="_blank" href="{{url('clipping/view/'.$clipping->id)}}">Visualizar</a></td>
                            <td><a href="{{url('clipping/edit/'.$clipping->id)}}">Editar</a></td>
                            @auth
                                @auth
                                    <td class="text-center">
                                        {!! Form::open(['method' => 'DELETE', 'url' => 'clipping/delete/'.$clipping->id, 'style' => 'display:inline;', 'class' => 'deletar']) !!}
                                            <button type="submit" class="float-right btn btn-danger btn-sm">Excluir</button>
                                        {!! Form::close() !!}
                                    </td>
                                @endauth
                            @endauth
                        </tr>

                    @endforeach
                    </tbody>

                </table>

            </div>

        </div>

    </div>

</div>