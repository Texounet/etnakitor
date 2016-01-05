<?php

echo "test2";	
$pdo = new PDO('mysql:host=127.0.0.1:8888;dbname=etnakitor', 'root', 'root');

$sql = "SELECT `id`, `question` FROM `question`";

// $req = $pdo->query($sql);    
// while($row = $req->fetch()) {    
//     echo '<b>'.$row['id'].'</b><br/>';    
// }

// $req->closeCursor();

// mysql_close(); 