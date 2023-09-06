<%-- 
    Document   : Complaint
    Created on : 4 Mar, 2022, 7:05:17 PM
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
        <title>Complaint Page</title>
    </head>
    <body>
         <%@include file="Header.jsp" %>
        <br>
        <div id="tab">
         <%
            if(request.getParameter("btnsnd")!=null)
            {
                  {
                String ins="insert into tbl_complaint(complaint_title,complaint_date,user_id,complaint_content,complainttype_id)values('"+request.getParameter("txtitle")+"',curdate(),'"+session.getAttribute("userid")+"','"+request.getParameter("txtcmp")+"','"+request.getParameter("sclcpmlt")+"')"; 
               con.executeCommand(ins);
                }
                  
            }
            %>
         <form method="post">
            <table border="1" align="center">
                            <tr><td>Complaint Type</td><td><select name="sclcpmlt">
                                        <option value="select">--Select--</option>
                                        <%
                                        String sel="select *  from tbl_cmptype";
                                        ResultSet rs=con.selectCommand(sel);
                                        while(rs.next())
                                        {
                                          %>
                                          <option value="<%=rs.getString("cmptype_id")%>"><%=rs.getString("cmp_type")%></option>
                                          <%
                                        }
                                        %>
                                         </select>
                            </tr>
                            <tr>
                                <td>Title</td><td><input type="text" name="txtitle" required></td>
                            </tr>
                            <tr>
                                <td>Complaint</td><td><textarea name="txtcmp"></textarea></td>
                            </tr>
                            <tr><td colspan="2" align="center"><input type="submit" name="btnsnd" value="Send Complaint">
                                <input type="submit" name="btn_cancel" value="Cancel"</td>
                       
            </table>
         </form>
    </div>
   </body>
    <br><br>
    <%@include file="Footer.jsp" %>
</html>
