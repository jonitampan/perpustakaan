<?php
// Kredensial database yang diperlukan

$host     = "localhost";
$uname    = "labs";
$pass     = "password";
$database = "perpustakaan";

$connect = mysqli_connect($host, $uname, $pass, $database) OR die(mysql_error());
