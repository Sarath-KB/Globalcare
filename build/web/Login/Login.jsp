<%-- 
    Document   : Login
    Created on : 8 May, 2022, 2:28:52 PM
    Author     : rinus
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
 <%@page  import="java.sql.ResultSet" %>
<!doctype html>
<html lang="en">
  <head>
  	<title>Login Global Care</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="css/style.css">

	</head>
	<body>
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
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">Login To GLOBAL CARE</h2>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-6 col-lg-5">
					<div class="login-wrap p-4 p-md-5">
		      	<div class="icon d-flex align-items-center justify-content-center">
		      		<span class="fa fa-user-o"></span>
		      	</div>
		      	<h3 class="text-center mb-4">Have an account?</h3>
                        <form class="login-form" method="post">
		      		<div class="form-group">
                                    <input type="text" class="form-control rounded-left" placeholder="Username" required autocomplete="off" name="txtname">
		      		</div>
	            <div class="form-group d-flex">
                        <input type="password" class="form-control rounded-left" placeholder="Password" required name="txtpswrd" autocomplete="off">
	            </div>
	            <div class="form-group d-md-flex">
	            	<div class="w-50">
	            		<label class="checkbox-wrap checkbox-primary">Remember Me
									  <input type="checkbox" checked>
									  <span class="checkmark"></span>
									</label>
								</div>
								<div class="w-50 text-md-right">
									<a href="#">Forgot Password</a>
								</div>
			
	            </div>
                           
	            <div class="form-group">
                        <button type="submit" class="btn btn-primary rounded submit p-3 px-5" name="btnlogin">Get Started</button>
	            </div>
	          </form>
	        </div>
				</div>
			</div>
		</div>
	</section>

	<script src="js/jquery.min.js"></script>
  <script src="js/popper.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/main.js"></script>

	</body>
</html>

