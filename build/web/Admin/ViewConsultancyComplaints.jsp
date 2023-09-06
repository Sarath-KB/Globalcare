<%-- 
    Document   : ViewConsultancyComplaints
    Created on : 19 Mar, 2022, 2:57:10 PM
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
        <title>View Consultancy Complaints</title>
    </head>
    <body>
         <%@include file="Header.jsp" %>
        <br>
        <div id="tab">
        <h1 align="center">Consultancy Complaints</h1>
        <form method="post">
            <table border="1" align="center" cellpadding="10">
                <tr>
                    <td>Sl.NO</td>
                    <td>Complaint type</td>
                    <td>Complaint title</td>
                    <td>Complaint Contents</td>
                    <td>Complaint Date</td>
                    <td>Action</td>
                </tr>
                <%
                    String sel="select * from tbl_complaint c inner join tbl_cmptype ct on c.complaint_id=ct.cmptype_id inner join tbl_consultancy cd on c.consultancy_id=cd.consultancy_id";
                    ResultSet ls=con.selectCommand(sel);
                    int i=0;
                    while(ls.next())
                    {
                        i++;
                    
                    %>
                    <tr>
                        <td><%=i%></td>
                        <td><%=ls.getString("cmp_type")%></td>
                        <td><%=ls.getString("complaint_title")%></td>
                        <td><%=ls.getString("complaint_content")%></td>
                        <td><%=ls.getString("complaint_date")%></td> 
                        <td><a href="ComplaintReply.jsp?rid=<%=ls.getString("complaint_id")%>">Reply</a></td>
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
