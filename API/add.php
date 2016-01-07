<?php

try {

	$bdd = new PDO('mysql:host=localhost;dbname=etnakitor;charset=utf8', 'root', 'root');

}

catch(Exception $e) {
	die('Erreur : '.$e->getMessage());
}

$sql = 'INSERT INTO `personnes` (`id`, `result`, `sexe`, `cheveux`, `couleur cheveux`, `yeux`, `service`, `lunette`, `promo`) VALUES (';
if(!empty($_GET)){
	$sql .= "WHERE ";
	foreach ($_GET as $key => $value) {
		$sql .= $key." = ".$value." ";
	}
}
$sql = $sql + ')';

	$req = $bdd->query($sql);
?>