<%-- 
    Document   : Consultancyreg
    Created on : 18 Feb, 2022, 10:58:16 AM
    Author     : rinus
--%>
<%@include file="SessionValidator.jsp" %>
   <jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page  import="java.sql.ResultSet" %>
   
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultancy Regstration</title>
    </head>
    <body>
        <%@include file="Header.jsp" %>
        <br>
        <div id="tab">
        <h1 align="center">Register Here</h1>
         <form method="post" enctype="multipart/form-data" action="../Assets/Actionpages/Consultancyaction.jsp">
            <table border="1" align="center" cellpadding="10" style="border-collapse: collapse">
                <tr><th>Consultancy Name</th><td><input type="text" name="txtname" autocomplete="off" title="Name Allows Only Alphabets,Spaces and First Letter Must Be Capital Letter" pattern="^[A-Z]+[a-zA-Z ]*$"/></td></tr>
                <tr><th>Consultancy Head</th><td><input type="text" name="txthd" autocomplete="off"/></td></tr>
                  <tr><th>Consultancy Logo</th><td><input type="file" name="txtimg"></td></tr>
                  <tr><th>Password</th><td><input type="password" name="txtpswrd"></td></tr>
                         <tr><th>Confirm Password</th><td><input type="password" name="txtpswrd"></td></tr>
                         <tr><th colspan="2" align="center"><input type="submit" name="btnsave" value="Save"></th></tr>
                        </table>
         </form>
    </div>
    </body>
    <br><br>
    <%@include file="Footer.jsp" %>
</html>
