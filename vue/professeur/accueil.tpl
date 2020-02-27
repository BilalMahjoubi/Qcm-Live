<!doctype html>
<html lang="fr">

<head>
	<meta charset="utf-8">
	<title>accueil </title>
	<link rel="stylesheet" href="vue/professeur/styleCSS/accueil.css">
	<link rel="stylesheet" href="vue/professeur/styleCSS/fonts.css">
	<meta name="viewport" contnt="width=device-width, user-scalable=no,initial-scal=1.0,maximum-scale=1.0,minimum-scale=1.0">
</head>


<body>
	<?php include('./vue/professeur/header.tpl'); ?>
	<div class="msg"><h3> <?php echo 'Bienvenue professeur '.$nom;	?> </h3></div>
	<div id="contient">
		<div class="eleves">
			<h3>Elèves connectés</h3>
			<?php voirEleve() ?>
		</div>
		<div class="test">
			<h3>Voir tests</h3>
			<?php changerEtatTest() ?>
		</div>
		<div class="ajout">
			<h3>Ajouter test</h3>
			<?php addTest() ?>
		</div>
	</div>

	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<script src ="vue/professeur/js/menu.js"></script>


</body>

</html>
