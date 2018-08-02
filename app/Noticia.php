<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Jenssegers\Date\Date;


class Noticia extends Model
{
       protected $table = 'noticias';

       public function getCreatedAtAttribute($date)
       {
           return new Date($date);
       }
}
