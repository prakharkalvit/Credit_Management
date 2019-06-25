<%@page import="java.sql.*" %>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Transfer records</title>
  </head>
  <body>
		<table class="table table-md-responsive table-primary table-striped " align="center" border="2px solid" style="width:50%">
		<th width="10%"><h3>FROM</h3></th>
		<th width="10%"><h3>TO</h3></th>
		<th width="6%"><h3>CREDITS TRANSFER</h3></th>
		<th width="24%"><h3>DATE-TIME</h3></th>
		
		<%
		try
			{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/credit","root","123456");
				PreparedStatement ps=con.prepareStatement("select * from transfer");
				ResultSet rs=ps.executeQuery();
				if(rs.next())
				{
					do
					{
						String from=rs.getString("from_transfer");
						String to=rs.getString("to_transfer");
						double credits=rs.getDouble("credits");
						String time=rs.getString("date");

		%>
				<tr>
	<td><h5><%=from%></h5></td>
	<td><h5><%=to %></h5></td>
	<td><h5><%=credits%></h5></td>
	<td><h5><%=time%></h5></td>
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