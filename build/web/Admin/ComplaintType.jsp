<%-- 
    Document   : Complaint_type
    Created on : 4 Mar, 2022, 6:45:11 PM
    Author     : rinus
--%>
<%@include file="SessionValidator.jsp" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Complaint Type Page</title>
    </head>
    <body>
         <%@include file="Header.jsp" %>
        <br>
        <div id="tab">
        <%
        if(request.getParameter("btnsave")!=null)
        {
            String ins="insert into tbl_cmptype(cmp_type)values('"+request.getParameter("txt1")+"')";
                con.executeCommand(ins);
                response.sendRedirect("ComplaintType.jsp");
                
        }
        %>
        <div id="tab">
        <h1 align="center">Complaint Type</h1>
        <form method="post">
                <table border="1" align="center" cellpadding="10" style="border-collapse: collapse">
                    <tr><th>Complaint Type</th><th><input type="text" name="txt1" autocomplete="off" required></td></tr>
                <tr><td colspan="2" align="center"><input type="submit" name="btnsave" value="save"><input type="submit" name="btncancel" value="Cancel"></td></tr>
                </table>
        </form>
          </div>
    </body>
    <%@include file="Footer.jsp" %>
</html>
