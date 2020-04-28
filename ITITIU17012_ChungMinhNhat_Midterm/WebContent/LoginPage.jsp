<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!-- Importing libraries -->
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title> LoginPage </title>
		<link rel="stylesheet" href="styles.css">
	</head>
	<body>
        <div class="login-body">
	        <form method="post" action="LoginPage.jsp">
				<table class="center">
					<% 	
						if (request.getParameter("login") != null) { 
							if (request.getParameter("name").equals("midterm") && 
								request.getParameter("password").equals("22042020")) {
							     	HttpSession sess = request.getSession(); 	// Get the session
							        sess.setAttribute("logged", "1");  			// Set logged=1
									sess.setMaxInactiveInterval(20);			// Maximum inactivity is 20 seconds
									
									response.sendRedirect("Registration.jsp");
							} else { 
					%>
					<tr>
						<td colspan="2"> Sorry username or password error ! </td>		
					<tr>	
					<%		}
						} 
					%>
	        
		        	<!-- Row -->
		        	<tr>
		        		<!-- Data -->
		        		<td> Name </td>
		        		<!-- Data -->
		        		<td> <input type="text" 	name="name"		placeholder="" required/> </td>
		        	</tr>
		        	
		        	<!-- Row -->
		        	<tr>
		        		<!-- Data -->
		        		<td> Password </td>
		        		<!-- Data -->
		        		<td> <input type="password" 	name="password"		placeholder="" required/> </td>
		        	</tr>
		        	<tr>
		        		<!-- Data -->
		        		<td colspan="2"> <input type="submit" 	name="login"	value="Login"/> </td>
		        	</tr>
		        </table>
	        </form>
	    </div>
	</body>
</html>