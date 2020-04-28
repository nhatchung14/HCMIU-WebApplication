package ITITIU17012_ChungMinhNhat_Midterm;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name="Store", urlPatterns={"/Store"})

public class Store extends HttpServlet {
	private static final long serialVersionUID = 3L;
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
               throws ServletException, IOException {
        // Response content type is HTMl
        response.setContentType("text/html");
        
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
        
        // The HTML printer
        PrintWriter out = response.getWriter();
      
        // Set HTML
        String title    = "Store";
        String docType  = "<!DOCTYPE html>";
        
        out.println(docType);

        out.println("<html>");
    	// Head
        out.println("<head>");
            out.println("<title>" + title + "</title>");
            out.println("<link rel=\"stylesheet\" href=\"styles.css\">");
        out.println("</head>");
        
        // Body
        out.println("<body class=\"background\">");
        	out.println("<div class=\"store-body\">");
	            out.println("<h1> Stored Information </h1>");
	            out.println("<hr>");
	        
                out.println("<table>");
	               	// Name
                	out.println("<tr>");
	                     out.println("<td> Fullname </td>");
	                     out.println("<td>" + request.getParameter("fullname") + "</td>");                
	                out.println("</tr>");
	                
	                // Email
	                out.println("<tr>");
	                     out.println("<td> Email </td>");
	                     out.println("<td>" + request.getParameter("email") + "</td>");                
	                out.println("</tr>");
	                
	                // Username
	                out.println("<tr>");
	                     out.println("<td> Username </td>");
	                     out.println("<td>" + request.getParameter("username") + "</td>");                
	                out.println("</tr>");
	                
	                // Password
	                out.println("<tr>");
	                     out.println("<td> Password </td>");
	                     out.println("<td>" + request.getParameter("password") + "</td>");                
	                out.println("</tr>");
	                
	                // Confirmed password
	                out.println("<tr>");
	                     out.println("<td> Confirmed Password </td>");
	                     out.println("<td>" + request.getParameter("confirmpassword") + "</td>");                
	                out.println("</tr>");
	            out.println("</div>");
	        out.println("</body>");
	    out.println("</html>");
           
       }
	
       public void doPost(HttpServletRequest request, HttpServletResponse response)
               throws ServletException,IOException{
           doGet(request,response);
       }
}