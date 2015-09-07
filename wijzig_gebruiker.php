<?php
session_start();
require_once 'connect.php';
?>
<html>
<body>
<h1>Wijzig gebruiker</h1>
<form id="wijzig" method="post" action="">
<table border="1">
<?php
$wijz_id = $_GET['id'];
$sql="SELECT * FROM user WHERE id=$wijz_id";
$result = mysql_query($sql);
// Hier geen while nodig omdat je maar 1 record hebt
$rij = mysql_fetch_assoc($result);
echo "<tr><td>Id</td><td>".$rij['id']."</td></tr>";
// Het id en wachtwoord als hidden meesturen
echo "<input type='hidden' name='id' value='".$rij['id']."'>";
echo "<input type='hidden' name='huidigwachtwoord' value='".$rij['wachtwoord']."'>";
echo "<tr><td>E-mail</td><td><input type='text' id='email' name='email' value='".$rij['email']."'></td></tr>";
// Ter controle huidige wachtwoord invoeren
echo "<tr><td>Huidig wachtwoord</td><td><input type='test' id='hww' name='hww' value=''></td></tr>";
echo "<tr><td>Nieuw wachtwoord</td><td><input type='text' id='nww' name='nww'></td></tr>";

?>
<tr><td>&nbsp;</td><td><input type="submit" name="submit" value="Wijzigen"></td></tr>
</table>
</form>
<br/>
<!-- Een knop/link om terug te gaan naar oh_gebruiker.php -->
<a href="oh_gebruiker.php">Terug</a>

<?php
// Verwerken wijziging
if (isset($_POST['submit'])) {
	$id = $_POST['id'];
	$email = $_POST['email'];
	$hww = $_POST['hww'];
	$nww = $_POST['nww'];
	$huidigwachtwoord = $_POST['huidigwachtwoord'];
	$_SESSION['foutmelding'] = "";

	// Controle of het ingevoerde huidige wachtwoord gelijk is aan de echte waarde
	if ($huidigwachtwoord <> $hww) {
		$_SESSION['foutmelding'] = "Je oude wachtwoord is niet juist";
	}else{
		$_SESSION['foutmelding'] = "";
		$sql = "UPDATE user SET email='".$email."', wachtwoord='".$nww."' WHERE id=$id";
		mysql_query($sql);
		header('location: oh_gebruiker.php'); 
	}
}

// Foutmelding tonen als de sessie variabele 'foutmelding' is gevuld
if (isset($_SESSION['foutmelding'])){
	echo "<p style='color:red'>".$_SESSION['foutmelding']."</p>";
	$_SESSION['foutmelding'] = "";
}
?>
</body>
</html>