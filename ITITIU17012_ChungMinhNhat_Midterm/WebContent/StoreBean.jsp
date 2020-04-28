<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title> StoreBean </title>
		<link rel="stylesheet" href="styles.css">
	</head>
	<body>
		<% 
			// Check if loggedin yet
	        HttpSession sess = request.getSession(false);
			if (sess == null || sess.getAttribute("logged") == null) {
				response.sendRedirect("LoginPage.jsp");
			} else {
				String symbol = (String) sess.getAttribute("logged");
				if (!symbol.equals("1")) {
					response.sendRedirect("LoginPage.jsp");
				}
			}

			// Check password matching
	        String password = request.getParameter("password");
	        String confirm 	= request.getParameter("confirmpassword");
	        if (password != null && confirm != null && !password.equals(confirm)) {
	        	response.sendRedirect("Registration.jsp");
	        }
		%>
		
		<div class="store-body">
			<h1> Stored Information with Bean </h1>
			<hr>
		
			<jsp:useBean id="storeBean"
					 	class="ITITIU17012_ChungMinhNhat_Midterm.StoreBean" />
			<jsp:setProperty name="storeBean" property="*" />
			<table>
				<tr>
					<td> Fullname </td>
					<td> <jsp:getProperty name="storeBean"
										  property="fullname"/> </td>
				</tr>
				<tr>
					<td> Email </td>
					<td> <jsp:getProperty name="storeBean"
										  property="email"/> </td>
				</tr>
				<tr>
					<td> Username </td>
					<td> <jsp:getProperty name="storeBean"
										  property="username"/> </td>
				</tr>
				<tr>
					<td> Password </td>
					<td> <jsp:getProperty name="storeBean"
										  property="password"/> </td>
				</tr>
				<tr>
					<td> Confirm Password </td>
					<td> <jsp:getProperty name="storeBean"
										  property="confirmpassword"/> </td>
				</tr>
			</table>
		</div>
	</body>
</html>
