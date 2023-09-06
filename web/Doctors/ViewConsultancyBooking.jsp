<%-- 
    Document   : ViewConsultancyBooking
    Created on : 12 Mar, 2022, 1:08:12 PM
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
        <h1 align="center">View Bookings</h1>
        <form method="post">
            <table border="1" cellpadding="10" align="center">
                <tr>
                    <th colspan="6">Patient Details</th>
                    <th colspan="5">Booking Details</th>
                </tr>
                <tr>
                    <td>Sl.No</td>
                    <td>Name</td>
                    <td>Gender</td>
                    
                    <td>Contact</td>
                    <td>Email</td>
                    
                    <td>Token</td>
                    <td>Booked Date</td>
                    <td>Description</td>
                    <td>Medical Report</td>
                    <td colspan="2">Action</td>
                    
                </tr>
                    
                     <%
                    String sel="Select * from tbl_cdetails cd inner join tbl_generatetoken gt on cd.gtoken_id=gt.gtoken_id inner join tbl_davailability da on gt.da_id=da.da_id inner join tbl_user u on cd.user_id=u.user_id where da.doctor_id='"+session.getAttribute("doctorid")+"'and cd_status='1'";
                   //out.println(sel);
                     ResultSet ks=con.selectCommand(sel);
                     int i=0;
                     String reportStatus="";
                         while(ks.next())
                           {
                               reportStatus=ks.getString("cd_status");
                               //out.println(reportStatus);
                             i++;
                     %>
                <tr>
                    
                    <td><%= i %></td>
                    <td><%=ks.getString("user_name")%></td>
                    <td><%=ks.getString("user_gender")%></td>
                    <td></td>
                    <td><%=ks.getString("user_contact")%></td>
                    <td><%=ks.getString("user_email")%></td>
                    
                    <td><%=ks.getString("token_no")%></td>
                    <td><%=ks.getString("cd_bookingdate")%></td>
                    <td><%=ks.getString("cd_description")%></td>
                    <%
                    if(reportStatus.equals("1")){
                    %>
                    
                    <td><a href="MedicalReport.jsp?cid=<%=ks.getString("cd_id")%>">Upload Medical Report</a></td>
                     <td><a href="MedicalHistory.jsp?userid=<%=ks.getString("user_id")%>">View previous History</a></td>
                    <%
                    }
                    else if(reportStatus.equals("2")){
                    %>
                    <td style="background-color: #33ff00;">Already Uploaded</td>
                    <%
                            }
                   %>
                </tr>
               
                <%
                     }
                %>
               
            </table><br><br>
                <table border="1" cellpadding="10" align="center">
                     <tr>
                    <th colspan="6">Patient Details</th>
                    <th colspan="4">Booking Details</th>
                </tr>
                <tr>
                    <td>Sl.No</td>
                    <td>Name</td>
                    <td>Gender</td>
                    <td>Contact</td>
                    <td>Email</td>
                    <td>Token</td>
                    <td>Booked Date</td>
                    <td>Description</td>
                   
                      </tr>
                    
                     <%
                    String selu="Select * from tbl_cdetails cd inner join tbl_generatetoken gt on cd.gtoken_id=gt.gtoken_id inner join tbl_davailability da on gt.da_id=da.da_id inner join tbl_user u on cd.user_id=u.user_id where da.doctor_id='"+session.getAttribute("doctorid")+"'and cd_status=2";
                   //out.println(sel);
                     ResultSet ls=con.selectCommand(selu);
                     int j=0;
                         while(ls.next())
                           {
                             j++;
                     %>
                <tr>
                    
                    <td><%=j%></td>
                    <td><%=ls.getString("user_name")%></td>
                    <td><%=ls.getString("user_gender")%></td>
                   
                    <td><%=ls.getString("user_contact")%></td>
                    <td><%=ls.getString("user_email")%></td>
                   
                    <td><%=ls.getString("token_no")%></td>
                    <td><%=ls.getString("cd_bookingdate")%></td>
                    <td><%=ls.getString("cd_description")%></td>
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
