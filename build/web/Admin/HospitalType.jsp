<%-- 
    Document   : hospitaltype.jsp
    Created on : 8 Feb, 2022, 10:51:58 AM
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
        <title>Hospital Type</title>
    </head>
    <body>
         <%@include file="Header.jsp" %>
        <br>
        <div id="tab">
        <%
             String eid="",ename="";
               if(request.getParameter("btnsave")!=null)
            {
                if(!request.getParameter("texthidden").equals(""))
                {
                    String up="Update tbl_hospitaltype set hospitaltype_name='"+request.getParameter("txttype")+"' where hospitaltype_id='"+request.getParameter("texthidden")+"'";
                    con.executeCommand(up);
                     response.sendRedirect("HospitalType.jsp");
                }
               else
            {
                String ins="insert into tbl_hospitaltype(hospitaltype_name)values('"+request.getParameter("txttype")+"')";
                con.executeCommand(ins);
                response.sendRedirect("HospitalType.jsp");
                
            } 
            }     
         if(request.getParameter("did")!=null)
           {
               String del="delete from tbl_hospitaltype where hospitaltype_id='"+request.getParameter("did")+"'";
               con.executeCommand(del);
               
                response.sendRedirect("HospitalType.jsp");
                
           }
         if(request.getParameter("eid")!=null)
            {
                String sel1="select * from tbl_hospitaltype where hospitaltype_id=('"+request.getParameter("eid")+"')";
                ResultSet rs1=con.selectCommand(sel1);
               
                if(rs1.next())
                {
                    eid=rs1.getString("hospitaltype_id");
                    ename=rs1.getString("hospitaltype_name");
                    
                }
                
                
            }
        %>
        <div id="tab">
        <h1 align="center">Hospital Type</h1>
        <form method="post">
            <table border="1" align="center" cellpadding="10" style="border-collapse: collapse">
                 <input type="hidden" name="texthidden" value="<%=eid%>">
                 <tr><th>Hospitaltype</th><td><input type="text" name="txttype" value="<%=ename%>" autocomplete="off"></td></tr>
                <tr><td colspan="2" align="center"><input type="submit" name="btnsave" value="Save"><input type="submit" name="txtcancel" value="Cancel"></td></tr>
            </table><br><br>
            <table border="1" align="center" cellpadding="10">
                                             <tr><th>Sl.no</th>
                                                 <th>Hospital Type</th>
                                                 <th colspan="2">Action</th>
                                             </tr>
                                                   <%
                                                       String sel="select* from tbl_hospitaltype";
                                                        ResultSet rs=con.selectCommand(sel);
                                                         int i=0;
                                                         while(rs.next())
                                                         {
                                                           i++;
           
                                                      %>
                     
                                                       <tr>
                                                        <td><%=i%></td>
                                                        <td><%=rs.getString("hospitaltype_name")%></td>                  
                                                        <td><a href="HospitalType.jsp?did=<%=rs.getString("hospitaltype_id")%>">Delete</a></td>
                                                        <td><a href="HospitalType.jsp?eid=<%=rs.getString("hospitaltype_id")%>">Edit</a></td>
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
