<%-- 
    Document   : MyProfile
    Created on : 18 Feb, 2022, 12:05:56 PM
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
                                                       String sel="select* from tbl_consultancy  where consultancy_id='"+session.getAttribute("consultancyid")+"'";
                                                        ResultSet rs=con.selectCommand(sel);
                                                         if(rs.next())
                                                         {
                                                          
           
                                                      %>
                     
                <tr><td colspan="2" align="center"><img src="../Assets/photo/<%=rs.getString("consultancy_logo")%>" width="150" height="150"></td>
                <tr><th>Consultancy Name</th><td><%=rs.getString("consultancy_name")%></td></tr>
               
                <tr><th>Consultancy Head</th> <td><%=rs.getString("consultancy_head")%></td></tr>
               
                                                       <%
                                                         }
                                                       %>
            </table>
    </div>
    </body>
    <br>
            <br>
            <%@include file="Footer.jsp" %>
</html>
