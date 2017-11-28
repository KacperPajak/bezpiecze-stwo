<?php 
function generateSalt($length) {
	$characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
	$charactersLength = strlen($characters);
	$randomString = '';
	for($i = 0; $i < $length; $i++) {
		$randomString .= $characters[rand(0, $charactersLength - 1)];
	}
	return $randomString;
}

function XORkey($password , $key , $salt) {
	$password .= $salt;
	$ha = hash('sha512' , $password);
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

$salt = generateSalt(64);
$key = generateSalt(5);

$handle = fopen("keys.txt", "a");
fwrite($handle, $key);
fwrite($handle, "\r\n");
fclose($handle);

$a = XORkey("cebulka123" , $key , $salt);

$conn = mysqli_connect("localhost", "root", "7508041zq7h43co" , "data");
if($conn->query("INSERT INTO users(username , password , salt) VALUES('cebulka123' , '".$a."' , '".$salt."');"));
?>

