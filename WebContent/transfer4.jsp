<%@page errorPage="errorPage.jsp" %>
<%@include file="db.jsp" %>
<%
	String from=request.getParameter("from");
	String to=request.getParameter("to");
	double credits=Double.parseDouble(request.getParameter("credits"));
	double updatedTo=Double.parseDouble(request.getParameter("updatedTo"));
	String qr="update user set credits=? where name=?";
	PreparedStatement ps=con.prepareStatement(qr);
	ps.setDouble(1, updatedTo);
	ps.setString(2, to);
	int i=0;
	i=ps.executeUpdate();
	if(i!=0)
	{
		response.sendRedirect("transfer5.jsp?from="+from+"&to="+to+"&credits="+credits);
	}
	con.close();
%>