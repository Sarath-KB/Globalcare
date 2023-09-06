<%-- 
    Document   : ViewSlotDetails
    Created on : 15 Mar, 2022, 1:55:46 PM
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
        <title>Booked slot Details</title>
    </head>
    <body>
         <%@include file="Header.jsp" %>
        <br>
        <div id="tab">
        <h1 align="center">Booked slot Details</h1>
        <form method="post">
            <table border="1" cellpadding="10" align="center">
                <tr>
                   
                    <td>Token ID</td>
                    <td>Booked Date</td>
                    <td>Booked Date</td>
                     <td>Doctor</td>
                      <td>From Time</td>
                      <td>To Time</td>
                </tr>
                    <%
                        String sel="select * from tbl_cdetails cd inner join tbl_generatetoken gt on cd.gtoken_id=gt.gtoken_id inner join tbl_davailability da on gt.da_id=da.da_id inner join tbl_doctors d on da.doctor_id=d.doctors_id where user_id='"+session.getAttribute("userid")+"'";
                         ResultSet ks=con.selectCommand(sel);
                                                         int i=0;
                                                         while(ks.next())
                                                         {
                                                           i++;
                                                %>
                 <tr>
                    
                     <td><%=ks.getString("token_no")%></td>
                
                    <td><%=ks.getString("cd_bookingdate")%></td>  
                
                 
                    <td><%=ks.getString("cd_bookingdate")%></td>  
               
                   <td><%=ks.getString("doctors_name")%></td>  
               
                    <td><%=ks.getString("da_fromtime")%></td>  
                
                    <td><%=ks.getString("da_totime")%></td>  
            
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
