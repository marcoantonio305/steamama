<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    $pdo = new PDO('pgsql:host=localhost;dbname=steam', 'steam', 'steam');
    $sent = $pdo -> query('SELECT * FROM clientes');
    
    //foreach ($sent as $fila) {
    //    echo $fila['dni'] ;
    //    echo $fila['nombre'] ;
      //  echo $fila['apellidos'] ;
       // echo $fila['direccion'] ;
        //echo $fila['codpostal'];
        //echo $fila['telefono'];
        //echo '<br>';
    //}
    ?>
    <table border="1">
        <thread>
            <th>DNI</th>
            <th>Nombre</th>
            <th>Apellidos</th>
            <th>Dirección</th>
            <th>Código Postal</th>
            <th>Teléfono</th>
        </thread>
        <tbody>
            <?php foreach ($sent as $fila): ?>
            <tr>
                <td><?= $fila['dni'] ?></td>
                <td><?= $fila['nombre'] ?></td>
                <td><?= $fila['apellidos'] ?></td>
                <td><?= $fila['direccion'] ?></td>
                <td><?= $fila['codpostal'] ?></td>
                <td><?= $fila['telefono'] ?></td>
            </tr>
            <?php endforeach ?>
        </tbody>
    </table>
</body>
</html>