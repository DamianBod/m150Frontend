<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="java.util.List,java.util.ArrayList,java.util.Arrays,java.text.DecimalFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Warenkorb</title>
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
	<%
		if (request.getParameter("name") != null) {
			String name = request.getParameter("name");
			String desc = request.getParameter("desc");
			String preis = request.getParameter("preis");

			String chip = name + ", " + desc + ", " + preis;

			String chips = (String) session.getAttribute("waren");
			if (chips.equals("")) {
				session.setAttribute("waren", chip);
			} else {
				session.setAttribute("waren", chips + ", " + chip);
			}

			try {
				Double total = Double.parseDouble((String) session.getAttribute("tot"));
				Double res = total + Double.parseDouble(preis);
				session.setAttribute("tot", res.toString());
			} catch (Exception e) {

			}
		}
	%>
	<form>
		<div class="ui container">
			<div class="headerDiv">
				<img src="img/house.png" class="hausBild"
					onclick="window.location.href='startseite.jsp'">
				<h1 class="ui huge header"
					style="display: inline-block; font-size: 3em;">Warenkorb</h1>
				<img src="img/cart.jpg" class="cartBild"
					onclick="window.location.href='warenkorb.jsp'">
			</div>
			<div class="ui grid" style="margin-top: 60px;">
				<%
					if (session.getAttribute("waren") != null) {
						String waren = (String) session.getAttribute("waren");
						DecimalFormat df2 = new DecimalFormat("#.##");
						if (waren.equals("")) {
							out.print("<h2 class='meldungLeer'>Der Warenkorb ist leer.</h2>");
						} else {
							String einz[] = waren.split(", ");
							List<String> al = new ArrayList<String>(Arrays.asList(einz));

							for (int i = 0; i < al.size(); i += 3) {
								int img = 0;
								int j = 0;
								if (al.get(i).equals("Zweifel Paprika Chips") || al.get(i).equals(" Zweifel Paprika Chips")) {
									img = 1;
								} else if (al.get(i).equals("Zweifel Nature Chips") || al.get(i).equals(" Zweifel Nature Chips")) {
									img = 2;
								} else if (al.get(i).equals("Zweifel Salt&Vinegar Chips") || al.get(i).equals(" Zweifel Salt&Vinegar Chips")) {
									img = 3;
								} else if (al.get(i).equals("Zweifel Provencale Chips") || al.get(i).equals(" Zweifel Provencale Chips")) {
									img = 4;
								} else if (al.get(i).equals("Zweifel Moutarde Chips") || al.get(i).equals(" Zweifel Moutarde Chips")) {
									img = 5;
								} else if (al.get(i).equals("Zweifel Piri-Piri Chips") || al.get(i).equals(" Zweifel Piri-Piri Chips")) {
									img = 6;
								}

								out.print("<div class='row' style='padding: 10px;'>");
								out.print("<img src='img/chips" + img + ".jpg' class='warBild'>");
								out.print("<div class='ten wide column'>");
								out.print("<h3>" + al.get(i) + "</h3>");
								out.print("<h4>" + al.get(j = i + 1) + "</h4>");
								out.print("<h4>" + al.get(j = i + 2) + " CHF</h4>");
								out.print("</div>");
								out.print("<div class='two wide right floated column'>");
								out.print("<button class='ui button' type='submit' formaction='loschen.jsp' name='but' value='"
										+ i + "'>Entfernen</button>");
								out.print("</div>");
								out.print("</div>");
							}
							out.print("<div class='row' style='padding: 10px;'>");
							out.print("<div class='three wide left floated column'>");
							out.print("<h3>Total: " + df2.format(Double.parseDouble((String) session.getAttribute("tot")))
									+ "0 CHF</h3>");
							out.print("</div>");
							out.print("<div class='two wide right floated column'>");
							out.print("<button class='ui button' type='submit' formaction='loschen.jsp' name='but' value='all'>Warenkorb löschen</button>");
							out.print("</div>");
							out.print("<button class='ui button' type='submit' formaction='bestellung.jsp'>Bestellen</button>");
							out.print("</div>");
							out.print("</div>");
						}
					}
				%>
			</div>
			<footer class="ui center aligned container">Created by Damian
			Bodmer, Marcel Plesky</footer>
		</div>
	</form>
</body>
</html>
