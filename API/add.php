<?php

try {

	$bdd = new PDO('mysql:host=localhost;dbname=etnakitor;charset=utf8', 'root', 'root');

}

catch(Exception $e) {
	die('Erreur : '.$e->getMessage());
}

$req = $bdd->prepare('INSERT INTO personnes (result, sexe, cheveux, couleur_cheveux, yeux, service, lunette, promo) 
	VALUES (:result, :sexe, :cheveux, :couleur_cheveux, :yeux, :service, :lunette, :promo');
$req->execute(array(
	'result' => $_GET['result'],
	'sexe' => $_GET['sexe'],
	'cheveux' => $_GET['cheveux'],
	'couleur_cheveux' => $_GET['couleur_cheveux'],
	'yeux' => $_GET['yeux'],
	'service' => $_GET['service'],
	'lunette' => $_GET['lunette'],
	'promo' => $_GET['promo']
	));
$req->closeCursor();








// if(!empty($_GET)){
// 	$sql .= "WHERE ";
// 	foreach ($_GET as $key => $value) {
// 		$sql .= $key." = ".$value." ";
// 	}
// }
// $sql = $sql + ')';

// 	$req = $bdd->query($sql);
?>