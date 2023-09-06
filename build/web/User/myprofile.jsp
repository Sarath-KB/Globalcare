<%-- 
    Document   : myprofile
    Created on : 9 Feb, 2022, 2:38:06 PM
    Author     : rinus
--%>
<%@include file="SessionValidator.jsp" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Profile</title>
    </head>
    <body>
         <%@include file="Header.jsp" %>
        <br>
        <div id="tab">
        <h1 align="center">MY PROFILE</h1>
        <form method="post">
            <table border="1" cellpadding="10" align="center">
                <tr>
                 <%
                                                       String sel="select * from tbl_user where user_id='"+session.getAttribute("userid")+"'";
                                                        ResultSet rs=con.selectCommand(sel);
                                                         if(rs.next())
                                                         {
                                                          
           
                                                      %>
                     
                <tr><td colspan="2"><img src="../Assets/photo/<%=rs.getString("user_photo")%>" width="150" height="150"></td>
                <tr><th>Name</th><td><%=rs.getString("user_name")%></td></tr>
                <tr><th>Contact</th> <td><%=rs.getString("user_contact")%></td></tr>
                <tr><th>Email</th> <td><%=rs.getString("user_email")%></td></tr>
                <tr><th>Address</th> <td><%=rs.getString("user_address")%></td></tr>
               
                                                       <%
                                                         }
                                                       %>
            </table>
        </form>
    </div>
   </body>
    <br><br>
    <%@include file="Footer.jsp" %>
</html>
