<html>
<meta charset="utf-8" /> 
<head>
	<title>Etnakitor</title>
</head>
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<body>



<div id="ajaxbox"></div>
<?php echo $json; ?>
<script type="text/javascript" >
function showquestion(str){
	 var reponse = $.ajax({
           type: "GET",
           dataType:"json",
           url: "getuser.php",
           data: "question="+str,
           success: parse()
       });
	 consol.log(str);
	 alert(str);
}
</script>

</body>
</html>