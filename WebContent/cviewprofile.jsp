<%@page import="java.sql.*" %>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Profile</title>
  </head>
  <body class="container-fluid">
  		<table class="table table-md-responsive table-primary table-striped " align="center" border="2px solid" style="width:50%">
		<th width="3%"><h3>ID</h3></th>
		<th width="14%"><h3>NAME</h3></th>
		<th width="50%"><h3>EMAIL-ID</h3></th>
		<th width="1%"><h3>CREDITS</h3></th>
		<th width="14%"><h3>UPDATE</h3></th>
		<th width="10%"><h3>TRANSFER</h3></th>
		<%
  		String id=request.getParameter("id");
		try
			{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/credit","root","123456");
				PreparedStatement ps=con.prepareStatement("select * from user where id=?");
				ps.setString(1,id);
				ResultSet rs=ps.executeQuery();
				if(rs.next())
				{
					do
					{
						String id1=rs.getString("id");
						String name=rs.getString("name");
						String email=rs.getString("email");
						double credits=rs.getDouble("credits");
		%>
		<tr>
		<td><h5><%=id%></h5></td>
		<td><h5><%=name %></h5></td>
		<td><h5><%=email%></h5></td>
		<td><h5><%=credits%></h5></td>
		<td><a href="cupdate.jsp?id=<%=id%>&name=<%=name %>&email=<%=email%>&credits=<%=credits%>" class="btn btn-outline-danger">EDIT PROFILE</a></td>
		<td><a href="ctransfers1.jsp?name=<%=name %>" class="btn btn-outline-danger">TRANSFER CREDITS</a></td>
		</tr>

	<% 
		}while(rs.next());
	}
	}catch(Exception e)
	{
	out.println(e);	
	}
	%>
	</table>
<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>