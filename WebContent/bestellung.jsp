<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bestellbestätigung</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.js"></script>
<link rel="stylesheet" type="text/css" href="stylesheets/style.css">
</head>
<%
	String command = "curl -X POST --header 'Content-Type: application/json' --header 'Accept: application/json' -d '{ \\ 'chips': 'string', \\ 'total': 0 \\ }' 'http://localhost:8081/chips-backend/createBestellung/'";
	Process process = Runtime.getRuntime().exec(command);
	process.destroy();
	session.setAttribute("waren", "");
	session.setAttribute("tot", "0.0");
%>
<body id="root">
	<div class="ui container">
		<div class="headerDiv">
			<img src="img/house.png" class="hausBild"
				onclick="window.location.href='startseite.jsp'">
			<h1 class="ui huge header"
				style="display: inline-block; font-size: 3em;">Bestellbestätigung</h1>
			<img src="img/cart.jpg" class="cartBild"
				onclick="window.location.href='warenkorb.jsp'">
		</div>
		<br> <br> <br> <br>
		<h2>
			Ihre Bestellung wurde abgeschickt.&nbsp;&nbsp;&nbsp; <a
				href="startseite.jsp">Zurück zur Startseite</a>
		</h2>
	</div>
</body>
</html>