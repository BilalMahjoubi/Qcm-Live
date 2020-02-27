<!doctype html>
<html lang="fr">

<head>
	<meta charset="utf-8">
	<title>accueil </title>
	<link rel="stylesheet" href="vue/professeur/styleCSS/addTest.css">
</head>

<body>
	<form action ="" method="post">
		Nom du test : <input type="texte" required name="test"><br>
		Groupe : <SELECT name="grp" size="1">
			<?php 
			for($var= 200; $var<209; $var++){
			echo '<OPTION>'.$var.'<br>';
			}
			?>
		</SELECT><br>
		Date du test : <input type="date" required name="date"><br>
		Actif : <input type="checkbox" name="actif"><br>
		<div id="questions"></div>
		<input type="submit">
	</form>
</body>
</html>
