<?php
  
        error_reporting(0);
        session_start();

        define('DB_SERVER','localhost');
        define('DB_USERNAME','root');
        define('DB_PASSWORD','');
        define('DB_DATABASE','amdemoapiphp');
     


        function getDB(){
            $dbhost = DB_SERVER;
            $dbuser = DB_USERNAME;
            $dbpass = DB_PASSWORD;
            $dbname = DB_DATABASE;
            $dbConnection = new PDO("mysql:host = $dbhost;dbname=$dbname", $dbuser ,$dbpass);
            $dbConnection->exec("set names utf8");
            $dbConnection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            return $dbConnection;
        }
     
?>
