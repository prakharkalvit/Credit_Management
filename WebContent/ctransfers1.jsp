<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Transfer credits</title>
  </head>
  <body>
  	<%
  		String name=request.getParameter("name");
  	%>
  		<form action="transfer1.jsp">
		<h1 style="text-align: center;">TRANSFERS</h1><br><br>
			<table class="table table-md-responsive table-primary table-striped " align="center" border="2px solid" style="width:25%">
					<tr><th width="5%"><h3>From</h3></th>
					<td><input type="text" readonly="readonly" value="<%=name %>" name="from"></td>
					</tr>
					<tr><th width="5%"><h3>TO</h3></th>
					<td><input type="text" required="required" placeholder="Enter Full Name" name="to"></td>
					</tr>
					<tr><th width="5%"><h3>CREDITS</h3></th>
					<td><input type="number" required="required" placeholder="Enter Credits" name="credits"></td>
					</tr>
					<tr>
					<td><a href="cviewusers.jsp" class="btn btn-outline-danger" >Go Back</a></td>
					<td><input type="submit" class="btn btn-outline-danger" value="Transfer Credits"></td>
					</tr>
			</table>
			</form>
			
			
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>