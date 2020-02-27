<?php


//recuperer les testes
function ajoutQuestion(){
	require ("./modele/connexionBD.php") ; 
	try {
		$nb = 1;
		$cde_ajt = $pdo->prepare('INSERT INTO question VALUES(NULL,:idthe,:titre,:texte,:bMultiple)');
		
		if($_POST!= null){
			while(isset($_POST[("titreQ".$nb)])){
				$id = $_POST['theme'.$nb];
				$titre = htmlspecialchars($_POST['titreQ'.$nb]);
				$texte = htmlspecialchars($_POST['texteQ'.$nb]);
				$cde_ajt->bindParam(':idthe', $id);
				$cde_ajt->bindParam(':titre', $titre);
				$cde_ajt->bindParam(':texte', $texte );
				if(isset($_POST['multiple'.$nb])){
					$i=1;
				}
				else{
					$i=0;
				}
				$cde_ajt->bindParam(':bMultiple', $i);
				$b_test=$cde_ajt->execute();
				//var_dump($b_test);
				if($b_test)
					//var_dump("ajout question ".$nb);
				$nb+=1;
			}
		}
	}
	catch (PDOException $e) {
		echo utf8_encode("Echec de select : " . $e->getMessage() . "\n");
		die(); // On arrĂªte tout.
	}
}
?>