<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 	 
  <link rel="stylesheet" style="text/css" href="css/index_Header.css">
  <script src="scripts/login.js"></script>  
          
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>	
  <!-- Latest compiled JavaScript -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.4.1.min.js"></script>
  

  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">  
</head>
<body>

	
<!---------------------------------------------------------------------------------------------------------------------------------------------------------------------
  											Login section section 
--------------------------------------------------------------------------------------------------------------------------------------------------------------------->    
	
<div id = "pageBody" class="collapse">
            
             
        
             
				<div id = "loginform-back"  >
				 
                <label style="color: #2439AD" id="signInfont"> <b> Sign In <br> </b></label>
                 <a id="close"  data-toggle="collapse" data-target="#pageBody"><i class="material-icons" style="font-size:36px">cancel</i> </a> 
                    
                    <form action="loginServlet" method="POST" onsubmit="return validateLogin()">  <!-- ---------------------- login form begin -->        
                    <table width="100%" >
                        <tr>
                            <td  ><label class="Stext"  ><b>Email Address</b>  </label> <label id="vEmail"></label> </td>
                        </tr>
                        <tr>
                            <td><input class="form-control"    type="text" name="email" id="tEmail" min="5"  >  </td>                
                        </tr>
                        <tr>
                            <td><label class="Stext"  ><b>Password</b> </label>  <label id="vPassword"></label> </td>
                        </tr>
                        <tr>
                            <td><input class="form-control"  type="password" name="pwd" id="pwd"  >  </td>
                        </tr>
                        <tr>
                            <td><br>Not a Member ? <a href="signUp.jsp" class="text-info" >  Join Here</a>              
                        
                            <input id="signinButton" class="btn btn-info" style="float: right" type="submit" name="login" value="Sign in" onclick="validateLogin()"> </td>  
                        </tr>  
                        <tr>
                        	<td><label  ><b></b><br> </label>   </td>
                        </tr>  
                   </table>
                  </form>  <!-- ----------------------------- end of the form -->       
                </div>
             
        </div>	
<!---------------------------------------------------------------------------------------------------------------------------------------------------------------------
  											header section 
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------->    

    <div id="head">
	  
		<div id="head_left">
	 	 <a class="text-decoration-none " href="index.jsp">Home</a>  <a id="hrl">|</a> 
	 	 <a class="text-decoration-none" href="#">Special Offers</a>  <a id="hrl">|</a> 
	 	 <a class="text-decoration-none" href="#">Services</a>  <a id="hrl">|</a> 
	 	 <a class="text-decoration-none" href="#">Location</a>			
	 	 <button id="topNavtoggler" data-toggle="collapse" data-target="#head_right_callapse"> <i class="fa fa-align-justify"></i> </button>     
    	
	 	</div>
		<div id="head_right" >
		
			<% if(session.getAttribute("login") == null){ %>
        		 <a class="text-decoration-none" href="#">Hi Welcome to HelthCare</a>  <a id="hrl">|</a>
	        <%	}else{ 
	        	String name = (String)session.getAttribute("Name"); %> 
	        	<a class="text-decoration-none" href="userProfile.jsp">Hi <% out.println(name);%> </a>  <a id="hrl">|</a>
			<% } %>	
					
		 
	 	  
	 	 <a class="text-decoration-none" href="Appointment.jsp">My Appointment</a>  <a id="hrl">|</a>
	 	 	<% if(session.getAttribute("login") == null){ %>
        		 <a id="loginText"  data-toggle="collapse" data-target="#pageBody">Log in </a>
	        <%	}else{ 
	        	String email = (String)session.getAttribute("login"); %> 
	        	<a class="text-decoration-none" href="logOut.jsp">Log out </a>
			<% } %> 	 
		      
   	 
		 
	 	</div>	
	 	<div id="head_right_callapse"  class="collapse" >
		 <a class="text-decoration-none" href="#">Hi Lahiru</a> 
	 	 <a class="text-decoration-none" href="#">Reservation</a>  
	 	 <a class="text-decoration-none" href="#">My Booking</a>  	 
		 <a id="loginText"  data-toggle="collapse" data-target="#pageBody">Log in </a>   		 
		 
	 	</div>	
	</div>	

</body>
</html>