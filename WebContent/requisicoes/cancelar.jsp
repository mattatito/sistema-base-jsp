

    <%
    
    
    	int idCliente = Integer.parseInt(request.getParameter("idCliente"));

		response.sendRedirect("../logado.jsp?User="+idCliente+"");
	
    
    %>