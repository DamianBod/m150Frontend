<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Startseite</title>
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
<body>
	<%
		if (session.getAttribute("waren") == null) {
			session.setAttribute("waren", "");
		}
		if (session.getAttribute("tot") == null) {
			session.setAttribute("tot", "0.0");
		}
	%>
	<div class="ui container">
		<div class="headerDiv">
			<img src="img/house.png" class="hausBild"
				onclick="window.location.href='startseite.jsp'">
			<h1 class="ui huge header"
				style="display: inline-block; font-size: 3em;">Chipsshop</h1>
			<img src="img/cart.jpg" class="cartBild"
				onclick="window.location.href='warenkorb.jsp'">
		</div>
		<table class="ui fixed table">
			<tr>
				<td onclick="window.location.href='produkt.jsp?prod=1'"><img
					src="img/chips1.jpg" class="mainBild">
					<h5 class="mainText">Zweifel Paprika Chips</h5></td>
				<td onclick="window.location.href='produkt.jsp?prod=2'"><img
					src="img/chips2.jpg" class="mainBild">
					<h5 class="mainText">Zweifel Nature Chips</h5></td>
				<td onclick="window.location.href='produkt.jsp?prod=3'"><img
					src="img/chips3.jpg" class="mainBild">
					<h5 class="mainText">Zweifel Salt&Vinegar Chips</h5></td>
			</tr>
			<tr>
				<td onclick="window.location.href='produkt.jsp?prod=4'"><img
					src="img/chips4.jpg" class="mainBild">
					<h5 class="mainText">Zweifel Provencale Chips</h5></td>
				<td onclick="window.location.href='produkt.jsp?prod=5'"><img
					src="img/chips5.jpg" class="mainBild">
					<h5 class="mainText">Zweifel Moutarde Chips</h5></td>
				<td onclick="window.location.href='produkt.jsp?prod=6'"><img
					src="img/chips6.jpg" class="mainBild">
					<h5 class="mainText">Zweifel Piri-Piri Chips</h5></td>
			</tr>
		</table>
		<footer class="ui center aligned container">Created by Damian
			Bodmer, Marcel Plesky</footer>
	</div>
</body>
</html>