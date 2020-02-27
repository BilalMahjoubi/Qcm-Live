<!doctype html>
<html lang="fr">

<head>
  <meta charset="utf-8">
  <title>accueil </title>
</head>

<body>
	<form action ="" method="post">
		Nom du test : <input type="texte" name="test"><br>
		Groupe : <SELECT name="grp" size="1">
		<?php 
		for($var= 200; $var<209; $var++){
			echo '<OPTION>'.$var.'<br>';
		}
		?>
		</SELECT><br>
		Date du test : <input type="date" name="date"><br>
		Actif : <input type="checkbox" name="actif"><br>
		<div id="questions"></div>
		<p id="ajout">Ajout Question</p>
		<p id="modif">Modifie Question</p>
		<p id="suppression">Supprimer Question</p>
		<script type="text/javascript">
		<?php  echo $m; ?>
			/*let ajout = document.getElementById('ajout');
			ajout.addEventListener('click',ajoutQuestion();

			function ajoutQuestion() {
				alert();

				let contenant = document.getElementById('questions');

				let titreQuestion = document.createElement('p');
				titreQuestion.textContent = 'Question : ';

				let question = document.createElement('input');
				question.setAttribute('type','texte');
				question.setAttribute('name','nomQuestion');

				// let ajoutRéponse = document.createElement('p');
				// ajoutRéponse.textContent = "Ajouter une réponse possible";
				// ajoutRéponse.addEventListener('click',ajouterRéponse(contenant));



				contenant.appendChild(titreQuestion)
				contenant.appendChild(question);
				// contenant.appendChild(ajoutRéponse);
				contenant.appendChild(document.createElement('br'));
			}

			// function ajouterRéponse(element){

			// 	let contenant = element;

			// 	let texteRéponse = document.createElement('p');
			// 	texteRéponse.textContent = 'Réponse : ';

			// 	let réponse = document.createElement('input');
			// 	réponse.setAttribute('type','texte');
			// 	réponse.setAttribute('name','nomQuestion');

			// 	let valide = document.createElement('input');
			// 	valide.setAttribute('type','checkbox');
			// 	valide.setAttribute('name','nomQuestion');

			// 	contenant.appendChild(texteRéponse)
			// 	contenant.appendChild(réponse);
			// 	contenant.appendChild(valide);
			// 	contenant.appendChild(document.createElement('br'));
			// }*/

			</script>
		<input type="submit">
	</form>

	


</body></html>
