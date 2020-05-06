<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

	<title>Appointment Management</title>	
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />	
	<link rel="stylesheet" href="messi/messi.css" />
    <meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" style="text/css" href="css/item.css">    
    
    <script src="messi/messi.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
          
 	
   
</head>
 

<body >
    <%@include file="index_header.jsp" %>
 
    
<!---------------------------------------------------------------------------------------------------------------------------------------------------------------------
  											left navigation bar
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------->    
  
    <div id="leftNavi"  >    	
    	    	 
    	<a id="leftNevTEXT" href="index.jsp"><span class="glyphicon glyphicon-home"></span> Home</a><br>
    	 
    	<div id="hrLine"></div>    	 
    	<a id="leftNevTEXTbody" href="KitchenItem.jsp" style="color: yellow;" ><span class="glyphicon glyphicon-apple"></span> Appointment</a><br>
    	<div id="hrLine"></div> 
    	 
    	 
    </div>     
 <!---------------------------------------------------------------------------------------------------------------------------------------------------------------------
  											top navigation bar
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------->    
    <div id="topNavi">	 
    	
    	<button id="topNavtoggler" data-toggle="collapse" data-target="#leftNavi"><span class="glyphicon glyphicon-align-justify"></span></button>     
    	<p id="topNavHeading"><span class="glyphicon glyphicon-apple"></span> Appointment Management</p> 
    </div>
 
 <!---------------------------------------------------------------------------------------------------------------------------------------------------------------------
  											kitchen inventory item body
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------->    
    
   <form  id="app_submit"> 
    <div id="left">
    
         <div class="form-group">
	          <b>Select Doctor </b>  
	          <select id="doctor"     class="form-control"  >
	               <option  value=""  > Select Doctor </option> 
	          </select>           
         </div>   
        
        <div class="form-group">
          	<b>Select Hospital: </b>  
         	<select id="hospital"  class="form-control"   >
              <option value="" > Select Hospital  </option>
               
          	</select> 
        </div> 
        
        <div class="form-group">
          <b>Date:  </b>  
          <input id="dates" name="Capacity"   class="form-control" type="date" > 
        </div>
        
    	<div class="form-group">
         <b>Time:</b>  
         <input  id="times"  type="time" class= "form-control" name="price">
        </div>
        
        <input id="appointmentId" type="hidden">
        <input id="patientId" value="9901" type="hidden">
        
         <p id="hi"></p>
    </div>
     
    <div id="right">          
        <div  id="item_btn"> 
            <button type="button"    id="addBtn"   class="btn btn-primary"> Add</button> 
            <button type="button" id="editBtn"   class="btn btn-success"> Update</button>           
            <button type="button" id="deleteBtn"  class="btn btn-danger"> Delete</button>
            
        		 
        </div> 
        <div id="rightBottom">
   	   
     		<button type="button" id="viewAllAppointment"   class="btn btn-info"> View All Appointment </button>
      
   		</div>
   		  
    </div>  
     
   </form>
   
    
    
   <div id="viewall"> 
   			<p id="appTable"></p>
   </div>  
   
       
   <%@include file="index_footer.jsp" %> 
</body>

	<script type="text/javascript">
		var datess = '<%=request.getParameter("aDate")%>';
		$("#dates").val(datess);
	</script>
	<script src="scripts/AppointmentScript.js"></script>
</html>


 