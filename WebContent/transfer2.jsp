<%@include file="db.jsp" %>
<%
	String from=request.getParameter("from");
	String to=request.getParameter("to");
	double updatedFrom=Double.parseDouble(request.getParameter("updatedFrom"));
	double credits=Double.parseDouble(request.getParameter("credits"));
	try{
	String qr="update user set credits=? where name=?";
	PreparedStatement ps=con.prepareStatement(qr);
	ps.setDouble(1, updatedFrom);
	ps.setString(2, from);
	int i=ps.executeUpdate();
	if(i!=0)
	{
		response.sendRedirect("transfer3.jsp?from="+from+"&to="+to+"&credits="+credits);
	}
	}catch(Exception e)
	{
		out.println(e);
	}
%>