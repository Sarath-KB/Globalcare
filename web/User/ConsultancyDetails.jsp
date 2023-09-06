<%-- 
    Document   : ConsultancyDetails
    Created on : 5 Mar, 2022, 4:13:08 PM
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
        <title>Consultancy Details Page</title>
    </head>
    <body>
         <%@include file="Header.jsp" %>
        <br>
        <div id="tab">
        <%
        if(request.getParameter("btnsave")!=null)
        {
            String ins="insert into tbl_cdetails(cd_description,gtoken_id,user_id,cd_bookingdate)values('"+request.getParameter("txtdes")+"','"+request.getParameter("tokenid")+"','"+session.getAttribute("userid")+"',curdate())";
           out.println(ins);
           con.executeCommand(ins);
           String upd="update tbl_generatetoken set token_bookstatus='1' where gtoken_id='"+request.getParameter("tokenid")+"'";
            con.executeCommand(upd);
            response.sendRedirect("Searchhospital.jsp");
        }
        %>
        <h1>Consultancy Details</h1>
        <form method="post">
            <table border="1" cellpadding="10">
               
                    <%
                        String sel="Select * from tbl_generatetoken gt inner join tbl_davailability da on gt.da_id=da.da_id inner join tbl_doctors dr on da.doctor_id=dr.doctors_id";
                          ResultSet ls=con.selectCommand(sel);
                          int i=0;
                          if(ls.next())
                          {
                            
                          i++;
                        %>
                         <tr>
                        <td>Doctor</td>
                        <td><%=ls.getString("doctors_name")%></td>
                         </tr>
                         
                         <tr>
                         <td>Slot Number</td>
                         <td><%=ls.getString("token_no")%></td>
                         </tr>
                         <tr>
                          <td>Date</td>
                          <td><%=ls.getString("da_date")%></td>
                         </tr>
                         <tr>
                           <td>Doctor</td>
                           <td><%=ls.getString("doctors_name")%></td>
                         </tr>
                         <tr>
                            <td>From Time</td>
                            <td><%=ls.getString("da_fromtime")%></td>
                         </tr>
                         <tr>
                             <td>To Time</td>
                             <td><%=ls.getString("da_totime")%></td>
                         </tr>
                         
                         <tr>
                             <td>Description</td>
                             <td><textarea name="txtdes"></textarea></td>
                         </tr>
                             <%
                          }
                             %>
                             <tr>
                                 <td colspan="2" align="center"><input type="submit" name="btnsave" value="Save"</td>
                             </tr>
               
            </table>
        </form>
    </div>
  </body>
    <br><br>
    <%@include file="Footer.jsp" %>
</html>
