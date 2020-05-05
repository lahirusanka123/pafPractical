<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Kitchen Item</title>
	<link rel="stylesheet" href="messi/messi.css" />
    <meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" style="text/css" href="css/item.css">    
    <script src="scripts/AppointmentScript.js"></script>
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
    	<a id="leftNevTEXTbody" href="inventory.jsp"><span class="glyphicon glyphicon-th"></span> Dashboard</a><br>
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
    
       
   <form  > 
    <div id="left">
    
         <div class="form-group">
          <b>Select Doctor </b> <b id="supError" ></b>
          <select id="doctor"  name="Supplier" class="form-control"   >
               <option >Select Supplier </option>
        
        
          </select>           
         </div>   
        
        <div class="form-group">
          <b>Select Hospital: </b> <b id="catError" ></b>
         <select id="hospital" name="mainCategory" class="form-control"   >
              <option >Select Supplier </option>
               
        
          </select> 
        </div> 
        
        <div class="form-group">
          <b>Date:  </b> <b id="capError" ></b>
          <input id="date" name="Capacity"  class="form-control" type="date" placeholder="Enter Item Capacity (KG / L)"> 
        </div>
        
    	<div class="form-group">
         <b>Time:</b> <b id="priceError" ></b>
         <input  id="time"  type="time" class= "form-control" name="price" placeholder="Enter Item Price"/>
        </div>
        
         
    </div>
     
    <div id="right">          
        <div  id="item_btn"> 
            <button type="button"    id="addBtn" name="add" class="btn btn-primary"><span class="glyphicon glyphicon-plus"></span> Add</button> 
            <button type="button" id="editBtn" name="edit" class="btn btn-success"><span class="glyphicon glyphicon-edit"></span> Update</button>           
            <a data-toggle="modal" data-target="#exampleModal"  id="deleteBtn"  class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span> Delete</a>
        				
			<!-- Modal -->
			<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			  <div class="modal-dialog" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h2 class="modal-title" id="exampleModalLabel"><b>Are you Sure ?</b></h2>
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			          <span aria-hidden="true">&times;</span>
			        </button>
			      </div>
			      <div class="modal-body">
			         You want be able to revert this!
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
			        <button  name="delete" type="submit" class="btn btn-danger">Yes Delete it!</button>
			      </div>
			    </div>
			  </div>
			</div> 
        </div>  
    </div>  
   </form>
   <div id="rightBottom">
   	  <form method="post" action="addKitchenItemServlet"> 
     	<button type="submit" id="clearBtn" name="new" class="btn btn-info"> <span class="glyphicon glyphicon-refresh"></span> Generate Next Item Code </button>
      </form>
   </div>        
   <%@include file="index_footer.jsp" %> 
</body>
</html>
 