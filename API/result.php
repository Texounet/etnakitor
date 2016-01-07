<?php

try {
	$bdd = new PDO('mysql:host=localhost;dbname=etnakitor;charset=utf8', 'root', 'root');
}
catch(Exception $e) {
	die('Erreur : '.$e->getMessage());
}


$sql = 'SELECT count(result) AS count, result FROM personnes ';

if(!empty($_GET)){
	$sql .= "WHERE ";
	$test = 0;
	foreach ($_GET as $key => $value) {
		if($test > 0){
			$sql = $sql .'AND ';
		}
		$sql .= $key." = ".$value." ";
		$test++;
	}
}


$req = $bdd->query($sql);
while ($donnees = $req->fetch())
{
	$result["result"] = $donnees['result'];
	$result["count"] = $donnees['count'];;
}

echo json_encode($result);

?>