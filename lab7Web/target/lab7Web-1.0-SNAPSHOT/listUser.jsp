<%-- 
    Document   : listUser
    Created on : Jun 1, 2024, 3:04:04 PM
    Author     : User
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>User Lists</title>
</head>
<body>
    <p>List of Users</p>
    <table border="1">
        <thead>
            <tr>
                <th>User Id</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th colspan="2">Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="user" items="${users}">
                <tr>
                    <td><c:out value="${user.userId}"/></td>
                    <td><c:out value="${user.firstName}"/></td>
                    <td><c:out value="${user.lastName}"/></td>
                    <td>
                        <a href="UserController?action=edit&userId=<c:out value="${user.userId}"/>">Update</a>
                    </td>
                    <td>
                        <a href="UserController?action=delete&userId=<c:out value="${user.userId}"/>">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <br>
    <p><a href="UserController?action=insert">Add User</a></p>
</body>
</html>
