<%
        response.setHeader("Cache-Control", "no-cache, no-store");
        if(session.getAttribute("consultancyid") == null)
        {
            response.sendRedirect("../");
        }
    %>