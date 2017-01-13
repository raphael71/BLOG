<!DOCTYPE html>
<html>
<head>
	<title>commentaires</title>
</head>
<body>
<?php
try
{

$bdd = new PDO('mysql:host=localhost;dbname=blog;charset=utf8', 'root', '');
$bdd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION); 

}





?>
<p>
<strong>billet</strong> : <?php echo $donnees['billet']; ?>
<?php
$reponse->closeCursor();
?>

</body>
</html>