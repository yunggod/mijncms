<?php
// Verwijderen user
// Door: Peter Bijker
// Datum: 20 juni 2013
// Wijziging: 21 juni 2013

require_once 'connect.php';
$id = $_GET['id'];
?>
<h1>Verwijderen gebruiker</h1>
<form id="verwijder" method="post" action="">
<?php
echo "Gebruiker met id ".$id." wordt verwijderd. Weet u het zeker?<br/>";
echo "<input type='hidden' name='id' value='".$id."'>";
?>
<input type="submit" name="submit" value="Ja">&nbsp;&nbsp;<a href="oh_gebruiker.php">Nee</a>

<?php

// Verwerken verwijderen gebruiker
if (isset($_POST['submit'])) {
	$id = $_POST['id'];
	$sql="DELETE FROM user WHERE id=$id";
	$result = mysql_query($sql);
	
	// Terug naar onderhouds pagina
	header('Location: oh_gebruiker.php');
}
?>