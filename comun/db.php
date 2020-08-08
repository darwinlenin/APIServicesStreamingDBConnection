<?php
global $enlace;

//Get Heroku ClearDB connection information
$url = parse_url(getenv("CLEARDB_DATABASE_URL"));

$server = $url["host"];
$username = $url["user"];
$password = $url["pass"];
$db = substr($url["path"], 1);

$enlace = new mysqli($server, $username, $password, $db);
$enlace->set_charset("utf8");

?>