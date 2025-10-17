<?php
function conectar(){
    return new PDO('pgsql:host=localhost;dbname=steam', 'steam', 'steam');
}

function obtener_post(string $par) : ?string {
    return isset($_POST[$par]) ? trim($_POST[$par]) : null;
}

function volver_index() {
    header('Location: index.php');
}