<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	if (session.getAttribute("name") == null) {
		response.setHeader("Cache-Control", "no-cache, no-store, must re-validate");
		response.sendRedirect("loginPage.jsp");
	}
	response.setHeader("Cache-Control", "no-cache, no-store, must re-validate");
	out.println("<p style='text-align:right;'>" + "User name=" + request.getSession().getAttribute("name")
			+ "</p>");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update </title>
</head>
<body>
<h2>Update Student Details</h2>
<form action="/login/updateStudent" method="post">
    <table>
        <tr>
            <td> Student id to be updated:</td>
            <td><input type="number" name="id"  required/></td>
        </tr>
        <tr>
            <td> <select name="Value" >      
				<option Value="name" pattern="(?=.*[a-z])(?=.*[A-Z]).{4,}">name</option>      
				<option Value="department" pattern="[A-Z]{3}">department</option>   
				</select>  
			</td>
            <td><input type="text" name="respectiveinput" required /></td>
        </tr>
        
    </table>
    <input type="submit" value="Submit"/>
</form>
<a href="/home.jsp"> Home </a>
</body>
</html>