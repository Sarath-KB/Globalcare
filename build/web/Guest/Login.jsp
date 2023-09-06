<%-- 
    Document   : Login
    Created on : 9 Feb, 2022, 11:33:28 AM
    Author     : rinus
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
 <%@page  import="java.sql.ResultSet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
         <%@include file="Header.jsp" %>
        <br>
        <div id="tab">
        <%
            if(request.getParameter("btnlogin")!=null){
                
                String sel="select * from tbl_admin where admin_username='"+request.getParameter("txtname")+"' and admin_password='"+request.getParameter("txtpswrd")+"'";
                ResultSet rs=con.selectCommand(sel);
                
                String selu="select * from tbl_user where user_email='"+request.getParameter("txtname")+"' and user_pswrd='"+request.getParameter("txtpswrd")+"'";
                ResultSet rsu=con.selectCommand(selu);
                
                String selh="select * from tbl_hospital where hospital_email='"+request.getParameter("txtname")+"' and hospital_pswrd='"+request.getParameter("txtpswrd")+"' and hospital_vstatus='1'";
                ResultSet ru=con.selectCommand(selh);
                String seld="select * from tbl_doctors where doctors_email='"+request.getParameter("txtname")+"' and doctors_pswrd='"+request.getParameter("txtpswrd")+"'";
                ResultSet d=con.selectCommand(seld);
                 String selc="select * from tbl_consultancy where consultancy_name='"+request.getParameter("txtname")+"' and consultancy_password='"+request.getParameter("txtpswrd")+"'";
                ResultSet c=con.selectCommand(selc);
                
            if(rs.next())
            {
                session.setAttribute("adminid", rs.getString("admin_id"));
                response.sendRedirect("../Admin/Homepage.jsp");
            }
            else if(rsu.next()){
                session.setAttribute("userid", rsu.getString("user_id"));
                session.setAttribute("username", rsu.getString("user_name"));
                response.sendRedirect("../User/Homepage.jsp");
            }
            else if(ru.next())
            {
                session.setAttribute("hospitalid", ru.getString("hospital_id"));
                session.setAttribute("hospitalname", ru.getString("hospital_name"));
                response.sendRedirect("../Hospital/Homepage.jsp");
            }
            else if(d.next())
            {
                session.setAttribute("doctorid", d.getString("doctors_id"));
                session.setAttribute("doctorname", d.getString("doctors_name"));
                response.sendRedirect("../Doctors/Homepage.jsp");
            }
            else if(c.next())
            {
                session.setAttribute("consultancyid", c.getString("consultancy_id"));
                session.setAttribute("hospitalid", c.getString("hospital_id"));
                session.setAttribute("consultancyname", c.getString("consultancy_name"));
                response.sendRedirect("../Consultancy/Homepage.jsp");
            }
            
            else
            {
                %>
                <script type="text/javascript">
            alert("Invalid Login Deatils...");
            setTimeout(function() {
                window.location.href = 'Login.jsp'
            }, 40);//40millisecend it go to next page
        </script>
                <%
            }  
                
            }
        %>
        <form method="post">
            <table border="2" align="center" cellpadding="10" style="border-collapse: collapse">
                <tr>
                    <th>Username/Email</th>
                    <td><input type="text" name="txtname" autocomplete="off" required=""></td>
                </tr>
                <tr>
                    <th>Password</th>
                    <td><input type="password" name="txtpswrd" </td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" name="btnlogin" value="Login"></td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <a href="hospitalreg.jsp">NewHospital</a>
                        <a href="user.jsp">NewUser</a>
                    </td>
                </tr>
            </table> 
        </form>
    </div>
    </body>
     <br><br>
    <%@include file="Footer.jsp" %>
</html>
