@extends('layouts.app')

@section('head')
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
    <link  href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css" rel="stylesheet">

@endsection

@section('content')
    <h1>Gestión de Petroleo</h1>
    <a href="#">
        <br><br>
        <button type="button" class="btn btn-primary">Crear Usuario</button></a>
    <table class="table table-striped dataTables-example" id="tablaAjax">
        <thead>
            <th>Fecha</th>
            <th>Hora</th>
            <th>Numero</th>
            <th>Tracto</th>
            <th>Cantidad</th>
            <th>Grifo</th>
            <th>Solicitante</th>
            <th>Odometro</th>
            <th>Hubometro</th>
            <th>Scanner Galon</th>
            <th>Scanner KM</th>
            <th>Glosa</th>
            <th>Estado</th>
            <th>Acciones</th>
        </thead>
    {{--
    @foreach($union  as $result)
        <tr>
            <TD>{{$result->fechp}}</TD>
            <TD>{{$result->hora}}</TD>
            <TD>{{$result->numero}}</TD>
            <TD>{{$result->placa}}</TD>
            <TD>{{$result->cantidad}}</TD>
            <TD>{{$result->grifo}}</TD>
            <TD>{{$result->codigo}} {{$result->tercero}}</TD>
            <TD>{{$result->odometro}}</TD>
            <TD>{{$result->hubometro}}</TD>
            <TD>{{$result->scan}}</TD>
            <TD>{{$result->scnkm}}</TD>
            <TD>{{$result->glosa}}</TD>
            <TD>{{$result->estado}}</TD>
            <TD>OTROS</TD>
        </tr>


    @endforeach
      --}}

</table>
{{-- $union->render() --}}

@endsection
@section('javascript')
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script>
    $(function() {
        $('#tablaAjax').DataTable({
            processing: true,
            serverSide: true,
            ajax: {

                url: '{{ route('petroleo.showTable') }}',
                type: "post",
            },
            columns: [
                { data: 'fechp', name: 'fechp'},
                { data: 'hora', name: 'hora' },
                { data: 'numero', name: 'numero'},
                { data: 'placa', name: 'placa'},
                { data: 'cantidad', name: 'cantidad'},
                { data: 'grifo', name: 'grifo'},
                { data: 'codigo', name: 'codigo'},
                { data: 'odometro', name: 'odometro'},
                { data: 'hubometro', name: 'hubometro'},
                { data: 'scan', name: 'scan'},
                { data: 'scnkm', name: 'scnkm'},
                { data: 'glosa', name: 'glosa'},
                { data: 'estado', name: 'estado'},
                { data: 'codigo', name: 'codigo'}
            ]
        });
    });
</script>

@stop

