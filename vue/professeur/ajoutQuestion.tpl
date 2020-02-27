<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<form action ="" method="post">
		<div id="questions"></div>
		<input type="submit">
	</form>
	<p id="ajout" onclick="ajoutQuestion()">Ajout Question</p>
	<p id="suppression" onclick="supprimerQuestion()">Supprimer Question</p>
	<script type="text/javascript">
		let nb = 1;

		function ajoutQuestion() {
			let contenant = document.getElementById('questions');
			let contenantbis = document.createElement('div');
			contenantbis.setAttribute('id',nb);


			let numQ = document.createElement('p');
			numQ.textContent = 'Question : '+nb;
			contenantbis.appendChild(numQ);

			let titreQ = document.createElement('input');
			titreQ.setAttribute('type','texte');
			titreQ.setAttribute('placeholder','Titre de la question');
			titreQ.setAttribute('name','titreQ'+nb);
			titreQ.setAttribute('required','true');
			contenantbis.appendChild(titreQ);

			let texteQ = document.createElement('input');
			texteQ.setAttribute('type','texte');
			texteQ.setAttribute('placeholder','Texte de la question');
			texteQ.setAttribute('name','texteQ' + nb);
			texteQ.setAttribute('required','true');
			contenantbis.appendChild(texteQ);

			let choix = document.createElement('p');
			choix.textContent = 'Question  à choix multiple :';
			contenantbis.appendChild(choix);


			let multiple = document.createElement('input');
			multiple.setAttribute('type','checkbox');
			multiple.setAttribute('name','multiple' + nb);
			multiple.setAttribute('value','true');
			contenantbis.appendChild(multiple);
			contenantbis.appendChild(document.createElement('br'));

			choix = document.createElement('p');
			choix.textContent = 'Theme : ';
			contenantbis.appendChild(choix);

			let theme = document.createElement('SELECT');
			theme.setAttribute('name','theme' + nb);
			theme.setAttribute('size',1);
			contenantbis.appendChild(theme);
			
			<?php			
			foreach($liste as $id){
				echo "resultat= document.createElement('OPTION');";
				echo " theme.appendChild(resultat);";
				echo " resultat.setAttribute('value',".$id["id_theme"].");";
				echo "resultat.textContent = \"".$id["titre_theme"]."\";";
			}
			?>
			
			contenantbis.appendChild(document.createElement('br'));
			contenantbis.appendChild(document.createElement('br'));
			contenant.appendChild(contenantbis);
			nb++;
		}

		function supprimerQuestion(){
			let contenant = document.getElementById('questions');
			if(contenant.childElementCount<= 0){
				alert("il n'y a pas de question");
				return;
			}
			nb--;
			contenant.removeChild(contenant.lastChild);
		}
		ajoutQuestion();
	</script>

</body>
</html>

			<!-- // function ajouterRéponse(element){

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
			// } -->