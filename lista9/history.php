<?php 
$conn = mysqli_connect("localhost", "root", "7508041zq7h43co" , "data");
if($result = $conn->query("SELECT * FROM trans ORDER BY ID DESC LIMIT 10"));
	 $row = mysqli_fetch_assoc($result);
	 $one_nr = $row['account_number'];
	 $one_rec = $row['recipient_data'];
	 $one_amo = $row['amount'];
	 $one_tit = $row['title'];
	 $one_ver = $row['veryfied'];

	 $row = mysqli_fetch_assoc($result);
	 $two_nr = $row['account_number'];
	 $two_rec = $row['recipient_data'];
	 $two_amo = $row['amount'];
	 $two_tit = $row['title'];
	 $two_ver = $row['veryfied'];

	$row = mysqli_fetch_assoc($result);
	 $three_nr = $row['account_number'];
	 $three_rec = $row['recipient_data'];
	 $three_amo = $row['amount'];
	 $three_tit = $row['title'];
	 $three_ver = $row['veryfied'];

	$row = mysqli_fetch_assoc($result);
	 $four_nr = $row['account_number'];
	 $four_rec = $row['recipient_data'];
	 $four_amo = $row['amount'];
	 $four_tit = $row['title'];
	 $four_ver = $row['veryfied'];

	$row = mysqli_fetch_assoc($result);
	 $five_nr = $row['account_number'];
	 $five_rec = $row['recipient_data'];
	 $five_amo = $row['amount'];
	 $five_tit = $row['title'];
	 $five_ver = $row['veryfied'];

	$row = mysqli_fetch_assoc($result);
	 $six_nr = $row['account_number'];
	 $six_rec = $row['recipient_data'];
	 $six_amo = $row['amount'];
	 $six_tit = $row['title'];
	 $six_ver = $row['veryfied'];

	$row = mysqli_fetch_assoc($result);
	 $seven_nr = $row['account_number'];
	 $seven_rec = $row['recipient_data'];
	 $seven_amo = $row['amount'];
	 $seven_tit = $row['title'];
	 $seven_ver = $row['veryfied'];

	$row = mysqli_fetch_assoc($result);
	 $eight_nr = $row['account_number'];
	 $eight_rec = $row['recipient_data'];
	 $eight_amo = $row['amount'];
	 $eight_tit = $row['title'];
	 $eight_ver = $row['veryfied'];

	$row = mysqli_fetch_assoc($result);
	 $nine_nr = $row['account_number'];
	 $nine_rec = $row['recipient_data'];
	 $nine_amo = $row['amount'];
	 $nine_tit = $row['title'];
	 $nine_ver = $row['veryfied'];

	$row = mysqli_fetch_assoc($result);
	 $ten_nr = $row['account_number'];
	 $ten_rec = $row['recipient_data'];
	 $ten_amo = $row['amount'];
	 $ten_tit = $row['title'];
	 $ten_ver = $row['veryfied'];
?>

<html>
	<head>
		<link rel="stylesheet" href="style.css" />
	</head>
	<body>
<div id="hist">
	<form action='transaction.html'>
		<h2>Transaction history:</h2>
		<label name="one"><?php echo "Account number:<br>";echo $one_nr; echo "<br>Recipient data:<br>"; echo $one_rec; echo "<br>Amout:<br>"; echo $one_amo; echo "<br>Title:<br>"; echo $one_tit;echo "<br>Veryfied:<br>";echo $one_ver; ?> </label>
		<label name="two"><?php echo "Account number:<br>";echo $two_nr; echo "<br>Recipient data:<br>"; echo $two_rec; echo "<br>Amout:<br>"; echo $two_amo; echo "<br>Title:<br>"; echo $two_tit;echo "<br>Veryfied:<br>";echo $two_ver;  ?> </label>
		<label name="three"><?php echo "Account number:<br>";echo $three_nr; echo "<br>Recipient data:<br>"; echo $three_rec; echo "<br>Amout:<br>"; echo $three_amo; echo "<br>Title:<br>"; echo $three_tit;echo "<br>Veryfied:<br>";echo $three_ver;  ?> </label>
		<label name="four"><?php echo "Account number:<br>";echo $four_nr; echo "<br>Recipient data:<br>"; echo $four_rec; echo "<br>Amout:<br>"; echo $four_amo; echo "<br>Title:<br>"; echo $four_tit;echo "<br>Veryfied:<br>";echo $four_ver;  ?> </label>
		<label name="five"><?php echo "Account number:<br>";echo $five_nr; echo "<br>Recipient data:<br>"; echo $five_rec; echo "<br>Amout:<br>"; echo $five_amo; echo "<br>Title:<br>"; echo $five_tit;echo "<br>Veryfied:<br>";echo $five_ver;  ?> </label>		
		<label name="six"><?php echo "Account number:<br>";echo $six_nr; echo "<br>Recipient data:<br>"; echo $six_rec; echo "<br>Amout:<br>"; echo $six_amo; echo "<br>Title:<br>"; echo $six_tit;echo "<br>Veryfied:<br>";echo $six_ver; ?>  </label>		
		<label name="seven"><?php echo "Account number:<br>";echo $seven_nr; echo "<br>Recipient data:<br>"; echo $seven_rec; echo "<br>Amout:<br>"; echo $seven_amo; echo "<br>Title:<br>"; echo $seven_tit;echo "<br>Veryfied:<br>";echo $seven_ver;  ?> </label>
		<label name="eight"><?php echo "Account number:<br>";echo $eight_nr; echo "<br>Recipient data:<br>"; echo $eight_rec; echo "<br>Amout:<br>"; echo $eight_amo; echo "<br>Title:<br>"; echo $eight_tit;echo "<br>Veryfied:<br>";echo $eight_ver;  ?> </label>	
		<label name="nine"><?php echo "Account number:<br>";echo $nine_nr; echo "<br>Recipient data:<br>"; echo $nine_rec; echo "<br>Amout:<br>"; echo $nine_amo; echo "<br>Title:<br>"; echo $nine_tit; echo "<br>Veryfied:<br>";echo $nine_ver; ?> </label>		
		<label name="ten"><?php echo "Account number:<br>";echo $ten_nr; echo "<br>Recipient data:<br>"; echo $ten_rec; echo "<br>Amout:<br>"; echo $ten_amo; echo "<br>Title:<br>"; echo $ten_tit; echo "<br>Veryfied:<br>";echo $ten_ver; ?> </label>		
		<input type="submit" id="trans-btn" value="make transfer"/>
	</form>
</div>
	</body>
</html>

