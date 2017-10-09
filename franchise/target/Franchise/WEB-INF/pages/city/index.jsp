<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
	<title>City</title>
</head>

<body>
	<jsp:include page="../fragments/_menu.jsp" />
	
	<div class="container">	
		<h3>List Cites:</h3>
		<%-- <form action="${pageContext.request.contextPath}/getAllUser" method='POST'>
			<input name="submit" type="submit" value="submit" />
		</form> --%>
		<div class="table-responsive">          
			<table id="example" class="table table-striped table-bordered table-hover display">
				<thead>
					<tr class="text-center">
						<th class="text-center">ID</th>
						<th class="text-center">NAME</th>
						<th class="text-center">CODE</th>
						<th class="text-center">STATUS</th>
						<th class="text-center">ACTION</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="city" items="${cities}">
					    <tr>
							<td class="text-center">${city.id}</td>
							<td class="text-center">${city.name}</td>
							<td class="text-center">${city.code}</td>
							<td class="text-center">${city.status}</td>
							<td class="text-center">
								<span class="btn btn-success btn-xs glyphicon glyphicon-plus"></span>
								<span class="btn btn-warning btn-xs glyphicon glyphicon-pencil"></span>
								<span class="btn btn-danger btn-xs glyphicon glyphicon-remove"></span>
								<span class="btn btn-info btn-xs glyphicon glyphicon-zoom-in"></span>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			
			<script>
				$(document).ready(function() {
				    $('#example').DataTable();
				} );
			</script>
			
			<!-- <nav aria-label="Page navigation">
			  <ul class="pagination">
			    <li class="page-item">
			      <a class="page-link" href="#" aria-label="Previous">
			        <span aria-hidden="true">&laquo;</span>
			        <span class="sr-only">Previous</span>
			      </a>
			    </li>
			    <li class="page-item"><a class="page-link" href="#">1</a></li>
			    <li class="page-item"><a class="page-link" href="#">2</a></li>
			    <li class="page-item"><a class="page-link" href="#">3</a></li>
			    <li class="page-item">
			      <a class="page-link" href="#" aria-label="Next">
			        <span aria-hidden="true">&raquo;</span>
			        <span class="sr-only">Next</span>
			      </a>
			    </li>
			  </ul>
			</nav> -->
			
	  	</div>
	</div>
	
</body>
</html>