<!doctype html>
<html lang="fr">
<head>
  <meta charset="utf-8">
  <title>Etnakitor</title>
  <link rel="stylesheet" href="css/css.css">
  <script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
</head>

<body>
  <div id="title">
  	<h1>Etnakitor</h1>
  </div>
  <div id="content">
  	<div id="question"><h2></h2></div>
  </div>

  <div id="utek">
  <img src="http://www.clipartlord.com/wp-content/uploads/2014/09/robot29-201x240.png" alt="I'm Utek!">
</div>
  
  <div class="reponse">
  	<div class="wrapper">
  		<input type="radio" name="choice" id="yes">
  		<label for="yes" id="yes">Oui</label>
  		<input type="radio" name="choice" id="no">
  		<label for="no" id="no">Non</label>
  		<div class="main">
  			<div class="inner"></div>
 		</div>
 	</div>
 </div>
</div>
<script type="text/javascript" >

window.onload = function showquestion(str){
  var texte;
  var custom_url = "API/question.php";

  $.ajax({
    type: "GET",
    dataType: "json",
    url: custom_url,

    error:function(msg, string){
      alert( "Error !: " + string );
    },

    success:function(data){
      $.each(data, function(key, value){
          console.log("each: " + key + ":" + value);
      })
      $( "#api_id" ).text(function() {
        data["id"];
      })
      var question = data['question'];
      $("#question, h2").text(question);
    }
  }
);}

var texte;
var test =0;
var custom_url = "API/question.php";
var url_result = "API/result.php?cheveux='long'&sexe='F'&sexe='marron'";



$(function () {
    $('#yes').on('click', function () {
        var Status = $(this).val();
        $.ajax({
          type: "GET",
          dataType: "json",
          url: custom_url,

          error:function(msg, string){
            alert( "Error !: " + string );
          },

          success:function(data){
           
            

            var url_question = "API/groupe.php?id="+data['id'];
            console.log(url_question);
            $.getJSON( url_question, function( json ) {
              var tableau_question = JSON.parse(JSON.stringify(json));
              console.log(tableau_question);

              for (var i = 0; i < tableau_question.length; i++) {
                if(test == 0){
                  custom_url = custom_url + "?";
                  test++;
                }
                else
                  custom_url = custom_url + "&";


                custom_url = custom_url + "ok[]=" + tableau_question[i];
              };
              
            })


            
            var question = data['question'];
            $("#question, h2").text(question);




            $.getJSON( url_result, function( json ) {
              var test = JSON.parse(JSON.stringify(json));
                if (test.count > 1) {
                  console.log("trop");
                  window.location = "ajouter_personne.php";
                }
                else {
                  console.log("un seul");
                  window.location = "personnage.php?result="+test.result;
                }
            });
          }
        });
    });
});

</script>

<script type="text/javascript">


</script>

</body>
</html>