<%-- 
    Document   : ComplaintReply
    Created on : 7 May, 2022, 11:13:18 AM
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
        <title>Complaint Replay Page</title>
    </head>
    <body>
         <%@include file="Header.jsp" %>
        <br>
        <div id="tab">
        <%
        if(request.getParameter("rid")!=null){
            session.setAttribute("rid", request.getParameter("rid"));
        }
        
            if(request.getParameter("btnsnd")!=null)
            {
                  
                String up="update tbl_complaint set complaint_reply='"+request.getParameter("txtrply")+"' where complaint_id='"+session.getAttribute("rid")+"'"; 
               out.println(up);
                con.executeCommand(up);    
            }
            %>
            <div id="tab">
        <h2 align="center">Complaint Reply</h2>
        <form method="post">
            <table align="center" border="1">
                <tr><th>Replay</th><td><textarea name="txtrply"></textarea></td></tr>
                <tr><th colspan="2"><input type="submit" name="btnsnd" value="Send"></th></tr>
            </table>
        </form>
            </div>
    </body>
    <%@include file="Footer.jsp" %>
</html>
