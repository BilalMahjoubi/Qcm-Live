<?php

	function accueil() {
		$nom = $_SESSION['profil']['nom'];
		$grp = $_SESSION['profil']['num_grpe'];
		require ("./vue/eleve/accueil.tpl");
	}

	function deconnexion() {
		SESSION_DESTROY();
		$url = ".";
		header ("Location:" . $url) ;
	}
	
	function listes() {
		require ("./modele/eleve/testBD.php");
		$liste = liste_tests();
		require("./vue/eleve/listeTestEleve.tpl");
	}
	
	function testQCM() {
		require ("./modele/eleve/qcmBD.php");
		$qcm = liste_qcm();
		require("./vue/eleve/listeQCMEleve.tpl");
	}
	
	function listeReponse() {
		require ("./modele/eleve/reponseBD.php");
		$rep = liste_rep();
		require("./vue/eleve/listeQuestionEleve.tpl");
	}
	
	function afficherRes()
	{
		require ("./modele/eleve/resultatBD.php");
		ajouterRep();
		$res = liste_res();
		require("./vue/eleve/listeRes.tpl");
	}
	function ajouterRep(){
		// require ("./vue/eleve/listeQuestionEleve.tpl");
		var_dump($_POST);
		require	("./modele/eleve/ajouterRes.php");
		var_dump($_POST);
		ajoutRes();
	
	// var_dump($_POST);
	
	}

?>
