<%-- 
    Document   : HospitalFeedback
    Created on : 7 May, 2022, 3:56:30 PM
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
        <title>Feedback view Page</title>
    </head>
    <body>
         <%@include file="Header.jsp" %>
        <br>
       
        <div id="tab">
        <h2 align="center">Feedbacks View</h2>
        <form method="post">
            <table border="1" align="center">
                <tr><th colspan="3">Hospital Feedback</th></tr>
                <tr>
                    <td>Sl.No</td>
                    <td>Feedback description</td>
                    <td> Feedback date</td>
                </tr>
                 <%
                    String sel="select * from tbl_feedback c inner join tbl_hospital h on c.hospital_id=h.hospital_id";
                    ResultSet ls=con.selectCommand(sel);
                    int i=0;
                    while(ls.next())
                    {
                        i++;
                    
                    %>
                    <tr>
                        <td><%=i%></td>
                        <td><%=ls.getString("feedback_description")%></td>
                        <td><%=ls.getString("feedback_date")%></td>
                    </tr>
                        <%
                    }
                           %>
            </table>
        </form>
          </div>
    </body>
    <%@include file="Footer.jsp" %>
</html>
