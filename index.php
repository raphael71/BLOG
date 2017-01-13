<!DOCTYPE>
<html>
<head>
	<title>BLOG</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

	<header>
		<h1>LE BLOG DE RAPHAEL</h1>
	</header>

	
		  
			
	 

<form action="" method="get">
    <div id="cadre1">
		<label for="choix_categorie">Choix catégorie</label>
		<select name="choix_categorie">
			<option value="1">Films</option>
			<option value="2">Livres</option>
		</select>
		<input type="submit" name="envoi_choix_categorie" value="envoi">
    </div>
	</form>



<div id="cadre2">
<form action="" method="post" >
<div class="element"><label>AUTEUR:</label>
<input type="text" name="auteur" />	
</div>
<div class="element"><label>BILLETS:</label>
<textarea name="contenu">
</textarea></div>
<div class="element"><label>CATEGORIE:</label>
<textarea name="categories">
</textarea></div>
<div class="element"><label>TITRE</label>
<textarea name="titre">
</textarea></div>
</form>
</div>

<div id="envoi">
   <input type="submit" name="submit" value="valider pour l'envoi" />
</div>

<div id="reception">



<?php

		$bdd = new PDO('mysql:host=localhost;dbname=blog;charset=utf8', 'root', '');
		$bdd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION); 

	
	

		

		if (isset($_POST['submit']))
{


$auteur = htmlspecialchars(trim($_POST['auteur']));
$articles = htmlspecialchars(trim($_POST['contenu']));
 
		 if (empty($auteur) || empty($articles))

 {

 	echo"veuillez completer tout les champs";
 }
 else
 {

 

		$req = $bdd->prepare('INSERT INTO billets (titre,contenu,auteur,date_de_ creations) VALUES(:titre,:contenu,:auteur,NOW())');
		$req->execute(array(
	'titre'   =>$_POST['titre'],
	'contenu' =>$_POST['contenu'],
	'auteur'  =>$_POST['auteur'],
	'date_de_creations' =>$_POST['date_de_creations']
	

	));


		echo 'le billet a bien ete ajouté !';

			$req = $bdd->prepare('INSERT INTO categories (nom_de_la_categories) VALUES(:nom_de_la_categories)');
			$req->execute(array(
		'nom_de_la_categories' => $_POST['nom_de_la_categories']
	
	));

		echo 'la categorie a biren ete ajouté !';


		$req = $bdd->prepare('UPDATE  billets= titre,contenu,auteur,NOW())'  );
		$req->execute(array(
    	'titre'   => $_POST['titre'],
    	'contenu' => $_POST['contenu'],
    	'auteur'  => $_POST['auteur'],
   		'date_de_creations' => $date_de_creations['date_de_creations']

    ));

   			$req = $bdd->prepare('UPDATE  categorie= nom_de_la_categories');
			$req -> execute(array(
    	'nom_de_la_categories'  => $_POST['nom_de_la_categories']

    
    ));
	}


}

	if(isset($_GET['choix_categorie'])) {

		$sql = "SELECT auteur,titre,contenu,date_de_creations FROM billets WHERE id_categorie=?";
		$result = $bdd->prepare($sql);
		$result->execute(array($_GET['choix_categorie']));

	}
	else {
		$sql = "SELECT auteur,titre,contenu,date_de_creations FROM billets ";
		$result = $bdd->query($sql);
	}
	

	if ($result->rowCount()> 0){

		while ($row = $result->fetch(PDO::FETCH_ASSOC)){

					echo  "<div class='titre'>"; 
					print_r($row['titre']);
					echo "</div>";

					echo "<div class='article'>";
					print_r($row['contenu']);
					echo "</div>";

					echo "<div class='auteur'>";
					print_r($row['auteur']);
					echo "</div>";
								
					echo"<div class='date_de_creations'>";
					print_r($row['date_de_creations']);
					echo"</div>";



		}

	}else {

		echo "0 results";

	}
	


?>
</div>
</body>
</html>
