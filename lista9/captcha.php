<?php 
$captcha;
if(isset($_POST['g-recaptcha-response'])){
	$captcha=$_POST['g-recaptcha-response'];
}
if(!$captcha){
	header("Location:http://bank.com");
	exit;
}
$secretKey = "6Lcgyz4UAAAAAPTOzcVthY--06sohbH-7ugcWs3w";
$ip = $_SERVER['REMOTE_ADDR'];
$response=file_get_contents("https://www.google.com/recaptcha/api/siteverify?secret=".$secretKey."&response=".$captcha."&remoteip=".$ip);
$responseKeys = json_decode($response,true);
?>

<html>
	<head>
		<link rel="stylesheet" href="style.css" />
		<script src="https://apis.google.com/js/platform.js" async defer></script>
		<script src="https://www.google.com/recaptcha/api.js"></script>
		<meta name="google-signin-client_id" content="1030022864994-3po5shtp80mou4heob5fo3lq6dvcur8i.apps.googleusercontent.com">
	</head>
	<body>
<div id="login">
	<form action='post.php' method="POST">
		<h2>Sign In</h2>
		<input type="text" name="username" placeholder="Enter Username"/>
		<input type="password" name="password" placeholder="Enter Password" />
		<input type="submit" id="login-btn" value="Log In"/>
		<div class="g-signin2" data-onsuccess="onSignIn"></div>
</script>
	</form>
</div>
	</body>
</html>
<script>
function onSignIn(googleUser) {
  var profile = googleUser.getBasicProfile();
  console.log('ID: ' + profile.getId());
  console.log('Name: ' + profile.getName());
  console.log('Image URL: ' + profile.getImageUrl());
  console.log('Email: ' + profile.getEmail());
  if(profile.getEmail() == "kacper.pajak@gmail.com" || profile.getEmail() == "kacper.pajak@wp.pl") {
  document.getElementsByName("username")[0].value = 'cebulka123';
  document.getElementsByName("password")[0].value = 'cebulka123';
  document.getElementById("login-btn").click();
  } 
}
</script>




