<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<body>

<div class="container">

<ul>
  <li><a href="/aeroportWeb/home">Home</a></li>
  <li><a href="/aeroportWeb/account">Create Customer Account</a></li>
  <li><a href="/aeroportWeb/login">Login</a></li>
  <li><a href="/aeroportWeb/flightResearch">Flight Research</a></li>
  <li style="float:right"><a class="active" href="#contact">Contact</a></li>
</ul>

<div>
		<c:if test="${pageContext.request.userPrincipal.name != null }">
			Logged as : ${pageContext.request.userPrincipal.name } 
			<a class="btn" href="../logout">Logout</a>
		</c:if>
	</div>



<h2>WELCOME TO THE AJC AIRPORT</h2>

<p>
	<img alt="gifavion" src="img/48.gif" align="middle">
</p>
<br>

<p>
	<h2>Need for a break ? You are at the right place!</h2>
</p>
<br>

<p>
	<img alt="gifterre" src="img/34105.gif" >
</p>

</div>

</body>
</html>