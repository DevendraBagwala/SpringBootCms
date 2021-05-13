<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<%@ page import="java.util.List"%>
<%@ page import="com.divergentsl.springbootcms.entity.Doctor"%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>springwebcms</title>


<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6"
	crossorigin="anonymous">

<!--  <link rel="stylesheet" href="resources/styles.css">
-->

</head>
<body
	style="background: #fff url(resources/images/Background1.jpg) center center/cover no-repeat fixed;">


	<header>

		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<div class="container-fluid">

				<a class="navbar-brand" href="doctoroperatemenu">DoctorOperation Menu</a>

				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0">

						<li class="nav-item"><a class="nav-link" aria-current="page"
							href="doctoroperateinsert">Insert</a></li>

						<li class="nav-item"><a class="nav-link"
							href="doctoroperatesearch">Search</a></li>

						<li class="nav-item"><a class="nav-link active disabled"
							href="doctoroperatelist">List All</a></li>

						<li class="nav-item"><a class="nav-link" href="#">Update</a></li>


					</ul>
					<div class="d-flex">

						<h3>Divergent Software Labs</h3>

					</div>
				</div>
			</div>
		</nav>
	</header>


	<div class="text-center mt-5">


		<table class="table caption-top">
			<caption>List of Doctor</caption>
			<thead>
				<tr>
					<th scope="col">Id</th>
					<th scope="col">Name</th>
					<th scope="col">Fees</th>
					<th scope="col">Delete</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${allDoctors}" var="doctor">
					<tr>
						<td><c:out value="${doctor.id}" /></td>
						<td><c:out value="${doctor.name}" /></td>
						<td><c:out value="${doctor.fees}" /></td>
						<td><a href="doctoroperatedelete?id=${doctor.id}"
							class="btn btn-danger" type="button">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>


	</div>


</body>
</html>