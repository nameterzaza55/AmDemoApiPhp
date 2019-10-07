<?php
header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');

include 'connect.php';

$_POST['Function_Name']();

function addUser(){
    $Data = json_decode($_POST['_Data']);
    $Iduser = $Data->users_id;
    $Nameuser = $Data->user_name;
    $Uusername = $Data->u_username;
    $Upassword = $Data->u_password;
    $Teluser = $Data->user_tel;
    $Leveluser = $Data->user_level;
    $Addressuser = $Data->user_address;

    $conn = getDB();

    $sql_query = "INSERT INTO amuser(users_id,user_name,u_username,u_password,user_tel,user_level,user_address)
     VALUES ('$Iduser','$Nameuser','$Uusername','$Upassword','$Teluser','$Leveluser','$Addressuser')";

    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $conn->query($sql_query);
}

function getUserAll(){
    $Data = json_decode($_POST['_Data']);
    $conn = getDB();
    $sql_query = "SELECT * from amuser";
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $conn->query($sql_query);
    $rst = $conn->query($sql_query);
    $Response_Data = $rst->fetchAll(PDO::FETCH_OBJ);
    $Response_Data = json_encode($Response_Data);
    echo $Response_Data;
}

function getUserById(){
    $Data = json_decode($_POST['_Data']);
    $Iduser = $Data->users_id;
    $conn = getDB();
    $sql_query = "SELECT * from amuser where users_id='$Iduser'";
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $conn->query($sql_query);
    $rst = $conn->query($sql_query);
    $Response_Data = $rst->fetchAll(PDO::FETCH_OBJ);

    $Response_Data = json_encode($Response_Data);
    echo $Response_Data;
}

function deleteUser(){
    $Data = json_decode($_POST['_Data']);
    $Iduser = $Data->users_id;
    $conn = getDB();
    $sql_query = "DELETE from amuser where users_id='$Iduser'";
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $conn->query($sql_query);
    echo '{"Finish":"delete"}';     
}

function updateUser(){
    $Data = json_decode($_POST['_Data']);
    $Iduser = $Data->users_id;
    $Nameuser = $Data->user_name;
    $Uusername = $Data->u_username;
    $Upassword = $Data->u_password;
    $Teluser = $Data->user_tel;
    $Leveluser = $Data->user_level;
    $Addressuser = $Data->user_address;

    $conn = getDB();   
    $sql_query = "UPDATE amuser set 
    user_name='$Nameuser',u_username='$Uusername',u_password='$Upassword',
    user_tel='$Teluser',user_level='$Leveluser',user_address='$Addressuser' 
    WHERE users_id='$Iduser'";

    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $conn->query($sql_query);
    echo '{"Finish":"update"}';
}
?>