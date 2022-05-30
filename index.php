<?php

    require_once 'config.php';

    global $dbConnection;

    $dbConnection = Connection::getConnection();

    // session_start();
    // session_destroy();
    // header("location:./login/student_login.php");

?>