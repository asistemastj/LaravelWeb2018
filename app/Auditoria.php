<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Auditoria extends Model
{
    protected $table = 'auditoria';
    protected $fillable = [
        'id',
        'Categoria_ID',
        'Nombre',
        'file',
    ];
}
