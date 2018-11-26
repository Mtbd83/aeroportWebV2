<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="style.css" rel="stylesheet" media="all" type="text/css"> 
<style type="text/css" media="all">@import "style.css";</style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div class="container">

		<header>
			<h1>AJC-SOPRA AIRPORT</h1>
		</header>

		<ul>
		  <li><a href="/aeroportWeb/home">Home</a></li>
		  <li><a href="/aeroportWeb/account">Create Customer Account</a></li>
		  <li><a href="/aeroportWeb/login">Login</a></li>
		  <li><a href="/aeroportWeb/flightResearch">Flight Research</a></li>
		  <li style="float:right"><a class="active" href="#contact">Contact</a></li>
		</ul>
<div class="center"></div>
<h3> Please choose your status :</h3>

<br>
	<a class="btn btn-info" href="./addClientEl" > Client El</a>
	<a class="btn btn-info" href="./addClientMoral" >Client Moral</a>
	<a class="btn btn-info" href="./addClientPhysique" >Client Physique</a>
	
</div>
</div>
</body>
</html>