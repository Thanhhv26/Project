<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Admin Module -->
<%-- <nav class="nav nav-tabs" id="menu" role="tablist">
	<a class="nav-item nav-link" href="${pageContext.request.contextPath}/home">Home</a>
	<a class="nav-item nav-link" href="${pageContext.request.contextPath}/city">City</a>
	<a class="nav-item nav-link" href="${pageContext.request.contextPath}/category">Category</a>
	<a class="nav-item nav-link" href="${pageContext.request.contextPath}/product">Product</a>
	<a class="nav-item nav-link" href="${pageContext.request.contextPath}/raw-material">Raw Material</a>
	<a class="nav-item nav-link" href="${pageContext.request.contextPath}/franchise">Franchise</a>
	<a class="nav-item nav-link" href="${pageContext.request.contextPath}/order-stock">Order/Stock</a>
	<a class="nav-item nav-link" href="${pageContext.request.contextPath}/Communication">Communication</a>
	<a class="nav-item nav-link" href="${pageContext.request.contextPath}/Photo-gallery">Photo-Gallery</a>
	<a class="nav-item nav-link" href="${pageContext.request.contextPath}/profile">Profile</a>
	
	<!-- <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>	 -->
	<!-- <a class="nav-item nav-link active" data-toggle="tab" href="#">Home</a>
	<a class="nav-item nav-link" data-toggle="tab" href="#">Profile</a>
	<div class="dropdown">
		<a class="nav-item nav-link dropdown-toggle" data-toggle="dropdown"
			href="#">Dropdown</a>
		<div class="dropdown-menu">
			<a class="dropdown-item" href="#nav-dropdown1" data-toggle="tab">@fat</a>
			<a class="dropdown-item" href="#nav-dropdown2" data-toggle="tab">@mdo</a>
		</div>
	</div> -->
</nav>
<script>
	var array = window.location.href.split('/');
	array.splice(0,3);
	var href = '/' + array.join('/');
	$('#menu a').removeClass('active');
	$.each($('#menu a'), function(){
		if(href === $(this).attr('href')){
			$(this).addClass('active');
			return false;
		}
	});
</script> --%>
<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="${pageContext.request.contextPath}/home">Admin Modules</a>
		</div>
		<ul class="nav navbar-nav">
			<li><a href="${pageContext.request.contextPath}/city">City</a></li>
			<li><a href="${pageContext.request.contextPath}/category">Category</a></li>
			<li><a href="${pageContext.request.contextPath}/product">Product</a></li>
			<li><a href="${pageContext.request.contextPath}/raw-material">Raw Material</a></li>
			<li><a href="${pageContext.request.contextPath}/franchise">Franchise</a></li>
			<li><a href="${pageContext.request.contextPath}/order-stock">Order/Stock</a></li>
			<li><a href="${pageContext.request.contextPath}/Communication">Communication</a></li>
			<li><a href="${pageContext.request.contextPath}/Photo-gallery">Photo-Gallery</a></li>
			<li><a href="${pageContext.request.contextPath}/profile">Profile</a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<c:if test="${empty pageContext.request.userPrincipal}">
				<li><a href="${pageContext.request.contextPath}/sign-up"><span
						class="glyphicon glyphicon-user"></span> Sign Up
				</a></li>
				<li><a href="${pageContext.request.contextPath}/login"><span
						class="glyphicon glyphicon-log-in"></span> Login</a></li>
			</c:if>
			<c:if test="${not empty pageContext.request.userPrincipal}">
				<li><a href="${pageContext.request.contextPath}/logout"><span
						class="glyphicon glyphicon-log-out"></span> Logout</a></li>
			</c:if>
		</ul>
		<form class="navbar-form navbar-left">
			<div class="input-group">
				<input type="text" class="form-control" placeholder="Search">
				<div class="input-group-btn">
					<button class="btn btn-default" type="submit" style="height: 34px;">
						<i class="glyphicon glyphicon-search"></i>
					</button>
				</div>
			</div>
		</form>
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
			<li><a href="${pageContext.request.contextPath}/Franchise Photo">Franchise
					Photo</a></li>
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
			<li><a href="${pageContext.request.contextPath}/contactUs">Contact
					Us</a></li>
			<li><a href="${pageContext.request.contextPath}/customerCart">Customer
					Cart</a></li>
			<li><a href="${pageContext.request.contextPath}/customerAccount">Customer
					Account</a></li>
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
			<li class="active"><a
				href="${pageContext.request.contextPath}/welcome">Home</a></li>
			<li><a href="${pageContext.request.contextPath}/userInfo">User
					Info</a></li>
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