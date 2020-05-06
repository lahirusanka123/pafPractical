

$(document).ready(function() {

	$('#addBtn').click(function() { 	//button click event for add button
		
		if(validaAppointment()){
			
			var patientId =    $("#patientId").val();
			var doctor_id =    $("#doctor").val();
			var hospital_id =  $("#hospital").val();
			var dates =  	$("#dates").val();
			var times =  	$("#times").val();
			 
			var formdata = {patient_id: patientId, doctor_id: doctor_id, hospital_id: hospital_id, date: dates, time: times}
			    formdata =  JSON.stringify(formdata);
	
			$.ajax({
				type : 'POST',
				url : "http://localhost:8080/AppointmentService/webapi/Appointment/",
				data: formdata,
				contentType : 'application/json',
				success : function(response) {
					
					if(response == "Appointment details inserted"){
						
						alertOpen(response, "success");
						
					}else {
						
						alertOpen(response, "error");
					}
					 
	
				}
			 
			});
		}
	});
	
	
	$('#viewAllAppointment').click(function() { 	//button click event for viewAllAppointment
		 
		
		$("#appointmentId").val("");		     
		$("#hospital").val("");     
		$("#doctor").val("");     
		$("#dates").val("");     
		$("#times").val(""); 

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
		 
		if(validaAppointment()){
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
	
					alertOpen(response, "success");
	
				}
			 
			});
		}
	});	
	
	$('#deleteBtn').click(function() { 	//button click event for update
		 
		if(validaAppointment()){
			var appointmentId = $("#appointmentId").val(); 
			 
			var formdata = {appointment_id: appointmentId }
			    formdata =  JSON.stringify(formdata);
	
			$.ajax({
				type : 'DELETE',
				url : "http://localhost:8080/AppointmentService/webapi/Appointment/",
				data: formdata,
				contentType : 'application/json',
				success : function(response) {
	
					alertOpen(response, "success");
	
				}
			 
			});
		}
	});
	
	$(document).on("click", ".select", function(event) {     
	    
		$("#appointmentId").val($(this).closest("tr").find('td:eq(0)').text());     
		$("#patientId").val($(this).closest("tr").find('td:eq(1)').text());     
		$("#hospital").val($(this).closest("tr").find('td:eq(2)').text());     
		$("#doctor").val($(this).closest("tr").find('td:eq(3)').text());     
		$("#dates").val($(this).closest("tr").find('td:eq(4)').text());     
		$("#times").val($(this).closest("tr").find('td:eq(5)').text()); 
	}); 
	
	
	
	
	
});

$.ajax({
	type : 'GET',
	url : "http://localhost:8080/DoctorService/webapi/Doctor/",			 
	contentType : 'application/json',
	success : function(response) {
		
		$("#doctor").append(response);
		
	}
 
});

$.ajax({
	type : 'GET',
	url : "http://localhost:8080/HospitalService/webapi/Hospital/",			 
	contentType : 'application/json',
	success : function(response) {
		
		$("#hospital").append(response);
		 
	}
 
});
  
 
 function validaAppointment() { 
	
	 var doctor_id =    $("#doctor")[0];
	 var hospital_id =  $("#hospital")[0];
	 var dates =  	$("#dates")[0];
	 var times =  	$("#times")[0];  
	 
	 doctor.style.borderColor = "";
	 hospital.style.borderColor = "";
	 dates.style.borderColor = "";
	 times.style.borderColor = "";
	  
	 var Noerror = true;
  
    
	 if (doctor_id.value === '') {
         Noerror = false;
         doctor.style.borderColor = "red";
     }
	 if (hospital_id.value === '') {
		 Noerror = false;
		 hospital.style.borderColor = "red";
	 }
	 if (dates.value === '') {
		 Noerror = false;
		 dates.style.borderColor = "red";
	 }
	 if (times.value === '') {
		 Noerror = false;
		 times.style.borderColor = "red";
	 }
	 
	 if (!Noerror) {

		 alertOpen("Please Fill Mandatory Fields !", "error");
     }
	 
	 return Noerror;
	 
	  
 }