<%-- 
    Document   : ViewCbooking
    Created on : 12 Mar, 2022, 10:49:38 AM
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
        <title>View Consultancy Booking</title>
    </head>
    <body>
        <%@include file="Header.jsp" %>
        <br>
        <div id="tab">
        <h1 align="center">Booking Details</h1>
        <form method="post">
            <table align="center" cellpadding="10" border="1" style="border-collapse:collapse;">
                <tr>
                    <th>Sl.No</th>
                    <th>Booking  Date</th>
                     <th>Description</th>
                     <th>Token No</th>
                     <th>Doctor</th>
                     <th>Action</th>
                    <%
                   
                    String sel="Select * from tbl_cdetails cd inner join tbl_generatetoken gt on cd.gtoken_id=gt.gtoken_id inner join tbl_davailability da on gt.da_id=da.da_id inner join tbl_doctors d on da.doctor_id=d.doctors_id where consultancy_id='"+session.getAttribute("consultancyid")+"' order by cd_bookingdate";
                    
                     ResultSet ks=con.selectCommand(sel);
                                                         int i=0;
                                                         String bookStatus="0";
                                                         while(ks.next())
                                                         {
                                                           i++;
                                                           bookStatus=ks.getString("cd_status");
           
                            %>
                <tr><td><%=i%></td>
                    <td><%=ks.getString("cd_bookingdate")%></td>
                    <td><%=ks.getString("cd_description")%></td>
                     <td><%=ks.getString("token_no")%></td>
                     <td><%=ks.getString("doctors_name")%></td>
                     <%
                        if(bookStatus.equals("0")){
                     %>
                      <td>
                          <a href="BookingConfirmation.jsp?cid=<%=ks.getString("cd_id")%>">Send Confirmation</a>
                      </td>
                      <%
                        }else{
                       %>
                       <td>Already Sent</td>
                       <%
                              }
                        %>
                      </tr>
                <%
                     }
                %>
                </tr>
                  
            </table>
        </form>
    </div>
    </body>
    <br>
            <br>
            <%@include file="Footer.jsp" %>
</html>
