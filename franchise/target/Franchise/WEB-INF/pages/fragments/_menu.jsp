<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


	<%-- <link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">
    <script src="<c:url value="/resources/js/jquery-3.2.1.min.js" />"></script>
    <script src="<c:url value="/resources/js/popper.js" />"></script>
    <script src="<c:url value="/resources/js/bootstrap.js" />"></script> --%>
    
    <!-- jquery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    
    <!-- bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">  	
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  	
  	<!-- datatables -->
  	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css"/>
  	<script type="text/javascript" src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>




<div class="container">
	<!-- Admin Module -->
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Admin Modules</a>
		    </div>
		    <ul class="nav navbar-nav">
				<li><a href="${pageContext.request.contextPath}/city">City</a></li>
				<li><a href="${pageContext.request.contextPath}/category">Category</a></li>
		      	<li><a href="${pageContext.request.contextPath}/product">Product</a></li>
				<li><a href="${pageContext.request.contextPath}/rawMaterial">Raw material</a></li>
				<li><a href="${pageContext.request.contextPath}/franchise">Franchise</a></li>
		      	<li><a href="${pageContext.request.contextPath}/orderStock">Order/Stock</a></li>
		      	<li><a href="${pageContext.request.contextPath}/Communication">Communication</a></li>
				<li><a href="${pageContext.request.contextPath}/PhotoGallery">Photo-Gallery</a></li>
		      	<li><a href="${pageContext.request.contextPath}/profile">Profile</a></li>
		      	<li><a href="${pageContext.request.contextPath}/logout">Logout</a></li>
		    </ul>
		    <!-- <form class="navbar-form navbar-left" role="search">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="Search">
				</div>
				<button type="submit" class="btn btn-default">Submit</button>
			</form> -->
		</div>
	</nav>
	
	<!-- Franchise Modules -->	
	<nav class="navbar navbar-default" style="display: none;">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Franchise Modules</a>
		    </div>
		    <ul class="nav navbar-nav">
				<li><a href="${pageContext.request.contextPath}/order">order</a></li>
				<li><a href="${pageContext.request.contextPath}/Stock-update">Stock-update</a></li>
		      	<li><a href="${pageContext.request.contextPath}/Communication ">Communication</a></li>
				<li><a href="${pageContext.request.contextPath}/Franchise Photo">Franchise Photo</a></li>
		    </ul>
		    <form class="navbar-form navbar-left" role="search">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="Search">
				</div>
				<button type="submit" class="btn btn-default">Submit</button>
			</form>
		</div>
	</nav>
	
	<!-- Customer Modules -->
	<nav class="navbar navbar-default" style="display: none;">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Customer Modules</a>
		    </div>
		    <ul class="nav navbar-nav">
				<li><a href="${pageContext.request.contextPath}/home">Home</a></li>
				<li><a href="${pageContext.request.contextPath}/menu">Menu</a></li>
		      	<li><a href="${pageContext.request.contextPath}/franchise">Franchise</a></li>
				<li><a href="${pageContext.request.contextPath}/contactUs">Contact Us</a></li>
				<li><a href="${pageContext.request.contextPath}/customerCart">Customer Cart</a></li>
		      	<li><a href="${pageContext.request.contextPath}/customerAccount">Customer Account</a></li>
				<li><a href="${pageContext.request.contextPath}/payment">Payment</a></li>
		    </ul>
		    <form class="navbar-form navbar-left" role="search">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="Search">
				</div>
				<button type="submit" class="btn btn-default">Submit</button>
			</form>
		</div>
	</nav>

	<nav class="navbar navbar-default" style="display: none;">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">WebSiteName</a>
		    </div>
		    <ul class="nav navbar-nav">
				<li class="active"><a href="${pageContext.request.contextPath}/welcome">Home</a></li>
				<li><a href="${pageContext.request.contextPath}/userInfo">User Info</a></li>
		      	<li><a href="${pageContext.request.contextPath}/admin">Admin</a></li>
		      	<c:if test="${pageContext.request.userPrincipal.name != null}">
					<li><a href="${pageContext.request.contextPath}/logout">Logout</a></li>
			  	</c:if>
		    </ul>
		    <form class="navbar-form navbar-left" role="search">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="Search">
				</div>
				<button type="submit" class="btn btn-default">Submit</button>
			</form>
		</div>
	</nav>
	
</div>
