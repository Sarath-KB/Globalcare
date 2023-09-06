<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<option value="">Select</option>
                                <%
                                    String disQry = "select * from tbl_doctors where department_id='"+request.getParameter("did")+"' and hospital_id='"+ session.getAttribute("hospitalid")+"' ";
                                    ResultSet  rs1 = con.selectCommand(disQry);
                                    while(rs1.next())
                                    {
                                        %>
                                        <option value="<%=rs1.getString("doctors_id")%>"><%=rs1.getString("doctors_name")%></option>
                                        
                                        <%
                                    }
                                
                                %>