<%-- 
    Document   : MedicalHistory
    Created on : 15 Mar, 2022, 4:01:30 PM
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
        <title>Medical HIstory</title>
    </head>
    <body>
          <%@include file="Header.jsp" %>
        <br>
        <div id="tab">
        <h1 align="center">Medical History</h1>
        <form method="post">
            <table border="1" align="center" cellpadding="10">
                <tr>
                    <td>Title</td>
                    <td>Remark</td>
                    <td>Medicine</td>
                    <td>Is Major</td>
                    <td>Report</td>
                </tr>
                
                    <%
                        String sel="select * from tbl_medicalreport mr inner join tbl_cdetails cd on mr.cd_id=cd.cd_id where user_id='"+request.getParameter("userid")+"'";
                         ResultSet ks=con.selectCommand(sel);
                         int i=0;
                         while(ks.next())
                         {
                             i++;
                         
                        %>
                        <tr> <td><%=ks.getString("mr_title")%></td>
                          <td><%=ks.getString("mr_remark")%></td>
                            <td><%=ks.getString("mr_medicine")%></td>
                              <td><%=ks.getString("mr_ismajor")%></td>
                              <td><a href="../Assets/photo/<%=ks.getString("mr_report")%>" download>Download</a></td>
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
