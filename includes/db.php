<?php ob_start();

$db['db_host'] = "localhost";
$db['db_user'] = "root";
$db['db_pass'] = "";
$db['db_name'] = "cms_";

foreach($db as $key => $value){
    define($key,$value);
}

$connection = mysqli_connect(db_host,db_user,db_pass,db_name);


?>