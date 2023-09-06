<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
 <table  cellpadding="40" align="center">
                 <tr>
                 
                 <%
                                                       String selu="select * from tbl_hospital h inner join tbl_place p on p.place_id=h.place_id inner join tbl_district d on d.district_id=p.district_id where true ";
                                                       if(!request.getParameter("dis").equals("")){
                                                           selu+="and d.district_id='"+request.getParameter("dis")+"'";
                                                       }
                                                       if(!request.getParameter("pl").equals("")){
                                                           selu+="and p.place_id='"+request.getParameter("pl")+"'";
                                                       }
                                                        ResultSet ls=con.selectCommand(selu);
                                                        //System.out.println(selu);
                                                         int i=0;
                                                         while(ls.next())
                                                         {
                                                           i++;
                                                           
                                                      %>
                 
                 
                     
                                                      <td colspan="2"><p style="text-align:center;border:1px solid #999;margin:22px;padding:10px" ><img src="../Assets/photo/<%=ls.getString("hospital_logo")%>" width="150" height="150"><br><br>
                                                          <%=ls.getString("hospital_name")%><br><br>
                                                          <%=ls.getString("hospital_contact")%><br><br>
                                                          <a href="Viewdoctor.jsp?vid=<%=ls.getString("hospital_id")%>">View Doctor</a></p></td>
                                                      
                                                    
                   
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