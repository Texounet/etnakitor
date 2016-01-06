<?php
	
try {
	$bdd = new PDO('mysql:host=localhost;dbname=Etnakitor;charset=utf8', 'root', 'root');
}

catch(Exception $e) {
	die('Erreur : '.$e->getMessage());
}

$req = $bdd->query('SELECT * FROM question');
// $req->execute(array('uid' => securite_bdd($_POST['nom'])));
while ($donnees = $req->fetch())
{
	echo $donnees['question'];
	$question = array($donnees['question']);
}
$req->closeCursor();

?>