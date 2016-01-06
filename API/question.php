<?php
	


try {
	$bdd = new PDO('mysql:host=localhost;dbname=Etnakitor;charset=utf8', 'root', 'root');
}

catch(Exception $e) {
	die('Erreur : '.$e->getMessage());
}

$rand = rand(0, 6);
$sql = 'SELECT * FROM question WHERE id = '.$rand;

$req = $bdd->query($sql);
// $req->execute(array('uid' => securite_bdd($_POST['nom'])));
while ($donnees = $req->fetch())
{
	//echo $donnees['question'];\
	$id = $donnees['id'];
	$question[$id] = $donnees['question'];
}
$req->closeCursor();

$json = json_encode($question);
//echo $json;;
?>