<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
	<title><tiles:getAsString name="title" /></title>
	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">  
  	
  	<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
  	
	<!-- JQUERY -->
	<script src="<c:url value="/resources/bootstrap-3.3.7-dist/js/jquery-3.2.1.min.js" />"></script>
	<!-- bootstrap-4.0.0-beta-dist -->
	<link rel="stylesheet" href="<c:url value="/resources/bootstrap-3.3.7-dist/css/bootstrap.min.css" />">
	<script src="<c:url value="/resources/bootstrap-3.3.7-dist/js/bootstrap.min.js" />"></script>
	<!-- DATATABLES -->
	<link rel="stylesheet" href="<c:url value="/resources/DataTables-1.10.16/css/jquery.dataTables.min.css"/>" />
	<script src="<c:url value="/resources/DataTables-1.10.16/js/jquery.dataTables.min.js"/>"></script>
	<!-- COMMON -->
	<script src="<c:url value="/resources/js/common/common.js" />"></script>
	
</head>

<body>

	<div class="col-sm-12"><tiles:insertAttribute name="header" /></div>
	<div class="col-sm-12"><tiles:insertAttribute name="body" /></div>
	<div class="col-sm-12"><tiles:insertAttribute name="footer" /></div>
	<%-- <div class="row">
		<div class="col-sm-2"><tiles:insertAttribute name="menu" /></div>
		<div class="col-sm-12"><tiles:insertAttribute name="body" /></div>
	</div>
	<div class="row">
		<div class="col-sm-12"><tiles:insertAttribute name="footer" /></div>
	</div> --%>

</body>
</html>
