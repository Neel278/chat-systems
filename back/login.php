<?php

session_start();
include("db.php");

$uname=$_POST["uname"];
$pass=$_POST["pass"];

$sql="SELECT * FROM `signup` WHERE `username`='$uname' AND `password`='$pass'";

$result=mysqli_query($conn,$sql);
$row=mysqli_fetch_assoc($result);

if(!$row) {
	header("location:error.php");
}else{
	$_SESSION['name']=$_POST['uname'];
	$_SESSION['recname']=$_POST['recname'];
	header("location:home.php");
}

?>