<?php
try {
	$bdd = new PDO('mysql:host=localhost;dbname=etnakitor;charset=utf8', 'root', 'root');
}
catch(Exception $e) {
	die('Erreur : '.$e->getMessage());
}


$sql = 'SELECT group_id FROM question WHERE id = '. $_GET['id'];

$req = $bdd->query($sql);

while ($donnees = $req->fetch())
{
	 $result["group_id"] = $donnees['group_id'];
}

$sql2 = 'SELECT id FROM question WHERE group_id = '.$result["group_id"];


$req2 = $bdd->query($sql2);
$result2 = array();
while ($donnees2 = $req2->fetch())
{
	$result2[] = $donnees2['id'];
}
// print_r($result2);

echo json_encode($result2);
?>