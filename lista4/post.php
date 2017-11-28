<?php 
foreach($_POST as $variable => $value) {
if(htmlspecialchars($variable) == 'username') $username = htmlspecialchars($value);
if(htmlspecialchars($variable) == 'password') $password = htmlspecialchars($value);
if($username == "admin" && $password == "admin") 
{
	header("Location:http://10.0.2.15/admin.php");
	exit;
}
}



function generateSalt($length) {
	$characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
	$charactersLength = strlen($characters);
	$randomString = '';
	for($i = 0; $i < $length; $i++) {
		$randomString .= $characters[rand(0, $charactersLength - 1)];
	}
	return $randomString;
}

function XORkey($pass , $key , $salt) {
	$pass .= $salt;
	$ha = hash('sha512' , $pass);
	$out = $ha;
	$out .= $salt;
	$byte_text = unpack('C*' , $out);
	$byte_key = unpack('C*' , $key);

	$output = '';
	$key_index = 1;

	for($i = 1; $i < count($byte_text)+1; $i++) {
		if($key_index > count($byte_key)){ $key_index = 1;}
		$output .= dechex(($byte_text[$i] ^ $byte_key[$key_index]));
		$key_index++;
	}
	return $output;
}
$handle = fopen("keys.txt", "r");
$key = fgets($handle);
$key = preg_replace('/\s+/', '', $key);
fclose($handle);
sleep(1);
$conn = mysqli_connect("localhost", "root", "7508041zq7h43co" , "data");
if($result = $conn->query("SELECT * FROM users WHERE username = 'cebulka123'"));
$row = mysqli_fetch_array($result);
$salt = $row['salt'];
if($username == $row['username'] && $row['password'] == XORkey($password , $key , $salt)) header("Location:http://10.0.2.15/transaction.html");
else header("Location:http://10.0.2.15/log_failed.html");
?>

