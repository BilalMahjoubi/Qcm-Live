<!DOCTYPE HTML>
<html lang="fr">

	<head>
	
		<meta charset="utf-8">
		
		<title>Accueil QCM Live</title>
		
		<link rel="stylesheet" href="./vue/eleve/styleCSS/ListeTests.css" />
		
		
	</head>

	<body>
	
		<div class="tableau">
						
			<table>
			
				<h3>Liste des tests pour l'étudiant</h3>
				<br/>
				<br/>
				<tr>
					<th></th>
					<th>Numéro du test</th>
					<th>Titre du test</th>
					<th>Numéro du groupe</th>
					<th>Date du test</th>
				</tr>
				
				<?php
				
					foreach ($liste as $test) {
						echo '<tr><th>';
						echo '<td>' . $test['id_test'] . '</td>';
						echo '<td>' . $test['titre_test'] . '</td>';
						echo '<td>' . $test['num_grpe'] . '</td>';
						echo '<td>' . $test['date_test'] . '</td>';
						echo '</th></tr>';
					}

				?>

			</table>
		
		</div>
		
		<form method="post" action="index.php?controle=eleve&action=accueil">
		
			<br/>
			<br/>
			<input type="submit" value="Retour" />

		</form>
		
	</body>
	
</html>
