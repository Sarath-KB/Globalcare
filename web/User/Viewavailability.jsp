<%-- 
    Document   : Viewavailability
    Created on : 5 Mar, 2022, 3:21:20 PM
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
        <title>JSP Page</title>
    </head>
    <body>
         <%@include file="Header.jsp" %>
        <br>
        <div id="tab">
        <h1>View Availability</h1>
        <form method="post">
            <table border="1" cellpadding="10">
                <tr>
                     <th>  Date</th>
                     <th> From Date</th>
                     <th>To Date</th>
                     <th>Action</th>
                                                         
                     
                 <%
                                                       String selu="select * from tbl_davailability where doctor_id='"+request.getParameter("doid")+"'";
                                                        ResultSet ls=con.selectCommand(selu);
                                                         int i=0;
                                                         while(ls.next())
                                                         {
                                                           i++;
                                                           
                                                      %>
                                                      
                <tr>
                    <td><%=ls.getString("da_date")%></td>
                    <td><%=ls.getString("da_fromtime")%></td>
                    <td><%=ls.getString("da_totime")%></td>
                    <td><a href="Bookslot.jsp?daid=<%=ls.getString("da_id")%>"><font color="blue">Book Slot</font></a>
                </tr>
                <%
                     }
                %>
                </tr>
            </table>
        </form>
    </div>
    
  </body>
    <br><br>
    <%@include file="Footer.jsp" %>
</html>
