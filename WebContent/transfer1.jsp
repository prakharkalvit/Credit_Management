<%@include file="db.jsp"%>
<%
	String from=request.getParameter("from");
	String to=request.getParameter("to");
	double credits=Double.parseDouble(request.getParameter("credits"));
	//String qr="";
	PreparedStatement ps=con.prepareStatement("select * from user where name=?");
	ps.setString(1, from);
	ResultSet rs=ps.executeQuery();
	//double fromAmount=0.0;
if(rs.next())
{
	do
	{
		double fromAmount=rs.getDouble("credits");
		if(fromAmount>=credits)
		{
			double updatedFrom=fromAmount-credits;
			response.sendRedirect("transfer2.jsp?from="+from+"&to="+to+"&updatedFrom="+updatedFrom+"&credits="+credits);
		}
		else
		{
%>
			<script>
				alert("Insufficient funds credits=<%=credits%>fromAmount=<%=fromAmount%>");
			</script>
<%
		}
	}while(rs.next());
}
	con.close();
%>