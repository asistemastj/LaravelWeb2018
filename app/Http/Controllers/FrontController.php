<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;

use App\Noticia;
class FrontController extends Controller
{
    public function index(){
    	$posts = Noticia::all();
        return view('index', compact('posts'));
    }

    public function abousUs(){
    	return view('nosotros');
    }

    public function service(){
    	return view('servicios');
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
    
}
?>