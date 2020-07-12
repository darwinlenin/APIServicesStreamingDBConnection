<?php
/*
global $enlace;

//$enlace = mysqli_connect('localhost:3306', 'root', '', 'sitio_videos' );
//$enlace = mysqli_connect('angularsitiovideos.mysql.database.azure.com:3306', 'videoangularzg', 'VAzg123.', 'sitio_videos' );

'mysql' => [
    ...
    'sslmode' => env('DB_SSLMODE', 'prefer'),
    'options' => (env('MYSQL_SSL')) ? [
        PDO::MYSQL_ATTR_SSL_KEY    => '../ssl/BaltimoreCyberTrustRoot.crt.pem', 
    ] : []
],

$enlace=mysqli_init(); mysqli_ssl_set($enlace, NULL, NULL, NULL, NULL, NULL); 
mysqli_real_connect($enlace, "angularsitiovideos.mysql.database.azure.com", "zgsitiovideos@angularsitiovideos", "Zts1t10v1d30s.", "sitio_videos", 3306);

if(!$enlace){
    echo "Error: No se pudo conectar a MySQL." . PHP_EOL;
    echo "errno de depuración: " . mysqli_connect_errno() . PHP_EOL;
    echo "error de depuración: " . mysqli_connect_error() . PHP_EOL;
    exit;
}*/


?>

<?php
global $enlace;

/* $connectstr_dbhost = 'angularsitiovideos.mysql.database.azure.com';
$connectstr_dbname = 'sitio_videos';
$connectstr_dbusername = 'zgsitiovideos@angularsitiovideos';
$connectstr_dbpassword = 'Zts1t10v1d30s.'; */
/* $connectstr_dbhost = 'us-cdbr-east-02.cleardb.com';
$connectstr_dbname = 'heroku_0af1e6e8cd1d76c';
$connectstr_dbusername = 'becc27abe6ed5b';
$connectstr_dbpassword = 'bd7c958f';
foreach ($_SERVER as $key => $value) {
    if (strpos($key, "MYSQLCONNSTR_") !== 0) {
        continue;
    }

    $connectstr_dbhost = preg_replace("/^.*Data Source=(.+?);.*$/", "\\1", $value);
    $connectstr_dbname = preg_replace("/^.*Database=(.+?);.*$/", "\\1", $value);
    $connectstr_dbusername = preg_replace("/^.*User Id=(.+?);.*$/", "\\1", $value);
    $connectstr_dbpassword = preg_replace("/^.*Password=(.+?)$/", "\\1", $value);
} */

/* $enlace = mysqli_init();
mysqli_ssl_set($enlace,"becc27abe6ed5b-key.pem","becc27abe6ed5b-cert.pem", "cleardb-ca.pem", NULL, NULL) ;
mysqli_real_connect($enlace, $connectstr_dbhost, $connectstr_dbusername, $connectstr_dbpassword, $connectstr_dbname, 3306, MYSQLI_CLIENT_SSL);
if (mysqli_connect_errno($enlace)) {
die('Failed to connect to MySQL: '.mysqli_connect_error());
} */


//Get Heroku ClearDB connection information
$url = parse_url(getenv("CLEARDB_DATABASE_URL"));

$server = $url["host"];
$username = $url["user"];
$password = $url["pass"];
$db = substr($url["path"], 1);

$enlace = new mysqli($server, $username, $password, $db);
//echo "Success: A proper connection to MySQL was made! The  database is great." . PHP_EOL;
//echo "Host information: " . mysqli_get_host_info($enlace) . PHP_EOL;

?>