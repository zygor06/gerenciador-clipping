<div class="row">

    <div class="col-md-12">

        <div class="card">

            <div class="card-header ">
                <h3 class="text-center">Listagem de Clippings</h3>
            </div>

            <div class="card-block">

                <a href="{{url('clipping/criar')}}" class="btn btn-primary float-right mb-3">Adicionar +</a>

                <table class="table table-bordered text-right">
                    <thead class="thead-inverse">
                    <tr>
                        <th class="text-right">Número</th>
                        <th class="text-center">Autor</th>
                        <th class="text-right">Ano</th>
                        <th class="text-right">Data de Criação</th>
                        <th></th>
                        <th></th>
                    </tr>
                    </thead>
                    <tbody>
                    @foreach($clippings as $clipping)

                        <tr>
                            <th class="text-right" scope="row">{{$clipping->numero}}</th>
                            <td class="text-center">{{$clipping->autor}}</td>
                            <td>{{$clipping->ano}}</td>
                            <td>{{  date('d/m/Y', strtotime($clipping->data))  }}</td>
                            <td class="text-center"><a target="_blank" href="{{url('clipping/view/'.$clipping->id)}}">Visualizar</a></td>
                            <td class="text-center"><a href="{{url('clipping/edit/'.$clipping->id)}}">Editar</a></td>
                        </tr>

                    @endforeach
                    </tbody>

                </table>

            </div>

        </div>

    </div>

</div>