<?php
session_start();
include_once "class.functions.php";
$user_id=$_SESSION['alumni'];
$table_name="profile";
$obj=new functions();
$obj->viewprofile1($table_name,$user_id,$_SESSION['alumniname']);
?>