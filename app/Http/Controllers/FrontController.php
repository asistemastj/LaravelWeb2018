<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Noticia;
use App\Petroleo;
use App\Colaboradore;
use App\Servicio;
use App\Banner;

use TCG\Voyager\Database\Schema\SchemaManager;
use TCG\Voyager\Facades\Voyager;
use TCG\Voyager\Models\DataRow;
use TCG\Voyager\Models\DataType;
use TCG\Voyager\Models\Permission;

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
        setlocale(LC_TIME, 'es_ES');
        $posts = Noticia::orderby('id','DESC')->paginate(10);

        return view('noticias', compact('posts'));
    }

    public function PostNotic($slug){

        $post = Noticia::where('slug','=',$slug)->first();
        return view('noticia',compact('post'));
    }


}
?>