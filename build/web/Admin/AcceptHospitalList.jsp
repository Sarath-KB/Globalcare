<%-- 
    Document   : accepthospital
    Created on : 9 Feb, 2022, 1:53:00 PM
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
        <title>Accepted Hospital List</title>
    </head>
    <body>
        <%@include file="Header.jsp" %>
        <br>
        <div id="tab">
        <%
               if(request.getParameter("rid")!=null)
           {
               String up="update tbl_hospital set hospital_vstatus='2' where hospital_id=('"+request.getParameter("rid")+"')";
               con.executeCommand(up);
               
                response.sendRedirect("NewHospitalList.jsp");
           }
         %>
        
         <h1 align="center"> Accepted Hospital List</h1>
        <form method="post">
            <table border="1" cellpadding="10" align="center">
                <tr>
                    <th>Sl.No</th>
                    <th>Hospital Name</th>
                    <th>Contact</th>
                    <th>Logo</th>
                    <th>Proof</th>
                    <th colspan="2">Action</th>
                </tr>
                 <%
                                                       String sel="select* from tbl_hospital where hospital_vstatus='1'";
                                                        ResultSet rs=con.selectCommand(sel);
                                                         int i=0;
                                                         while(rs.next())
                                                         {
                                                           i++;
           
                                                      %>
                     
                                                       <tr>
                                                        <td><%=i%></td>
                                                        <td><%=rs.getString("hospital_name")%></td>
                                                        <td><%=rs.getString("hospital_contact")%></td>
                                                        <td><img src="../Assets/photo/<%=rs.getString("hospital_logo")%>" width="150" height="150"></td>
                                                        <td><img src="../Assets/photo/<%=rs.getString("hospital_proof")%>"width="150" height="150"></td>
                                                        <td><a href="NewHospitalList.jsp?rid=<%=rs.getString("hospital_id")%>">Reject</a></td>
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
