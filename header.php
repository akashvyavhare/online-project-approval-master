<?php

    require_once 'index.php';

    if(isset($_SESSION['role'])){
        switch($_SESSION['role']){
            case 'student':{
                $id = $_SESSION['id'];
                $sql = "SELECT `status` FROM `student_record` WHERE `student_ID` = ${id}";
                $result = $conn->query($sql);
                $data = $result->fetch_assoc();
                $status = $data['status'];
                if($status)
                    header("Location: ../student/");
                break;
            }
            case 'hod':{
                header("Location: ../hod/");
                break;
            }
        }
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="../css/bootstrap.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>