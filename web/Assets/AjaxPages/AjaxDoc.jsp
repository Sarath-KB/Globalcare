<%-- 
    Document   : AjaxDoc
    Created on : 9 May, 2022, 4:12:58 PM
    Author     : rinus
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page  import="java.sql.ResultSet" %>
 <table border="0" cellpadding="10" align="center">
               <tr>
                 
                 <%
                                                       String selu="select * from tbl_doctors doc inner join tbl_department dept on doc.department_id=dept.dept_id where dept.dept_id='"+request.getParameter("did")+"'";
                                                        ResultSet ls=con.selectCommand(selu);
                                                         int i=0;
                                                         while(ls.next())
                                                         {
                                                           i++;
                                                           
                                                      %>
                 
                 
                     
                                                      <td colspan="2"><p style="text-align:center;border:1px solid #999;margin:22px;padding:10px" ><img src="../Assets/photo/<%=ls.getString("doctors_photo")%>" width="150" height="150"><br><br>
                                                          <%=ls.getString("doctors_name")%><br><br>
                                                          <%=ls.getString("doctors_contact")%><br><br>
                                                          <%=ls.getString("doctors_gender")%><br><br>
                                                          <%=ls.getString("dept_name")%><br><br>
                                                          <%=ls.getString("doctors_qualification")%><br><br>
                                                           <a href="Viewavailability.jsp?doid=<%=ls.getString("doctors_id")%>">View Availability</a></p></td>
                                                          
                                                    
                   
                                                   <%
                                                   if(i==4){
                                                       out.println("</tr>");
                                                       
                                                       i=0;
                                                        out.println("<tr>");
                                                       }
                                                   }
                                                   %>
             </tr>
            

              </table>
                
