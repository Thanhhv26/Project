<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<h3>List Cites:</h3>

<button type="button" id="btnCreate"
	class="btn btn-success btn-sm glyphicon glyphicon-plus"
	data-toggle="modal" data-target="#modalCreate"></button>
<button type="submit" id="btnRefresh"
	class="btn btn-success btn-sm glyphicon glyphicon-refresh"></button>
<br><br>
<div class="panel panel-info">
  <!-- Default panel contents -->
  <div class="panel-heading">Cites</div>
  <table id="tblCities" class="table table-striped table-bordered table-hover display">
		<thead>
			<tr class="text-center">
				<th class="text-center">Id</th>
				<th class="text-center">Name</th>
				<th class="text-center">Code</th>
				<th class="text-center">Status</th>
				<th class="text-center">Action</th>
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
						<button type="button" id="btnDetail"
							class="btn btn-info btn-sm glyphicon glyphicon-zoom-in btnDetail"
							data-toggle="modal" data-target="#modalDetail"></button>
						<button type="button"
							class="btn btn-warning btn-sm glyphicon glyphicon-pencil btnUpdate"
							data-toggle="modal" data-target="#modalUpdate"></button>
						<button type="button" id="btnDelete"
							class="btn btn-danger btn-sm glyphicon glyphicon-remove btnDelete"
							data-toggle="modal" data-target="#modalDelete"></button>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>

<!-- Modal --Begin -->
<jsp:include page="../city/_cityCreate.jsp" />
<jsp:include page="../city/_cityUpdate.jsp" />
<jsp:include page="../city/_cityDetail.jsp" />
<jsp:include page="../city/_cityDelete.jsp" />
<jsp:include page="../city/_cityDetail.jsp" />
<!-- Modal --End  -->

<!-- Script --Begin -->
<script src="<c:url value="/resources/js/city/city.js" />"></script>
<script src="<c:url value="/resources/js/city/create.js" />"></script>
<script src="<c:url value="/resources/js/city/update.js" />"></script>
<script src="<c:url value="/resources/js/city/detail.js" />"></script>
<script src="<c:url value="/resources/js/city/delete.js" />"></script>
<script src="<c:url value="/resources/js/city/detail.js" />"></script>
<!-- Script --End  -->