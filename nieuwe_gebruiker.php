<?php
session_start();
$_SESSION['foutmelding'] = "";
require_once 'connect.php';
?>
<html>
<body>
<h1>Nieuwe gebruiker</h1>
<form id="wijzig" method="post" action="">
<table border="1">
<tr><td>E-mail</td><td><input type='text' id='email' name='email' value=''></td></tr>
<tr><td>Wachtwoord</td><td><input type='text' id='ww' name='wachtwoord' ></td></tr>

<tr><td>&nbsp;</td><td><input type="submit" name="submit" value="Aanmaken"></td></tr>
</table>
</form>

<?php
// Verwerken aanmaken
if (isset($_POST['submit'])) {
	$email = $_POST['email'];
	$wachtwoord = $_POST['wachtwoord'];

	$sql = "INSERT INTO user (email, wachtwoord) VALUES('".$email."', '".$wachtwoord."')";
	mysql_query($sql) or die("Foutje ".mysql_error());
	
	header('location: oh_gebruiker.php');
}
?>
</body>
</html>