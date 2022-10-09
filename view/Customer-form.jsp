<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
	
<title>Save Customer</title>

</head>

<body>
	
	<div class="container">

		<h3>Customer Relationship Management</h3>
		<hr>

		<p class="h4 mb-4">Customer</p>

		<form action="/CustomerRelationshipManagement/customer/save" method="POST">

			<input type="hidden" name="id" value="${Customer.id}" />


			<div class="form-inline">
				<input type="text" name="fName" value="${Customer.fName}"
					class="form-control mb-4 col-4" placeholder="FristName">
			</div>


			<div class="form-inline">
				<input type="text" name="lName" value="${Customer.lName}"
					class="form-control mb-4 col-4" placeholder="LastName">
			</div>


			<div class="form-inline">
				<input type="text" name="email" value="${Customer.email}"
					class="form-control mb-4 col-4" placeholder="Email">
			</div>
			
			
			<button type="submit" class="btn btn-info col-2">Save</button>

		</form>

		<hr>
		<a href="/CustomerRelationshipManagement/customer/list">Back to Customers Details List</a>

	</div>
	
</body>
</html>