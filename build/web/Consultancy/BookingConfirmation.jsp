<%-- 
    Document   : BookingConfirmation
    Created on : 12 Mar, 2022, 11:46:07 AM
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
        <title>Booking Confirmation</title>
    </head>
    <body>
        <%@include file="Header.jsp" %>
        <br>
        <div id="tab">
        <%
        if(request.getParameter("btnSend")!=null)
        {
        String up="update tbl_cdetails set cd_reply='"+request.getParameter("txtdes")+"',cd_status='1' where cd_id='"+request.getParameter("cid")+"'";
       
        con.executeCommand(up);
        response.sendRedirect("ViewCbooking.jsp");
           
        }
        %>
        <h1 align="center">Booking Confirmation</h1>
        <form method="post">
            <table border="1" cellpadding="10" align="center">
                <tr>
                    <%  
                     String sel="Select * from tbl_cdetails cd inner join tbl_generatetoken gt on cd.gtoken_id=gt.gtoken_id inner join tbl_davailability da on gt.da_id=da.da_id inner join tbl_doctors d on da.doctor_id=d.doctors_id inner join tbl_user u on cd.user_id=u.user_id where cd_id='"+request.getParameter("cid")+"'";
                     ResultSet ks=con.selectCommand(sel);
                                                         int i=0;
                                                         if(ks.next())
                                                         {
                                                           i++;
                                                %>
                <tr>
                    <th colspan="2" align="center">Booked By</th>
                </tr>
                <tr>
                    <td>Patient Track ID</td><td><%=ks.getString("user_id")%></td>
                </tr>
                <tr>
                    <td>Name</td><td><%=ks.getString("user_name")%></td>
                </tr>
                <tr>
                    <td>Contact</td><td><%=ks.getString("user_contact")%></td>
                </tr>
                <tr>
                    <td>Email</td><td><%=ks.getString("user_email")%></td>
                </tr>
                <tr>
                    <td>Gender</td><td><%=ks.getString("user_gender")%></td>
                </tr>
                <tr>
                    <td>DOB/Age</td><td><%=ks.getString("user_name")%></td>
                </tr>
                <tr>
                    <th colspan="2" align="center">Consultancy Details</th>
                </tr>
                <tr>
                    <td>Token No</td><td><%=ks.getString("token_no")%></td>
                </tr>
                
                <tr>
                    <td>Doctor name</td>
                    <td><%=ks.getString("doctors_name")%></td>
                </tr>
                
                <tr>
                    <td>Description</td>
                    <td><%=ks.getString("cd_description")%></td>
                </tr>
                <tr>
                    <td colspan="2"><textarea placeholder="Enter Confirmation Data" cols="100" name="txtdes"></textarea></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" name="btnSend" value="Send Mail Confirmation"></td>
                </tr>
            </table>
                <%}%>
        </form><br><br>
        </div>
    </body>
</html>
