<%@page errorPage="errorPage.jsp" %>
<%@include file="db.jsp" %>
<%
	String from=request.getParameter("from");
	String to=request.getParameter("to");
	double credits=Double.parseDouble(request.getParameter("credits"));
	String qr="select * from user where name=?";
	PreparedStatement ps=con.prepareStatement(qr);
	ps.setString(1, to);
	ResultSet rs=ps.executeQuery();
	//double toCredit=0.0;
	if(rs.next())
	{
		do
		{
			double toCredit=rs.getDouble("credits");
			double updatedTo=toCredit+credits;
			response.sendRedirect("transfer4.jsp?from="+from+"&to="+to+"&credits="+credits+"&updatedTo="+updatedTo);
		}while(rs.next());
	}
	else
	{
		
	}
%>
