<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Noticia;
use App\Petroleo;
use App\Colaboradore;
use App\Servicio;

class FrontController extends Controller
{
    public function index(){
        $posts = Noticia::all();
        $col = Colaboradore::all();
        $serv = Servicio::all();
        return view('index', compact('posts','col','serv'));

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
        $posts = Noticia::all();
        return view('noticias', compact('posts'));
    }
    public function admin(){
      
    }
    public function prueba(){
        $posts = Petroleo::all();
        return view('prueba', compact('posts'));
    }

}
?>