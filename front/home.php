<?php
include("db.php");
session_start();
$name=$_SESSION['name'];
$receiver=$_SESSION['recname'];
// echo $name;
// echo $receiver;
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<!-- <meta http-equiv="refresh" content="5"/> -->
	<title>Chat-Box</title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<script type="text/javascript" src="jquery.min.js"></script>
</head>
<body>
	<div class="chatbox">
		<div class="chatlogs">
			
				 <p class="chat-message" id="data">
					<?php
						
						$sql="SELECT * FROM posts2
								WHERE (`name`='$name' OR `name`='$receiver')
													AND
									  (`receiver`='$name' OR `receiver`='$receiver')
								ORDER BY date ASC";
								// echo $sql;
						$result=$conn->query($sql);
					
						if($result->num_rows > 0) {
							while($row = mysqli_fetch_assoc($result)) {
								if($row["name"]==$receiver){
								?>
							<div class="chat friend">
								<div class="user-photo"><img src="img/man.png"></div>
								<p class="chat-message"><?php echo $row["msg"]; ?></p>
							</div>
								<?php
							}else if($row["name"]==$name){
								?>
							<div class="chat self">
								<div class="user-photo"><img src="img/man1.png"></div>
								<p class="chat-message"><?php echo $row["msg"]; ?></p>
							</div>
								<?php
						}
					}
				}else{
					echo "No Chat Available!!!";
				}
					?>
				</p>
			</div>			
			<form class="chat-form" method="post" action="send.php">
			<textarea name="msg"></textarea>
			<button name="send">Send</button>
		</form>
		<form class="chat-form1"method="post" action="logout.php">
				<button name="logout">Logout</button>
			</form>
		</div>
	</div>
</body>
</html>