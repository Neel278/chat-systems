<?php

include('db.php');
$uname=$_POST["uname"];
$email=$_POST["email"];
$pass=$_POST["pass"];

$sql="INSERT INTO `signup`(`username`, `email`, `password`) VALUES ('$uname','$email','$pass')";
$result=$conn ->query($sql);


header("location:index.php");

?>