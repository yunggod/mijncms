<?php
// My first CMS | Onderhouden gebruikers
// Door: Peter Bijker
// Datum: 31 mei 2013
// Wijziging: 18 september 2013

// Database connectie -> wachtwoord nog aanpassen in connect.php NIET VERGETEN!
require_once 'connect.php';
?>
<html>
<body>
<h1>Onderhoud gebruikers</h1>
<a href="nieuwe_gebruiker.php">Aanmaken nieuwe gebruiker</a><br/><br/>
<table border="1">
<tr><th>Id</th><th>E-mail</th><th>Wachtwoord</th><th>Provincie</th><th>Wijzigen</th><th>Verwijderen</th></tr>
<?php
// Query uitvoeren
$sql = "SELECT * FROM user";
$result = mysql_query($sql);
while($rij = mysql_fetch_assoc($result)) {
// Gegevens laten zien
	echo "<tr><td>".$rij['id']."</td><td>".$rij['email'];
	echo "</td><td>".$rij['wachtwoord'];
	echo "</td><td>".$rij['prov_id'];
	echo "</td><td><a href='wijzig_gebruiker.php?id=".$rij['id']."'>Wijzigen</a>";
	echo "</td><td><a href='verwijder_gebruiker.php?id=".$rij['id']."'>Verwijderen</a></td></tr>";
}
?>
</table>
</body>
</html>