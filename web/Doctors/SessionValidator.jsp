<%
        response.setHeader("Cache-Control", "no-cache, no-store");
        if(session.getAttribute("doctorid") == null)
        {
            response.sendRedirect("../");
        }
    %>