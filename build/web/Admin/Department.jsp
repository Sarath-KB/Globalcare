<%-- 
    Document   : department.jsp
    Created on : 8 Feb, 2022, 10:55:21 AM
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
        <title>Department Registration</title>
    </head>
    <body>
         <%@include file="Header.jsp" %>
        <br>
        <div id="tab">
        <%
             String eid="",ename="";
          
             if(request.getParameter("btn_save")!=null)
             {  
                if(!request.getParameter("texthidden").equals(""))
                {
                    String up="Update tbl_department set dept_name='"+request.getParameter("txtdpt")+"' where dept_id='"+request.getParameter("texthidden")+"'";
                    con.executeCommand(up);
                     response.sendRedirect("Department.jsp");
                }
                 else
                {
                   String selc="select * from tbl_department where dept_name='"+request.getParameter("txtdpt")+"'";
                   ResultSet rsc=con.selectCommand(selc);
                   if(rsc.next()){
                       %> 
        <script type="text/javascript">
            alert("Already Exist With Same Name");
            setTimeout(function() {
                window.location.href = 'Department.jsp';
            }, 40);//40millisecend it go to next page
        </script>
        <%
                   }   else
            {
                
                String ins="insert into tbl_department(dept_name)values('"+request.getParameter("txtdpt")+"')";
               
                con.executeCommand(ins);
            }
                }
             }
        
             if(request.getParameter("did")!=null)
           {
               String del="delete from tbl_department where dept_id=('"+request.getParameter("did")+"')";
               con.executeCommand(del);
               
                response.sendRedirect("Department.jsp");
                
           }
              if(request.getParameter("eid")!=null)
            {
                String sel1="select * from tbl_department where dept_id=('"+request.getParameter("eid")+"')";
                ResultSet rs1=con.selectCommand(sel1);
               
                if(rs1.next())
                {
                    eid=rs1.getString("dept_id");
                    ename=rs1.getString("dept_name");
                    
                }
                
                
            }
                  
            %>
            <div id="tab">
        <h1 align="center">Department</h1>
        <form method="post">
            <table border="1" align="center" cellpadding="10" style="border-collapse: collapse">
                <input type="hidden" name="texthidden" value="<%=eid%>">
                
                <tr><th>Department</th>
                    <td><input type="text" name="txtdpt" autocomplete="off" value="<%=ename%>" required=""></td>
                </tr>
                
                <tr>
                    <td colspan="2" align="right">
                        <input type="submit" name="btn_save" value="Save">
                        <input type="submit" name="btncancel" value="Cancel">
                    </td>
                </tr>
            </table>
                <br>
                <br>
                <hr>
             <table border="1" align="center" cellpadding="10">
                                             <tr><th>Sl.no</th>
                                                 <th>Department</th>
                                                 <th colspan="2">Action</th>
                                             </tr>
                                                   <%
                                                       String sel="select* from tbl_department";
                                                        ResultSet rs=con.selectCommand(sel);
                                                         int i=0;
                                                         while(rs.next())
                                                         {
                                                           i++;
           
                                                      %>
                     
                                                       <tr>
                                                        <td><%=i%></td>
                                                        <td><%=rs.getString("dept_name")%></td>                  
                                                        <td><a href="Department.jsp?did=<%=rs.getString("dept_id")%>">Delete</a></td>
                                                        <td><a href="Department.jsp?eid=<%=rs.getString("dept_id")%>">Edit</a></td>
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
