<?php


function accueil() {
	estConnecté();
	$nom = $_SESSION['profil']['nom'];
	require ("./vue/professeur/accueil.tpl");
	//var_dump($_SESSION);
}


function deconnexion(){
	estConnecté();
	require("./modele/utilisateurBD.php");
	changerEtatConnexion();
	$_SESSION['profil'] = array();
	header ("Location:" .'index.php') ;
}


function changerEtatTest(){
	estConnecté();
	require ("./modele/professeur/recupererTest.php");
	$liste_tests = recupererTest();
	require ("./vue/professeur/changerEtatTest.tpl");
}

function addTest(){
	estConnecté();
	require	("./modele/professeur/ajoutTest.php");
	require ("./vue/professeur/addTest.tpl");
	$ajout=require ("./vue/professeur/styleCSS/addTest.css");
	//var_dump($_POST);
	ajoutTest();
}

function rmTest(){
	estConnecté();
	require ("./modele/professeur/recupererTest.php");
	require ("./modele/professeur/removeTest.php");
	$liste = recupererTest();
	require	("./vue/professeur/rmTest.tpl");
	removeTest();
}

function modifyTest(){
	estConnecté();
	require	("./vue/professeur/modifyTest.tpl");
}


function creerQuestion(){
	estConnecté();
	require ("./modele/professeur/recupererTheme.php");
	$liste = recupererTheme();
	//var_dump($liste);
	require("./vue/professeur/ajoutQuestion.tpl");
	require("./modele/professeur/ajoutQuestion.php");
	//var_dump($_POST);
	ajoutQuestion();
}

function ajouterRéponses(){
	estConnecté();
	require ("./modele/professeur/recupererQuestions.php");
	$liste = recupererQuestions();
	//var_dump($liste);
	require("./vue/professeur/ajoutReponse.tpl");
	require ("./modele/professeur/ajoutReponse.php");
	ajoutTest();

}

function ajouterQCM(){
	estConnecté();
	require ("./modele/professeur/recupererQuestions.php");
	$liste = recupererQuestions();
	require("./vue/professeur/addQCM.tpl");
	//require("./modele/professeur/question.php");
	// var_dump($_POST['question']);
	// $liste = ajoutQCM();
	// var_dump($liste);
}

function voirEleve(){
	require("./modele/professeur/recupererListeClasses.php");
	$classes = recupererClasses();
	require("./vue/professeur/voirEleveConnecte.tpl");
}


function estConnecté(){
	if(strcmp ($_SESSION['profil']['mode'],"professeur")!=0)
		header ("Location:" .'index.php');
}


