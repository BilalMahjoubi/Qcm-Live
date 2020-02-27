<!doctype html>
<html lang="fr">

<head>
	<meta charset="utf-8">
	<title>accueil </title>
</head>

<body>
	<!-- <?php var_dump($classes); ?> -->
	<div id="conteneur">
		<select name = "grp" id="classe">
			<option>Choissisez une classe</option>
			<?php ;
			foreach($classes as $classe)
				echo '<OPTION>'.$classe['num_grpe'].'</OPTION>';
				
			?>
		</select><div></div>
	</div>

	<script type="text/javascript">
		function init()	{
			let element = document.getElementById('classe');
				// action a chaque fois que la liste déroulante change de texte	
				element.addEventListener('change',recupereConnecte(element));			
		}

		function recupereConnecte(element){
			let parent = element.nextSibling;
	        	//création requête XMLHttpRequest
        	let xhr = new XMLHttpRequest();
			//qui récupèrera les réponses à ./modele/professeur/obtenirReponse.php
			xhr.open('POST', './modele/AJAX/obtenirConnecte.php', true);
			
			//quand l'état de la requête change
			xhr.onreadystatechange = function() { // On gère ici une requête asynchrone
					//si la requête est fini et que ça c'est bien déroulé
				if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200 ){
					//récupération et traitement des réponses
					let reponses = xhr.responseText.substr(0,xhr.responseText.length-2).split(" ; ");
					console.log (xhr.responseText);
					// console.log(parent);
	    			//nombre de réponses afin de les numéroter
	    			for (reponse of reponses){
	    				if(reponse === "")
	    					break;
	        				
	    				let personne = reponse.split(" ");
	    				//let resultat = reponse.split(" ! ");
	    				
	    				if(contenu.includes(personne[0])){
	    					break;
	    				}
	        				let p = document.createElement('p');
	    				p.setAttribute('id', personne[0]); 
	    				p.textContent = " "+personne[1]+ " " + personne[2];
	    				parent.appendChild(p);
	    				contenu.push(reponse[0]);
	    				//element.setAttribute('disabled','disabled');
	    			}
	        		estDeco(reponses);
	    		}

			};
    	//spécification de comment son passé les paramètres
		xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded")
		//puis la requête reçoit les paramètres puis est envoyée
		xhr.send("grp=" + element.value );
	}
	let contenu = new Array();
	init();

	function MAJ(){
		recupereConnecte(document.getElementById('classe'));
	}

	setInterval(MAJ, 1000);
	
	function estDeco(reponses){
		let tab;
		for (reponse of reponses){
			tab = reponse.split(" ")[0];
		}
			let sup = new Array();
		for(element of contenu){
			if(!tab.includes(element))
				sup.push(element);
		}
		for(element of sup){
			let supprimer = document.getElementById(element);
			supprimer.parentNode.removeChild(supprimer);
			contenu.splice(contenu.indexOf(element),1);
		}
	}	
	</script>
</body>
</html>
