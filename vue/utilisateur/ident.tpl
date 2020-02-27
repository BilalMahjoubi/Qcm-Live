<!DOCTYPE html>
<html lang="fr">

<head>
  <meta charset="utf-8">
  <title>Identification</title>
</head>

<body>

<h3> Formulaire d'authentification </h3> 
<form action="index.php?controle=utilisateur&action=ident" method="post">

    <input name="nom" type="text" value= "<?php echo $nom;?>">Nom<br/>
    <input name="num" type="text" value= "<?php echo $num;?>">Mot De Passe<br/> 					
    <input type= "submit"  value="soumettre">
	
</form>

<div> 
	<!-- Message d'erreur -->
	<?php echo $msg;?>
</div> 

</body></html>
