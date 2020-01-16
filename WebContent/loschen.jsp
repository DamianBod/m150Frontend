<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="java.util.List,java.util.ArrayList,java.util.Arrays,java.text.DecimalFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Warenkorb löschen</title>
</head>
<%
	if (session.getAttribute("waren") != "" && !request.getParameter("but").equals("all")) {
		String waren = (String) session.getAttribute("waren");
		Double tot = Double.parseDouble((String) session.getAttribute("tot"));
		String einz[] = waren.split(", ");
		List<String> al = new ArrayList<String>(Arrays.asList(einz));
		String butVal = request.getParameter("but");
		al.remove(Integer.parseInt(butVal));
		al.remove(Integer.parseInt(butVal));
		tot = tot - Double.parseDouble(al.get(Integer.parseInt(butVal)));
		al.remove(Integer.parseInt(butVal));
		String warenS = al.toString();
		warenS = warenS.substring(1);
		warenS = warenS.substring(0, warenS.length() - 1);
		session.setAttribute("tot", tot.toString());
		session.setAttribute("waren", warenS);
		System.out.println(warenS);
		String redirectURL = "warenkorb.jsp";
		response.sendRedirect(redirectURL);
	} else if (session.getAttribute("waren") != "" && request.getParameter("but").equals("all")) {
		session.setAttribute("waren", "");
		session.setAttribute("tot", "0.0");
		String redirectURL = "warenkorb.jsp";
		response.sendRedirect(redirectURL);
	} else {
		String redirectURL = "warenkorb.jsp";
		response.sendRedirect(redirectURL);
	}
%>
<body>

</body>
</html>