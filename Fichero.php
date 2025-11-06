<?php

namespace F;

require_once 'Cadenas.php';

class Fichero
{
    use \Utilidades\Cadenas;

    public function __construct()
    {
        $l = $this->longitud("hola");
    }
}
