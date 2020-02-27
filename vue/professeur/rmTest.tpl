<!doctype html>
<html lang="fr">

<head>
  <meta charset="utf-8">
  <title>accueil </title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>

<body>
	<form action ="" method="post">
		Test à supprimer : <SELECT name="idtest" size="1">
		<?php 
		
		foreach($liste as $id){
			echo '<OPTION>'.$id['id_test'].'<br>';
		}
		?>
		</SELECT><br>
		<input id="valid" type="submit">
	</form>
	<!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script type="text/javascript">
		$("#valid").click(function(){
		   $("#idtest").load("#idtest");
		});
	</script>-->

</body></html>
