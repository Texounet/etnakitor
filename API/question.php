<?php

function mt_rand_except($min = 0, $max = null, $except = null)
{
    if (is_null($max))
        $max = mt_getrandmax();
 
    $list = array_diff(range($min, $max), (array)$except);
 
    return $list ? $list[array_rand($list)] : null;
}

try {
	$bdd = new PDO('mysql:host=localhost;dbname=Etnakitor;charset=utf8', 'root', 'root');
}

catch(Exception $e) {
	die('Erreur : '.$e->getMessage());
}


$rand = mt_rand_except(1, 6, $_GET['ok']);
//echo $rand;
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
echo $json;
?>