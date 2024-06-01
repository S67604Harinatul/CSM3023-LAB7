<%-- 
    Document   : notificationRegister
    Created on : Jun 1, 2024, 2:14:22 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Notification</title>
</head>
<body>
    <h1>Registration Notification</h1>
    <%
        String studentId = (String) session.getAttribute("studentid");
        String name = (String) session.getAttribute("name");

        if (studentId != null && name != null) {
    %>
        <p>Registration successful for Student ID: <%= studentId %> and Name: <%= name %></p>
    <%
        session.invalidate(); // End the session
        } else {
    %>
        <p>No registration information found.</p>
    <%
        }
    %>
</body>
</html>