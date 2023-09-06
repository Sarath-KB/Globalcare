<%-- 
    Document   : Ajaxuser
    Created on : 9 Feb, 2022, 10:33:03 AM
    Author     : rinus
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String selu="select * from tbl_user where user_email='"+request.getParameter("email")+"'";
    ResultSet rs=con.selectCommand(selu);
    
    String selh="select * from tbl_hospital where hospita_email='"+request.getParameter("email")+"'";
    ResultSet rh=con.selectCommand(selh);
    
    if(rs.next()){
        out.println("Email Already Exist");
    }
    else if(rh.next()){
        out.println("Email Already Exist");
    }
    else{
        out.println("");
    }
    
    
%>
