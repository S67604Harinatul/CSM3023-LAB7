<%-- 
    Document   : editUser
    Created on : 29 May 2024, 4:07:10 pm
    Author     : user
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Edit User</title>
</head>
<body>
    <h1>Editing User Profile</h1>
    <form name="frmEditUser" action="UserController" method="POST">
        <table border="0">
            <tbody>
                <tr>
                    <td>User ID:</td>
                    <td><input type="text" name="userid" readonly value="<c:out value='${user.userId}' />" size="25" /></td>
                </tr>
                <tr>
                    <td>First Name:</td>
                    <td><input type="text" name="firstname" value="<c:out value='${user.firstName}' />" size="40" /></td>
                </tr>
                <tr>
                    <td>Last Name:</td>
                    <td><input type="text" name="lastname" value="<c:out value='${user.lastName}' />" size="40" /></td>
                </tr>
                <tr>
                    <td><input type="hidden" name="action" value="edit" /></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Submit" name="submit" />
                        <input type="reset" value="Cancel" name="cancel" />
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
