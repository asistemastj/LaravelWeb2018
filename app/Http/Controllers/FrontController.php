<?php

namespace App\Http\Controllers;
use App\acceso_Petroleo;
use App\Comun_Petroleo;
use Illuminate\Http\Request;
use App\Noticia;
use App\Petroleo;
use App\Colaboradore;
use App\Servicio;
use App\Banner;
use TCG\Voyager\Models\DataType;

class FrontController extends Controller
{
    public function index(){
        $posts = Noticia::orderby('id','DESC')->take(3)->get();
        $col = Colaboradore::orderby('id','DESC')->get();
        $serv = Servicio::orderby('id','DESC')->take(3)->get();
        $ban = Banner::orderby('id','DESC')->get();
        return view('index', compact('posts','col','serv','ban'));

    }

    public function abousUs(){
    	return view('nosotros');
    }

    public function service(){
        $serv = Servicio::all();
    	return view('servicios',compact('serv'));
    }

    public function location(){
    	return view('ubicacion');
    }

    public function contact(){
    	return view('contacto');
    }

    public function logros(){
    	return view('historia');
    }

    public function transport(){
    	return view('transporte');
    }

    public function notic(){
        $posts = Noticia::orderby('id','DESC')->paginate(1);;

        return view('noticias', compact('posts'));
    }

    public function PostNotic($slug){

        $post = Noticia::where('slug',$slug)->first();
        return view('noticia',compact('post'));
    }

    public function petroleo(){
        /*
        $petr_com = Comun_Petroleo::all();
        $petr_acc = acceso_Petroleo::all();
        $petr = Petroleo::select('tercero_id')->from('indpetroleo')->where("remolque_id","=",0)->get();
        */
        $union = acceso_Petroleo::
                 join('pedidoalmacen','pedidoalmacen_detalle.parent_id','=','pedidoalmacen.id')
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
                 ->orderby('numero','desc')->paginate(10);
        return view('prueba', compact('union'));
    }
}
?>