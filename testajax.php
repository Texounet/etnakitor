<html>
<meta charset="utf-8" /> 
<head>
	<title>Etnakitor</title>
</head>
<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<body>



<div id="ajaxbox"></div>

<script type="text/javascript" >

window.onload = function showquestion(str){
	 jQuery.ajax({
           type: "GET",
           dataType:"json",
           url: "/API/question.php",
           data: "question",
           success: function (data) { 
           	console.log('ajax');
    }
       });
}
</script>

</body>
</html>