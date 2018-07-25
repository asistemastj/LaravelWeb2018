

<h1>Base de datos comun</h1>
    <table border="1">
        <tr>
            <TD>Fecha</TD>
            <TD>Hora</TD>
            <TD>Numero</TD>
            <TD>Tracto</TD>
            <TD>Cantidad</TD>
            <TD>Grifo</TD>
            <TD>Solicitante</TD>
            <TD>Odometro</TD>
            <TD>Hubometro</TD>
            <TD>Scanner Galon</TD>
            <TD>Scanner KM</TD>
            <TD>Glosa</TD>
            <TD>Estado</TD>
            <TD>Acciones</TD>
        </tr>
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

    </table>
{{ $union->render() }}


<h1>Base de datos tjoselito</h1>


<h1>Base de datos acceso</h1>

