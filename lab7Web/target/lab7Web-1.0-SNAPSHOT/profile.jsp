<%-- 
    Document   : profile
    Created on : Jun 1, 2024, 1:54:55 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile User</title>
    </head>
    <body>
        <br/>
        <p><b>New Record</b></p>
        <form name="frmAddProfile" action="profileServlet" method="POST">
            <table border="0">
                <tbody>
                    <tr>
                        <td>Username :</td>
                        <td><input type="text" id="username" name="username" maxlength="15" required /></td>
                    </tr>
                    <tr>
                        <td>IC Number :</td>
                        <td><input type="text" id="icno" name="icno" maxlength="15" /></td>
                    </tr>
                    <tr>
                        <td>First Name :</td>
                        <td><input type="text" id="firstname" name="firstname" maxlength="50" /></td>
                    </tr>
                    <tr>
                        <td>
                            <input type="submit" value="Register" name="submit" />
                            <input type="reset" value="Cancel" name="cancel" />
                        </td>
                    </tr>
                </tbody>
            </table>
        </form>
    </body>
</html>