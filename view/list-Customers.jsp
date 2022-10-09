<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

	<meta charset="UTF-8">

	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
	<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
	
<title>Customer Relationship Management</title>

</head>

<body>
	
	<div class="container">

		<h3>Customer Management Portal</h3>
		<hr>

		<form class="form-inline">

			<a href="/CustomerRelationshipManagement/customer/showFormForAdd"
				class="btn btn-primary btn-sm mb-3"> Add A Customer </a> 
			
		</form>


		<table class="table table-bordered table-striped">
			<thead class="thead-dark">
				<tr>
					<th>FirstName</th>
					<th>LastName</th>
					<th>Email</th>
					<th>Action</th>
					
				</tr>
			</thead>

			<tbody>
				<c:forEach  items="${Customers}" var="tempCustomer">
					<tr>
						<td><c:out value="${tempCustomer.fName}" /></td>
						<td><c:out value="${tempCustomer.lName}" /></td>
						<td><c:out value="${tempCustomer.email}" /></td>
						<td>
							<a href="/CustomerRelationshipManagement/customer/showFormForUpdate?customerId=${tempCustomer.id}"
							class="btn btn-info btn-sm"> Update </a> <!--Relationship -->
							<a href="/CustomerRelationshipManagement/customer/delete?studentId=${tempCustomer.id}"
							class="btn btn-danger btn-sm"
							onclick="if (!(confirm('Are you sure you want to delete this Student?'))) return false">
								Delete </a>

						</td>

					</tr>
				</c:forEach>

			</tbody>
		</table>

	</div>
	
</body>
</html>