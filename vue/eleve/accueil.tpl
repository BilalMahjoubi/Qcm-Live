<!DOCTYPE HTML>
<html lang="fr">

	<head>

		<meta charset="utf-8">

		<title>Accueil QCM Live</title>

		<link rel="stylesheet" href="vue/eleve/styleCSS/accueil.css">
		<link rel="stylesheet" href="vue/eleve/styleCSS/fonts.css">
		<meta name="viewport" content="width=device-width, user-scalable=no,initial-scal=1.0,maximum-scale=1.0,minimum-scale=1.0">

	</head>

	<body>
	
		<?php 
		
			include('./vue/eleve/header.tpl'); 
		
		?>
		
		<div class="Accueil">

			<?php
				if ($_SESSION['profil']) {
					echo "<h3>Bienvenue élève " . $_SESSION['profil']['nom'] . " ! Vous êtes dans le groupe " . $_SESSION['profil']['num_grpe'] . ".</h3><br/>";
				}
			?>

		</div>

		<script src="http://code.jquery.com/jquery-latest.js"></script>
		<script src ="vue/professeur/js/menu.js"></script>

		<!-- <div class="grid-container"> -->

			<!-- <div class="IMAGE"> -->

				<!-- <img id="logo" src="./vue/eleve/styleCSS/images/Image1.png" /> -->
				<!-- <figcaption>QCM Live Etudiant</figcaption> -->

			<!-- </div> -->

			<!-- <div class="MENU"> -->

			

			<!-- </div> -->
			
			<!-- <div class="ImgFondSite"> -->
				
			<!-- </div> -->

			<!-- <div class="Options"> -->

				<!-- <p>Options</p> -->

			<!-- </div> -->

			<!-- <div class="Contenu"> -->

				<!-- <div class="Accueil"> -->
				
				

				<!-- </div> -->

				<!-- <div class="Sous-contenu"> -->

					<!-- <div class="BureauVirtuel"> -->

						<!-- <p>Vous trouverez la liste des tests de l'étudiant en cliquant ci-dessous :</p> -->

						<!-- <a href="index.php?controle=eleve&action=listes">Tests étudiant</a> -->

						<!-- <a href="index.php?controle=eleve&action=testQCM">Tests QCM</a> -->
						
					<!-- </div> -->

				<!-- </div> -->

			<!-- </div> -->

			<!-- <div class="Footer"> -->

				<!-- 2019 - Julien ZHANG | Jaswinder SINGH | Gauthier DASSE | Bilal MAHJOUBI -->

			<!-- </div> -->

			<!-- <div class="Plus"> -->

				<!-- <form method="post" action="index.php?controle=eleve&action=deconnexion"> -->

					<!-- <input type="submit" value="Se déconnecter" /> -->

				<!-- </form> -->

			<!-- </div> -->

		<!-- </div> -->

	</body>

</html>
