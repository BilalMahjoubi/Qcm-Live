<!DOCTYPE HTML>
<html>

	<head>

		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

		<link rel="stylesheet" href="./vue/utilisateur/styleCSS/identi.css" />
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

		<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

	</head>

	<body>
		<div class="container-fluid">

			<div class="row">

				<div class="col-md-offset-3 col-md-4">

					<div class="card-panel">

						<h4>Identification</h4>

						<br/>

						<form method="post" action="index.php?controle=utilisateur&action=identification">

							<div class="form-group">

								<label>Rôle : </label> 

								<select class="form-control" name="mode">

									<option name="mode" value="professeur" id="professeur">Professeur</option>
									<option name="mode" value="eleve" id="eleve">Etudiant</option>

								</select>

							</div>

							<div class="form-group">

								<label>Nom d'utilisateur : </label>
								<input type="text" name="nom" placeholder="Entrez votre nom d'utilisateur" />

							</div>

							<div class="form-group">

								<label>Mot de passe : </label>
								<input type="password" name="mdp" placeholder="Entrez votre mot de passe" />

							</div>

							<div class="form-group">

								<input class="waves-effect waves-light btn" name="valider" type="submit" value="Valider" />

							</div>

						</form>

						<?php

							echo $msg;

						?>

					</div>

				</div>

			</div>

			<img class="align-self-center mr-5" src="./vue/utilisateur/styleCSS/images/logo_descartes.png" height="75px" width="75px" alt="logo_descartes" style="position: absolute; bottom : 10px; left: 10px;">

		</div>

	</body>

</html>
