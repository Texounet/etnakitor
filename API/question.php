<?php

function mt_rand_except($min = 0, $max = null, $except = null)
{
    if (is_null($max))
        $max = mt_getrandmax();
 
    $list = array_diff(range($min, $max), (array)$except);
 
    return $list ? $list[array_rand($list)] : null;
}

try {

	$bdd = new PDO('mysql:host=localhost;dbname=etnakitor;charset=utf8', 'root', 'root');

}

catch(Exception $e) {
	die('Erreur : '.$e->getMessage());
}




if(empty($_GET)){
	$_GET['ok'] = '';
}


$rand = mt_rand_except(1, 19, $_GET['ok']);
//echo $rand;

$sql = 'SELECT * FROM question WHERE id = '.$rand;

$req = $bdd->query($sql);
$i=0;
// $req->execute(array('uid' => securite_bdd($_POST['nom'])));
while ($donnees = $req->fetch())
{
	//echo $donnees['question'];\
	$question['id'] = $donnees['id'];
	$question['question'] = $donnees['question'];
	$i++;
}
$req->closeCursor();

echo json_encode($question);
return json_encode($question);
?>