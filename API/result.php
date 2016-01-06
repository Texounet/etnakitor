<?php

try {
	$bdd = new PDO('mysql:host=localhost;dbname=Etnakitor;charset=utf8', 'root', 'root');
}
catch(Exception $e) {
	die('Erreur : '.$e->getMessage());
}


$sql = 'SELECT count(result) AS count, result FROM personnes ';

if(!empty($_GET)){
	$sql .= "WHERE ";
	foreach ($_GET as $key => $value) {
		$sql .= $key." = ".$value." ";
	}
}

echo $sql;

$req = $bdd->query($sql);
while ($donnees = $req->fetch())
{
	$nb = $donnees['count'];
	$result[$nb] = $donnees['result'];
}

echo json_encode($result);

?>