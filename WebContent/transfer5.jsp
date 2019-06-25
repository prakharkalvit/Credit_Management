<%@include file="db.jsp" %>
<%
	String from=request.getParameter("from");
	String to=request.getParameter("to");
	double credits=Double.parseDouble(request.getParameter("credits"));
	try
	{
	String qr="insert into transfer values(?,?,?,?)";
	PreparedStatement ps=con.prepareStatement(qr);
	ps.setString(1, from);
	ps.setString(2, to);
	ps.setDouble(3, credits);
	ps.setTimestamp(4, new Timestamp(System.currentTimeMillis()));
	int i=ps.executeUpdate();
	if(i!=0)
	{
		response.sendRedirect("cshowtransfers.jsp");
	}
	}catch(Exception e)
	{
		out.println(e);
	}
%>