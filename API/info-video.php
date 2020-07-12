<?php
/// CORS
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST, GET, OPTIONS");

header("Content-Type: application/json");

include_once('../comun/db.php');


function obtener_info($id){

    global $enlace;
    $todosLosVideos = null;

    $resultado =  mysqli_query( $enlace ,"SELECT * FROM videos WHERE id= '".$id."'");

    while ($fila = mysqli_fetch_array($resultado)) {
        $todosLosVideos[] = $fila;
    }

    return $todosLosVideos; 

}

$resultados = null;

if ($_SERVER['REQUEST_METHOD'] === 'GET' ) {

        $resultados =  obtener_info( $_GET['id'] );

}else{
     header('HTTP/1.1 405 Method Not Allowed');
    exit;
}

echo json_encode( $resultados );


?>
