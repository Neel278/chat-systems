<?php
include('db.php');
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Home</title>
	<link rel="stylesheet" type="text/css" href="home.css">
</head>
<body>
	<div id="main">
		<h1 style="background-color: #6495ed;color: white;">
			<?php echo $_SESSION['name']; ?>
			--Online
		</h1>
		<div class="output">
			
			<?php 
				$sql="SELECT * FROM posts";
				$result=$conn->query($sql);

				if($result->num_rows > 0) {
					while($row = $result->fetch_assoc()) {
						echo "" .$row["name"]." ".":: ".$row["msg"]." --".$row["date"]."<br>";
						echo "<br>";
					}
				}else{
					echo "0 results";
				}
				$conn->close();
			 ?>

		</div>
		<form method="post" action="send.php">
			<textarea name="msg" placeholder="Type Here..." class="form-control"></textarea><br>
			<input type="submit" name="send" value="Send">
		</form>
		<br>
		<form action="logout.php">
			<input type="submit" name="logout" value="Logout" style="width: 100%;background-color: #6495ed;color: white;font-size:20px;">
		</form>
	</div>
</body>
</html>