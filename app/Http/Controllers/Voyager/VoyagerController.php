<?php

namespace App\Http\Controllers\Voyager;

use TCG\Voyager\Http\Controllers\VoyagerController as BaseVoyagerController;

class VoyagerController extends BaseVoyagerController
{
    public function showTable()
    {
        /*
                return \DataTables::of(acceso_Petroleo::query())->make(true);


          */

        $datos = acceso_Petroleo::join('pedidoalmacen','pedidoalmacen_detalle.parent_id','=','pedidoalmacen.id')
            ->join('almacen','almacen.id','=','pedidoalmacen.almacen_id')
            ->join('comun.tercero','tercero.id','=','pedidoalmacen.tercero_id')
            ->join('undtransporte','undtransporte.centrocosto_id','=','pedidoalmacen_detalle.centrocosto_id')
            ->join('indpetroleo','pedidoalmacen.id','=','indpetroleo.parent_id')
            ->select('pedidoalmacen.fecha as fechp','indpetroleo.hora as hora','pedidoalmacen.numero as numero'
                ,'undtransporte.placa as placa','pedidoalmacen_detalle.cantidad as cantidad'
                ,'almacen.descripcion as grifo','comun.tercero.descripcion as tercero','comun.tercero.codigo as codigo'
                ,'indpetroleo.odometro as odometro','indpetroleo.hubometro as hubometro','indpetroleo.scngalonaje as scan'
                ,'indpetroleo.scnkm as scnkm','pedidoalmacen.glosa as glosa','pedidoalmacen.estado as estado')
            ->where('pedidoalmacen_detalle.producto_id','=','781')
            ->orderby('fecha','desc')
            ->orderby('numero','desc')->take(20);

        return Datatables::of($datos)->make(true);

    }
}
