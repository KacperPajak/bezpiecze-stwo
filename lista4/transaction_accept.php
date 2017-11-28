<?php 
foreach($_POST as $variable => $value) {
if(htmlspecialchars($variable) == 'account_number') $account_number = htmlspecialchars($value);
if(htmlspecialchars($variable) == 'recipient_data') $recipient_data = htmlspecialchars($value);
if(htmlspecialchars($variable) == 'amount') $amount = htmlspecialchars($value);
if(htmlspecialchars($variable) == 'title') $title = htmlspecialchars($value);
}
$conn = mysqli_connect("localhost", "root", "7508041zq7h43co" , "data");
if($conn->query("INSERT INTO trans(account_number, recipient_data, amount, title , veryfied) VALUES('".$account_number."' , '".$recipient_data."' , '".$amount."' , '".$title."' , 0);"));
?>

<html>
	<head>
		<link rel="stylesheet" href="style.css" />
	</head>
	<body>
<div id="trans">
	<form action='transaction.html' method="POST">
		<h2>Transaction done.</h2>
		<h4>Account number:</h4>
		<label name="account_number"><?php echo $account_number ?> </label>
		<h4>Recipient data:</h4>
		<label name="recipient_data"><?php echo $recipient_data ?></label>
		<h4>Amount:</h4>
		<label name="amount"><?php echo $amount ?></label>
		<h4>Title:</h4>
		<label name="title"><?php echo $title ?></label>
		<input type="submit" id="trans-btn" value="new transfer"/>
	</form>
	<form action='history.php'>
		<input type="submit" id="trans-btn" value="history"/>
	</form>
</div>
	</body>
</html>

