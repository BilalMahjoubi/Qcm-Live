<!doctype html>
<html lang="fr">

<head>
  <meta charset="utf-8">
  <title>accueil </title>
</head>

<body>

<table>
	<tr>
		<th></th>
		<th>Numéro du test</th>
		<th>Titre du test</th>
		<th>Numéro du Groupe</th>
		<th>Date du test</th>
		<th>Actif</th>
	</tr>

	<?php
		foreach($liste_tests as $test){
			echo '<tr><th>';
				echo '<td >'.$test['id_test'].'</td>';
				echo '<td contenteditable="true">'.$test['titre_test'].'</td>';
				echo '<td>'.$test['num_grpe'].'</td>';
				echo '<td>'.$test['date_test'].'</td>';
				if ($test['bActif']){
					echo '<td><input type="checkbox" name="actif" checked disabled="disabled"></td>';
				} else {
					echo '<td><input type="checkbox" name="actif" disabled="disabled"></td>';
				}
			echo '</th></tr>';
		}
	?>
</table>
</body>
</html>
