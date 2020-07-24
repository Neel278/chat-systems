<?php

$conn=mysqli_connect("localhost","Neel","neel","mychat");
if(!$conn) {
	echo "Can`t connect!!";
	mysqli_connect_error();
	die();
}

?>