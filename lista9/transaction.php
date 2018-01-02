<?php 
foreach($_POST as $variable => $value) {
if(htmlspecialchars($variable) == 'account_number') $account_number = htmlspecialchars($value);
if(htmlspecialchars($variable) == 'recipient_data') $recipient_data = htmlspecialchars($value);
if(htmlspecialchars($variable) == 'amount') $amount = htmlspecialchars($value);
if(htmlspecialchars($variable) == 'title') $title = htmlspecialchars($value);
}
?>
<html>
	<head>
		<link rel="stylesheet" href="style.css" />
	</head>
	<body>
<div id="trans">
	<form action='transaction_accept.php' method="POST">
		<h2>Check data:</h2>
		<h4>Account number:</h4>
		<label><?php echo $account_number ?> </label>
		<h4>Recipient data:</h4>
		<label><?php echo $recipient_data ?></label>
		<h4>Amount:</h4>
		<label><?php echo $amount ?></label>
		<h4>Title:</h4>
		<label><?php echo $title ?></label>
		<input type="hidden" name="account_number" value="<?php echo $account_number ?>" />
		<input type="hidden" name="recipient_data" value="<?php echo $recipient_data ?>" />
		<input type="hidden" name="amount" value="<?php echo $amount ?>" />
		<input type="hidden" name="title" value="<?php echo $title ?>" />
		<input type="submit" id="trans-btn" value="make transfer"/>
	</form>
</div>
	</body>
</html>

