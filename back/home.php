<?php
include("db.php");
session_start();
$name=$_SESSION['name'];
$receiver=$_SESSION['recname'];
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Chat App</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<div id="chat-container">
		<div id="search-container">
			<input type="text" name="" placeholder="search"/>
		</div>
		<div id="conversation-list">
			<div class="conversation active">
				<img src="img/man.png" alt="Darly Duckmanton">
				<div class="title-text">
					<?php echo $receiver; ?>
				</div>
				<div class="created-date">
					Apr 16
				</div>
				<div class="conversation-message">
					This is a message dajbshdhisadl duagsd diaugdiuh daug diuhdjifoeh  hiuh
				</div>
			</div>
		</div>
		<div id="new-message-container">
			<a href="#">+</a>
		</div>
		<div id="chat-title">
			<span><?php echo $receiver; ?></span>
			<img src="img/trash1.svg" alt="Delete Conversation">
		</div>
		<div id="chat-message-list">
			
				<?php

				$sql="SELECT * FROM posts2
								WHERE (`name`='$name' OR `name`='$receiver')
													AND
									  (`receiver`='$name' OR `receiver`='$receiver')
								ORDER BY date ASC";
								// echo $sql;
						$result=$conn->query($sql);

						if($result->num_rows >0){
							while($row=mysqli_fetch_assoc($result)) {
								if($row['name'] == $name){
									?>
								<div class="message-row you-message">
									<div class="message-content">
										<!-- <img src="img/attach.png"> -->
										<div class="message-text"><?php echo $row['msg']; ?></div>
										<div class="message-time">Apr 16</div>
									</div>
								</div>
									<?php
								}else if($row['name']==$receiver) {
									?>
									<div class="message-row other-message">
										<div class="message-content">
											<img src="img/attach.png">
											<div class="message-text"><?php echo $row['msg']; ?></div>
											<div class="message-time">Apr 16</div>
										</div>
									</div>
									<?php
								}
							}
						}
				?>
		</div>
		<div id="chat-form">
			<img src="img/attach.png" alt="Add Attachment">
			<form method="post" action="send.php">
			<input type="text" name="msg" placeholder="Type a message">
				<button><img src="img/send.png" alt="Send" class="send"></button>
			</form>
		</div>
	</div>
</body>
</html>