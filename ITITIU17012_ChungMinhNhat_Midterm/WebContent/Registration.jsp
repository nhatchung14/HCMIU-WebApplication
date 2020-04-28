<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title> Registration </title>
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

		%>
		<div class="registration-body">
			<h2> Member Registration </h2>
	    	
	    	<form method="POST" action="StoreBean.jsp">
				<table border="1" class="registration-table">
					<tr>
						<td> Fullname: </td>
						<td> 
							<input type="text" name="fullname" size="35" required> 
						</td>
					</tr>
					<tr>
						<td> Email: </td>
						<td> 
							<input type="text" name="email" size="35" required> 
						</td>
					</tr>
					<tr>
						<td> Username: </td>
						<td> 
							<input type="text" name="username" size="35" required> 
						</td>
					</tr>
					<tr>
						<td> Password: </td>
						<td>
							<input type="password" name="password" size="35" required> 
						</td>
					</tr>
					<tr>
						<td> Confirm password: </td>
						<td>
							<input type="password" name="confirmpassword" size="35" required> 
						</td>
					</tr>
					<tr>
						<td> 
							<input type="submit" value="Register"> 
						</td>
						<td> 
						</td>
					</tr>
				</table>
			</form>
		</div>
	</body>
</html>