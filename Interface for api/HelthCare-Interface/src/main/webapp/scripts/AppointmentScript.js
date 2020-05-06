

$(document).ready(function() {

	$('#addBtn').click(function() { 	//button click event for add button
		
		var doctor_id =    $("#doctor").val();
		var hospital_id =  $("#hospital").val();
		var dates =  	$("#dates").val();
		var times =  	$("#times").val();
		 
		var formdata = {doctor_id: doctor_id, hospital_id: hospital_id, date: dates, time: times}
		    formdata =  JSON.stringify(formdata);

		$.ajax({
			type : 'POST',
			url : "http://localhost:8080/AppointmentService/webapi/Appointment/",
			data: formdata,
			contentType : 'application/json',
			success : function(response) {

				alert(response);
				var d = response;

				var json = JSON.parse(d);

				$("#hi").html(json.itemName);

			}
		 
		});
	});
	
	
	$('#viewAllAppointment').click(function() { 	//button click event for viewAllAppointment
		 

		$.ajax({
			type : 'GET',
			url : "http://localhost:8080/AppointmentService/webapi/Appointment/",			 
			contentType : 'application/json',
			success : function(response) {

				
				$("#appTable").html(response);
				
			}
		 
		});
	});	
	
	$('#editBtn').click(function() { 	//button click event for update
		 
		
		var appointmentId = $("#appointmentId").val();
		var patientId =     $("#patientId").val();
		var doctor_id =     $("#doctor").val();
		var hospital_id =   $("#hospital").val();
		var dates =  		$("#dates").val();
		var times =  		$("#times").val();
		 
		var formdata = {appointment_id: appointmentId, patient_id: patientId, doctor_id: doctor_id, hospital_id: hospital_id, date: dates, time: times}
		    formdata =  JSON.stringify(formdata);

		$.ajax({
			type : 'PUT',
			url : "http://localhost:8080/AppointmentService/webapi/Appointment/",
			data: formdata,
			contentType : 'application/json',
			success : function(response) {

				alert(response);
				var d = response;

				var json = JSON.parse(d);

				$("#hi").html(json.itemName);

			}
		 
		});
	});	
	
	$('#deleteBtn').click(function() { 	//button click event for update
		 
		
		var appointmentId = $("#appointmentId").val();
		 
		 
		var formdata = {appointment_id: appointmentId }
		    formdata =  JSON.stringify(formdata);

		$.ajax({
			type : 'DELETE',
			url : "http://localhost:8080/AppointmentService/webapi/Appointment/",
			data: formdata,
			contentType : 'application/json',
			success : function(response) {

				alert(response);
				var d = response;

				var json = JSON.parse(d);

				$("#hi").html(json.itemName);

			}
		 
		});
	});	
});
 

$(document).on("click", ".select", function(event) {     
	    
	$("#appointmentId").val($(this).closest("tr").find('td:eq(0)').text());     
	$("#patientId").val($(this).closest("tr").find('td:eq(1)').text());     
	$("#doctor").val($(this).closest("tr").find('td:eq(2)').text());     
	$("#hospital").val($(this).closest("tr").find('td:eq(3)').text());     
	$("#dates").val($(this).closest("tr").find('td:eq(4)').text());     
	$("#times").val($(this).closest("tr").find('td:eq(5)').text()); 
}); 


 

// 
// 
//
// function validateItem() {
//    
// document.getElementById("supError").innerHTML ="";
// document.getElementById("catError").innerHTML ="";
// document.getElementById("brandError").innerHTML ="";
// document.getElementById("nameError").innerHTML ="";
// document.getElementById("capError").innerHTML ="";
// document.getElementById("priceError").innerHTML ="";
// document.getElementById("CodeError").innerHTML ="";
// document.getElementById("barError").innerHTML ="";
// document.getElementById("altError").innerHTML ="";
//	
// var supplier =document.getElementById("Supplier");
// var mainCategory =document.getElementById("mainCategory");
// var brandName = document.getElementById("brandName");
// var itemName = document.getElementById("ItemName");
// var capacity = document.getElementById("Capacity");
// var price =document.getElementById("price");
// var itemCode =document.getElementById("ItemCode");
// var barcode = document.getElementById("Barcode");
// var alertLevel = document.getElementById("alertLevel");
//    
//    
// var numerValidate = /^[0-9]+$/;
// var alphaValidate = /^[a-zA-Z]+$/;
//    
//    
//    
//     
//    
// // supplier part
//    
// if (supplier.value.length == 0)
// {
// document.getElementById("supError").innerHTML = "- Please select the supplier
// -";
// supplier.focus();
// return false;
//            
//            
// }
//   
//    
// // mainCategory part
//    
// if (mainCategory.value.length == 0)
// {
// document.getElementById("catError").innerHTML = "- Please select main
// category -";
// mainCategory.focus();
// return false;
// }
//  
// // brandName part
//    
// if (brandName.value == 0)
// {
// document.getElementById("brandError").innerHTML = "- Brand name empty -";
// brandName.focus();
// return false;
// }
// if(brandName.value.length != 0 && !brandName.value.match(alphaValidate))
// {
// document.getElementById("brandError").innerHTML = "- please enter correct
// brand name -";
// brandName.focus();
// return false;
// }
//    
// // itemName part
//    
// if (itemName.value.length == 0)
// {
// document.getElementById("nameError").innerHTML = "- Item name empty -";
// itemName.focus();
// return false;
// }
// if(itemName.value.length != 0 && !itemName.value.match(alphaValidate))
// {
// document.getElementById("nameError").innerHTML = "- please enter correct item
// name -";
// itemName.focus();
// return false;
// }
//    
//    
//    
// // capacity part
//    
// if (capacity.value.length == 0)
// {
// document.getElementById("capError").innerHTML = "- Item capacity empty -";
// capacity.focus();
// return false;
// }
// if(capacity.value.length != 0 && !capacity.value.match(numerValidate))
// {
// document.getElementById("capError").innerHTML = "- please enter correct
// capacity -";
// capacity.focus();
// return false;
// }
//    
// // price part
//    
// if (price.value.length == 0)
// {
// document.getElementById("priceError").innerHTML = "- Empty item price -";
// price.focus();
// return false;
// }
// if(price.value.length != 0 && !price.value.match(numerValidate))
// {
// document.getElementById("priceError").innerHTML = "- please enter correct
// item price -";
// price.focus();
// return false;
// }
//    
// // itemCode part
//    
// if (itemCode.value.length == 0)
// {
// document.getElementById("CodeError").innerHTML = "- Empty item code -";
// itemCode.focus();
// return false;
// }
// if(itemCode.value.length != 0 && !itemCode.value.match(numerValidate))
// {
// document.getElementById("CodeError").innerHTML = "- please enter correct item
// code -";
// itemCode.focus();
// return false;
// }
//  
// // bar code part
//    
// if (barcode.value.length == 0)
// {
// document.getElementById("barError").innerHTML = "- Empty item barcode -";
// barcode.focus();
// return false;
// }
// if(barcode.value.length != 0 && !barcode.value.match(numerValidate))
// {
// document.getElementById("barError").innerHTML = "- please enter correct
// barcode -";
// barcode.focus();
// return false;
// }
// // alertLevel part
//    
// if (alertLevel.value.length == 0)
// {
// document.getElementById("altError").innerHTML = "- Empty item alert level -";
// alertLevel.focus();
// return false;
// }
// if(alertLevel.value.length != 0 && !alertLevel.value.match(numerValidate))
// {
// document.getElementById("altError").innerHTML = "- please enter correct alert
// level -";
// alertLevel.focus();
// return false;
// }
//    
//     
//      
//      
//    
//    
//    
//    
// }
//
 
