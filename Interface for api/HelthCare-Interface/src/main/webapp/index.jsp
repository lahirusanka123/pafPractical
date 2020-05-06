<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<title>HelthCare</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" style="text/css" href="css/index.css">


<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.4.1.min.js"></script>


<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
	crossorigin="anonymous">


</head>

<body style="min-width: 550px;">

	<%@include file="index_header.jsp"%>

	<!---------------------------------------------------------------------------------------------------------------------------------------------------------------------
  											Carousel img section 
--------------------------------------------------------------------------------------------------------------------------------------------------------------------->

	<div id="demo" class="carousel slide" data-ride="carousel">
		<ul class="carousel-indicators">
			<li data-target="#demo" data-slide-to="0" class="active"></li>
			<li data-target="#demo" data-slide-to="1"></li>
			<li data-target="#demo" data-slide-to="2"></li>
			<li data-target="#demo" data-slide-to="3"></li>
			<li data-target="#demo" data-slide-to="4"></li>
			 
			 
		</ul>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="image/banner (1).jpg" alt="Los Angeles" width="100%">
				<div class="carousel-caption">
					<h1>
						Welcome to HelthCare !<span
							class="glyphicon glyphicon-align-justify"></span>
					</h1>
					<p>
						Quick and effective patient scheduling
					</p>
				</div>
			</div>
			<div class="carousel-item">
				<img src="image/banner (2).jpg" alt="Chicago" width="100%">
				<div class="carousel-caption">
					<h1>Modern Hospital ward</h1>
					<p>You can reserve most suitable ward.</p>
				</div>
			</div>
			<div class="carousel-item">
				<img src="image/banner (3).jpg" alt="New York" width="100%">
				<div class="carousel-caption">
					<h1 style="text-shadow: 2px 2px 4px #000000;">We connect you to a qualified Doctor </h1>
					<p>You can now call or chat with a qualified Doctor and get immediate medical advice 24/7</p>
				</div>
			</div>
			<div class="carousel-item">
				<img src="image/banner (4).jpg" alt="Chicago" width="100%">
				<div class="carousel-caption">
					<h1>Best experienced doctors</h1>
					<p>you can easily chieck doctor list</p>
				</div>
			</div>
			<div class="carousel-item">
				<img src="image/banner (5).jpg" alt="football" width="100%">
				<div class="carousel-caption">
					<h1>Making an apoointment not dificult</h1>
					<p>simply creat account and make your appointment</p>
				</div>
			</div>

		</div>
		<a class="carousel-control-prev" href="#demo" data-slide="prev"> <span
			class="carousel-control-prev-icon"></span>
		</a> <a class="carousel-control-next" href="#demo" data-slide="next">
			<span class="carousel-control-next-icon"></span>
		</a>
	</div>
	<!---------------------------------------------------------------------------------------------------------------------------------------------------------------------
  											Navigation bar 
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------->
	<div id="nav">
		<div id="head_left">
			<a class="text-decoration-none " href="#">Home</a> <a id="hrl">|</a>
			<a class="text-decoration-none" href="#">Special Offers</a> <a id="hrl">|</a> 
			<a class="text-decoration-none" href="#">Services</a> <a id="hrl">|</a> 
			<a class="text-decoration-none" href="Appointment.jsp">Appointment Scheduling</a> <a id="hrl">|</a>


		</div>
	</div>

	<!---------------------------------------------------------------------------------------------------------------------------------------------------------------------
  											index body bar 
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------->



	<div id="bd1">
		<div id="bLeft">
			<h2>HelthCare Hospital Management System</h2>
			<p>HelthCare is a hospital management system where the registered
				users can make appointments with the registered doctors who visit
				the registered hospitals.. The ideal client base for eHospital is
				Healthcare facilities, multi-specialty clinics, and medical
				practitioners. Multi-Location functionality allows your hospitals,
				satellite clinics, and medical stores to be interconnected.
				Traditional approaches encompass paper-based information processing
				as well as resident work position and mobile data acquisition and
				presentation.</p>
		</div>
		<div id="bRight">
			<div id="availability">
				<form action="Appointment.jsp" method="post">
					<h4>Make an Appointment</h4>
					<div id="check">
						<b>Select date</b> <input type="date" name="aDate"
							class="form-control" id="ckeckIn">
					</div>

					<button type="submit" id="clearBtn" name="checkAvailability"
						class="btn btn-info">
						<b>Check Availability</b>
					</button>



				</form>
			</div>
		</div>
	</div>

	<div id="bd2">
		<h1>
			Get 20% <br> Discount
		</h1>
		<p>Make an appointment now and get a 20% discount
		<p />
		<button type="submit" id="addBtn" name="add" class="btn btn-primary">
			<b>Learn More</b>
		</button>

	</div>
	<div id="bd3">
		<img id="fun" alt="" src="image/b1 (1).jpg" width="100%">

	</div>
	<div id="bd4">
		<h1>Appointment Scheduling</h1>
		<p>Quick and effective patient scheduling.
		 
		<p />
		<button type="submit" id="addBtn" name="add" class="btn btn-primary">
			<b>Learn More</b>
		</button>

	</div>
	<div id="bd5">
		<img id="bd5Img" alt="" src="image/b1 (2).jpg" width="100%">
	</div>

	<%@include file="index_footer.jsp"%>

</body>

<script type="text/javascript">
	let today = new Date().toISOString().slice(0, 10)
	document.getElementById("ckeckIn").value = today;
	document.getElementById("ckeckIn").min = today;

	//to get tomarrow date
	var d = new Date();
	var year = d.toISOString().slice(0, 4);
	var month = d.toISOString().slice(5, 7);
	var day = d.toISOString().slice(8, 10);

	var dayint = parseInt(day);
	var day1 = dayint + 1;
	var dayString = day1.toString();
	var tommoraw = year + "-" + month + "-" + "0" + dayString;
	//var tommoraw = year+"-"+month+"-"+dayString;
	document.getElementById("ckeckOut").value = tommoraw;
	document.getElementById("ckeckOut").min = tommoraw;
</script>

</html>


