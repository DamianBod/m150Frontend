<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="java.net.URL,java.net.HttpURLConnection,java.io.OutputStream,java.lang.StringBuilder,java.io.InputStreamReader,java.io.BufferedReader,java.util.List,java.util.ArrayList,java.util.Arrays"%>
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
	//String command = "curl -X POST --header 'Content-Type: application/json' --header 'Accept: application/json' -d '{ \\ 'chips': 'string', \\ 'total': 0 \\ }' 'http://localhost:8081/chips-backend/createBestellung/'";
	//Process process = Runtime.getRuntime().exec(command);
	//process.destroy();
	
	URL url = new URL ("http://localhost:8081/chips-backend/createBestellung/");
	HttpURLConnection con = (HttpURLConnection)url.openConnection();
	con.setRequestMethod("POST");
	con.setRequestProperty("Content-Type", "application/json; utf-8");
	con.setRequestProperty("Accept", "application/json");
	con.setDoOutput(true);
	
	String waren = (String) session.getAttribute("waren");
	String einz[] = waren.split(", ");
	List<String> al = new ArrayList<String>(Arrays.asList(einz));
	List<String> as = new ArrayList<String>();
	int j = 0;
	
	for (int i = 0; i < al.size(); i += 3) {
		as.add(j, al.get(i));
		j++;
	}
	
	String warenS = as.toString();
	warenS = warenS.substring(1);
	warenS = warenS.substring(0, warenS.length() - 1);
	
	String jsonInputString = "{\"chips\": \"" + warenS + "\", \"total\": " + Double.parseDouble((String) session.getAttribute("tot")) + "}";
	
	try {
	    OutputStream output = con.getOutputStream();
	    output.write(jsonInputString.getBytes("utf-8"));
	}catch (Exception e) {
	    e.printStackTrace();
	}
	
	try {
		BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream(), "utf-8"));
	    StringBuilder responseB = new StringBuilder();
	    String responseLine = null;
	    while ((responseLine = br.readLine()) != null) {
	        responseB.append(responseLine.trim());
	    }
	    System.out.println(responseB.toString());
	} catch (Exception e) {
		
	}
	
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
		<footer class="ui center aligned container">Created by Damian
			Bodmer, Marcel Plesky</footer>
	</div>
</body>
</html>
