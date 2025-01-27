<%-- 
    Document   : confirmRegister
    Created on : Jun 1, 2024, 2:13:02 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Confirm Registration</title>
</head>
<body>
    <h1>Confirm Registration</h1>
    <%
        String studentId = request.getParameter("studentid");
        String name = request.getParameter("name");

        // Store the student details in session
        session.setAttribute("studentid", studentId);
        session.setAttribute("name", name);
    %>
    <p>Student ID: <%= studentId %></p>
    <p>Name: <%= name %></p>
    <form action="notificationRegister.jsp" method="post">
        <input type="submit" value="Proceed">
    </form>
</body>
</html>