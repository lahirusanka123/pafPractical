<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>    
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">


/* function getTable() {

    

     
         
        var xmlHttp;
        if (window.XMLHttpRequest) {
            xmlHttp = new XMLHttpRequest();
        } else if (window.ActiveXObject) {
            xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
        } else {
            alert("Browser Doesnt Support Ajax!");
        }
        if (xmlHttp !== null) {

            xmlHttp.onreadystatechange = async function () {
                if (xmlHttp.readyState === 4) {

                    var res = xmlHttp.responseText;
                     
					
                    alert(res);

                   



                }
            };
            xmlHttp.open("GET", "http://localhost:8080/HelthCare/webapi/myresource/getit", true);
            xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
            xmlHttp.send("fillTable=load&");

        }
         

     

} */

$(document).ready(function(){
		
		$('#btn').click(function(){
			
				var ans = $.ajax({
					type : 'GET',
					url : "http://localhost:8080/HelthCare/webapi/Admin/Doctor",					 
					contentType : 'application/json',
					success: function (response) {
				        
				        alert(response);
				        var d = response;
				        
				        var json = JSON.parse(d);
				        
				        $("#value").html(json.itemName);
                         
				         
								
				        
				    }
					 //https://stackoverflow.com/questions/16935711/parsing-jquery-ajax-response
				}); 				 
		}); 
	}); 

</script>

<body>
 
 
<div style="padding-left: 150px;" class="row">
	<div class="col-md-offset-3 col-md-4">
		<button id="btn" type="button" class="btn btn-default" > Insert into Database </button>
	</div>	
</div>
<br>

<p id="value"></p>
 
 
</body>
</html>