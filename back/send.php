<?php

session_start();
include('db.php');
$msg=$_POST['msg'];
$name=$_SESSION['name'];
$receiver=$_SESSION['recname'];

$sql="INSERT INTO `posts2`(`msg`,`name`,`receiver`) VALUES('$msg','$name','$receiver') ";
$result=mysqli_query($conn,$sql);
header("location:home.php");
?>