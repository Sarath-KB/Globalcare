<%-- 
    Document   : Schedulelist
    Created on : 18 Feb, 2022, 3:06:49 PM
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
        <title>Schedule List</title>
    </head>
    <body>
          <%@include file="Header.jsp" %>
        <br>
        <div id="tab">
            
                         <table border="1" cellpadding="10"></table>
                                         <h1 align="center">Schedule List</h1>
        <form method="post">
            <table border="1" cellpadding="10" align="center">
                <tr>
                    <th>Sl.No</th>
                   
                    <th>From Time</th>
                    <th>To Time</th> 
                    <th>Date</th>
                </tr>
                 <%
                                                       String selu="select* from tbl_davailability  where doctor_id='"+ session.getAttribute("doctorid")+"'";
                                                        ResultSet ks=con.selectCommand(selu);
                                                         int i=0;
                                                         while(ks.next())
                                                         {
                                                           i++;
           
                                                      %>
                     
                                                       <tr>
                                                        <td><%=i%></td>
                                                           <td><%=ks.getString("da_fromtime")%></td>
                                                           <td><%=ks.getString("da_totime")%></td>
                                                           <td><%=ks.getString("da_date")%></td>
                                                          
                                                          
                   
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


