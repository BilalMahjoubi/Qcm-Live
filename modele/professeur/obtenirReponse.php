<?php


// function ajoutQCM(){
	//
	// echo ($_POST['question']);
	// $_POST['question'] = 1;
	if (isset($_POST['question'])) {
		//
		require ("../connexionBD.php"); 
		try {
			$cde_res = $pdo->prepare("SELECT * FROM `etudiant` WHERE num_grpe = :grp AND bConnect = 1");
			$cde_res->bindParam(':grp', $_POST['question']);
			$b_res = $cde_res->execute();
			if($b_res){
				$res_res = $cde_res->fetchAll(PDO::FETCH_ASSOC);
				foreach($res_res as $res){
					echo $res['nom'].' ';
					echo $res['prenom'].' ; ';
				}
			}
		}
		catch (PDOException $e) {
			echo utf8_encode("Echec de select : " . $e->getMessage() . "\n");
			die(); // On arrète tout.
		}
	}
// }


