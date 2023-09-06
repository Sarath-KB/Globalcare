<%-- 
    Document   : Editprofile
    Created on : 18 Feb, 2022, 10:31:33 AM
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
        <title>Edit Profile</title>
    </head>
 
        
  <body>
        <%@include file="Header.jsp" %>
        <br>
        <div id="tab">
        <%
        if(request.getParameter("btnedit")!=null)
             {  
               
                    String up="Update tbl_doctors set doctors_name='"+request.getParameter("txtname")+"',doctors_contact='"+request.getParameter("txtcontact")+"',doctors_email='"+request.getParameter("txtemail")+"',doctors_address='"+request.getParameter("txtaddr")+"' where doctors_id='"+session.getAttribute("doctorid")+"'";
                     con.executeCommand(up);
                    response.sendRedirect("Editprofile.jsp");
              
             }
        %>
        <h1 align="center">Edit your Profile </h1>
        <form method="post" >
            <table border="1" cellpadding="10" align="center">
                <tr>
                     <%
                                                       String sel="select * from tbl_doctors where doctors_id='"+session.getAttribute("doctorid")+"'";
                                                        ResultSet rs=con.selectCommand(sel);
                                                         if(rs.next())
                                                         {
                                                          
           
                                                      %>
                <th>Name</th><td><input type="text" name="txtname" value="<%=rs.getString("doctors_name")%>"></td></tr>
                <tr> <th>Contact</th><td><input type="text" name="txtcontact" value="<%=rs.getString("doctors_contact")%>"></td></tr>
                <tr> <th>Email</th><td><input type="text" name="txtemail" value="<%=rs.getString("doctors_email")%>"></td></tr>
                <tr>  <th>Address</th><td><textarea name="txtaddr"><%=rs.getString("doctors_address")%></textarea></td></tr>
                <tr><td colspan="2" align="center"><input type="submit" name="btnedit" value="Edit Profile"></td>
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
