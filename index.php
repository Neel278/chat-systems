<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Chatting</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<div id="main">
		<div id="info">
			<h2>Login Here</h2>
			<form action="login.php" method="post">
				<label><b>Username</b></label>
				<input type="text" name="uname" placeholder="User name"><br><br>
				<label><b>Password</b></label>
				<input type="text" name="pass" placeholder="Password"><br><br>
				<button style="background-color: #6495ed;color: white;" type="submit">
					<b>Login</b>
				</button>
			</form>
			<form action="signup.php" method="post">
				<h2>Don`t have an account?Sign Up...</h2>
				<label><b>Username:</b></label>
				<input type="text" name="uname" placeholder="User name"><br><br>
				<label><b>Email:</b></label>
				<input type="text" name="email" placeholder="Email"><br><br>
				<label><b>Password:</b></label>
				<input type="text" name="pass" placeholder="Password"><br><br>
				<button style="background-color: #6495ed;color: white;" type="submit">
					<b>Signup</b>
				</button>
			</form>
		</div>
	</div>
</body>
</html>