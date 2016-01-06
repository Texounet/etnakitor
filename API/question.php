<?php

function mt_rand_except($min = 0, $max = null, $except = null)
{
    if (is_null($max))
        $max = mt_getrandmax();
 
    $list = array_diff(range($min, $max), (array)$except);
 
    return $list ? $list[array_rand($list)] : null;
}

try {
<<<<<<< HEAD
	$bdd = new PDO('mysql:host=localhost;dbname=etnakitor;charset=utf8', 'root', '');
=======
	$bdd = new PDO('mysql:host=localhost;dbname=Etnakitor;charset=utf8', 'root', 'root');
>>>>>>> 7a77e16561477ea036149b78f59adcbb55ad2ee3
}

catch(Exception $e) {
	die('Erreur : '.$e->getMessage());
}

<<<<<<< HEAD
if(empty($_GET))
	$_GET[]
=======
if(!empty($_GET)){
>>>>>>> 7a77e16561477ea036149b78f59adcbb55ad2ee3
$rand = mt_rand_except(1, 6, $_GET['ok']);
//echo $rand;

$sql = 'SELECT * FROM question WHERE id = '.$rand;
}
else{
	$sql = 'SELECT * FROM question';
}
$req = $bdd->query($sql);
$i=0;
// $req->execute(array('uid' => securite_bdd($_POST['nom'])));
while ($donnees = $req->fetch())
{
	//echo $donnees['question'];\
	$id = $donnees['id'];
	$question[$id] = $donnees['question'];
	$i++;
}
$req->closeCursor();

print_r($question);
?>