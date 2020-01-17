<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Zweifel Paprika Chips</title>
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
<body id="root">
	<form action="warenkorb.jsp">
		<div class="ui container">
			<div class="headerDiv">
				<img src="img/house.png" class="hausBild"
					onclick="window.location.href='startseite.jsp'">
				<h1 class="ui huge header"
					style="display: inline-block; font-size: 3em;">Produkt</h1>
				<img src="img/cart.jpg" class="cartBild"
					onclick="window.location.href='warenkorb.jsp'">
			</div>
			<div class="ui two column grid" style="margin-top: 60px;">
				<%
					String prod = request.getParameter("prod");
					if (prod.equals("1")) {
						out.print("<div class='column'>");
						out.print("<img src='img/chips1.jpg' class='prodBild'>");
						out.print("</div>");
						out.print("<div class='column'>");
						out.print("<h2>Zweifel Paprika Chips</h2>");
						out.print("<h4>Die klassischen und würzigen Paprika Chips von Zweifel.</h4>");
						out.print("<br> <br> <br>");
						out.print("<h4>1 Packung</h4>");
						out.print("<h4>4.50 CHF</h4>");
						out.print("<br> <br>");
						out.print("<input type='hidden' name='name' value='Zweifel Paprika Chips'>");
						out.print(
								"<input type='hidden' name='desc' value='Die klassischen und würzigen Paprika Chips von Zweifel.'>");
						out.print("<input type='hidden' name='preis' value='4.50'>");
						out.print("<button class='ui button' type='submit'>Zum Warenkorb hinzufügen</button>");
						out.print("</div>");
						out.print("</div>");
					} else if (prod.equals("2")) {
						out.print("<div class='column'>");
						out.print("<img src='img/chips2.jpg' class='prodBild'>");
						out.print("</div>");
						out.print("<div class='column'>");
						out.print("<h2>Zweifel Nature Chips</h2>");
						out.print("<h4>Die klassischen salzigen Nature Chips von Zweifel.</h4>");
						out.print("<br> <br> <br>");
						out.print("<h4>1 Packung</h4>");
						out.print("<h4>4.20 CHF</h4>");
						out.print("<br> <br>");
						out.print("<input type='hidden' name='name' value='Zweifel Nature Chips'>");
						out.print(
								"<input type='hidden' name='desc' value='Die klassischen salzigen Nature Chips von Zweifel.'>");
						out.print("<input type='hidden' name='preis' value='4.20'>");
						out.print("<button class='ui button' type='submit'>Zum Warenkorb hinzufügen</button>");
						out.print("</div>");
						out.print("</div>");
					} else if (prod.equals("3")) {
						out.print("<div class='column'>");
						out.print("<img src='img/chips3.jpg' class='prodBild'>");
						out.print("</div>");
						out.print("<div class='column'>");
						out.print("<h2>Zweifel Salt&Vinegar Chips</h2>");
						out.print("<h4>Die neuen Salt&Vinegar Chips von Zweifel.</h4>");
						out.print("<br> <br> <br>");
						out.print("<h4>1 Packung</h4>");
						out.print("<h4>5.20 CHF</h4>");
						out.print("<br> <br>");
						out.print("<input type='hidden' name='name' value='Zweifel Salt&Vinegar Chips'>");
						out.print("<input type='hidden' name='desc' value='Die neuen Salt&Vinegar Chips von Zweifel.'>");
						out.print("<input type='hidden' name='preis' value='5.20'>");
						out.print("<button class='ui button' type='submit'>Zum Warenkorb hinzufügen</button>");
						out.print("</div>");
						out.print("</div>");
					} else if (prod.equals("4")) {
						out.print("<div class='column'>");
						out.print("<img src='img/chips4.jpg' class='prodBild'>");
						out.print("</div>");
						out.print("<div class='column'>");
						out.print("<h2>Zweifel Provencale Chips</h2>");
						out.print("<h4>Die neuen Provencale Chips von Zweifel.</h4>");
						out.print("<br> <br> <br>");
						out.print("<h4>1 Packung</h4>");
						out.print("<h4>5.20 CHF</h4>");
						out.print("<br> <br>");
						out.print("<input type='hidden' name='name' value='Zweifel Provencale Chips'>");
						out.print("<input type='hidden' name='desc' value='Die neuen Provencale Chips von Zweifel.'>");
						out.print("<input type='hidden' name='preis' value='5.20'>");
						out.print("<button class='ui button' type='submit'>Zum Warenkorb hinzufügen</button>");
						out.print("</div>");
						out.print("</div>");
					} else if (prod.equals("5")) {
						out.print("<div class='column'>");
						out.print("<img src='img/chips5.jpg' class='prodBild'>");
						out.print("</div>");
						out.print("<div class='column'>");
						out.print("<h2>Zweifel Moutarde Chips</h2>");
						out.print("<h4>Die neuen Moutarde Chips von Zweifel.</h4>");
						out.print("<br> <br> <br>");
						out.print("<h4>1 Packung</h4>");
						out.print("<h4>5.20 CHF</h4>");
						out.print("<br> <br>");
						out.print("<input type='hidden' name='name' value='Zweifel Moutarde Chips'>");
						out.print("<input type='hidden' name='desc' value='Die neuen Moutarde Chips von Zweifel.'>");
						out.print("<input type='hidden' name='preis' value='5.20'>");
						out.print("<button class='ui button' type='submit'>Zum Warenkorb hinzufügen</button>");
						out.print("</div>");
						out.print("</div>");
					} else if (prod.equals("6")) {
						out.print("<div class='column'>");
						out.print("<img src='img/chips6.jpg' class='prodBild'>");
						out.print("</div>");
						out.print("<div class='column'>");
						out.print("<h2>Zweifel Piri-Piri Chips</h2>");
						out.print("<h4>Die neuen Piri-Piri Chips von Zweifel.</h4>");
						out.print("<br> <br> <br>");
						out.print("<h4>1 Packung</h4>");
						out.print("<h4>5.20 CHF</h4>");
						out.print("<br> <br>");
						out.print("<input type='hidden' name='name' value='Zweifel Piri-Piri Chips'>");
						out.print("<input type='hidden' name='desc' value='Die neuen Piri-Piri von Zweifel.'>");
						out.print("<input type='hidden' name='preis' value='5.20'>");
						out.print("<button class='ui button' type='submit'>Zum Warenkorb hinzufügen</button>");
						out.print("</div>");
						out.print("</div>");
					}
				%>
			</div>
			<footer class="ui center aligned container">Created by Damian
			Bodmer, Marcel Plesky</footer>
		</div>
	</form>
</body>
</html>
