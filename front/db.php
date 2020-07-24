<?php

$conn=mysqli_connect("localhost","Neel","neel","mychat");
if(!$conn) {
	echo "Can`t connect now.";
	mysqli_connect_error();
	die();
}

?>