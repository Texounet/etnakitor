<html>
<meta charset="utf-8" /> 
<head>
	<title>Etnakitor</title>
</head>
<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<body>


<div>
<h1 id="ajaxbox">

</h1>
</div>
<script type="text/javascript" >

window.onload = function showquestion(str){
	var texte;

	$.ajax({
		type: "GET",
		url: "API/question.php?ok=0",
		dataType : "html",


		error:function(msg, string){
			alert( "Error !: " + string );
		},

		success:function(data){
			texte = data;
			var newHTML = [];
			console.log(texte);
			$("#ajaxbox, h1").append(texte);
				
		}
	}
		);
}

</script>

</body>
</html>