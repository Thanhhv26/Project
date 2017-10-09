<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<title>Login</title>
<!-- <link href="./resources/bootstrap-4.0.0-beta-dist/css/bootstrap.css" rel="stylesheet">
	<script src="./resources/bootstrap-4.0.0-beta-dist/js/bootstrap.min.js"></script> -->
<style type="text/css">
	/* @import "bourbon"; */
	body {
		background: #eee !important;
	}

	.wrapper {
		margin-top: 80px;
		margin-bottom: 80px;
	}

	.form-signin {
		max-width: 380px;
		padding: 15px 35px 45px;
		margin: 0 auto;
		background-color: #fff;
		border: 1px solid rgba(0, 0, 0, 0.1);
		.form-signin-heading,
		.checkbox {
			margin-bottom : 30px;
		}
	
		.checkbox {
			font-weight: normal;
		}
	
		.form-control {
			position: relative;
			font-size: 16px;
			height: auto;
			padding: 10px;
			@include box-sizing(border-box);
			&:focus {
				z-index : 2;
			}
		}
		input[type="text"] {
			margin-bottom: -1px;
			border-bottom-left-radius: 0;
			border-bottom-right-radius: 0;
		}

		input[type="password"] {
			margin-bottom: 20px;
			border-top-left-radius: 0;
			border-top-right-radius: 0;
		}
	}
</style>

</head>

<body>
	<jsp:include page="_menu.jsp" />	
	
	<div class="container">	
		<form action="${pageContext.request.contextPath}/getAllUser" method='POST'>
			<input name="submit" type="submit" value="submit" />
		</form>
		<div class="table-responsive">          
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>user_id</th>
						<th>franchise_id</th>
						<th>user_f_name</th>
						<th>user_l_name</th>
						<th>user_email</th>
						<th>user_psw</th>
						<th>user_con_no</th>
						<th>user_city_id</th>
						<th>user_address</th>
						<th>user_status</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="user" items="${users}">
					    <tr>
							<td>${user.userId}</td>
							<td>${user.franchiseId}</td>
							<td>${user.userFName}</td>
							<td>${user.userLName}</td>
							<td>${user.userEmail}</td>
							<td>${user.userPsw}</td>
							<td>${user.userConNo}</td>
							<td>${user.userCityId}</td>
							<td>${user.userAddress}</td>
							<td>${user.userStatus}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
	  	</div>
		<%-- <c:forEach var="user" items="${users}">
		    <c:out value="${user.userId}"/> 
		</c:forEach> --%>
	</div>

	<div class="container">
		<!-- /login?error=true -->
		<c:if test="${param.error == 'true'}">
			<div style="color: red; margin: 10px 0px;">
				Login Failed!!!<br /> Reason :
				${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
			</div>
		</c:if>
		<div class="wrapper">
			<form class="form-signin"
				action="${pageContext.request.contextPath}/j_spring_security_check"
				method='POST'>
				<h2 class="form-signin-heading">Please login</h2>
				<input type="text" class="form-control" name="username" placeholder="Username" required autofocus />
				<p></p>
				<input type="password" class="form-control" name="password" placeholder="Password" required /> 
				<label class="checkbox">
					<input type="checkbox" value="remember-me" id="rememberMe" name="rememberMe"> Remember me
				</label>
				<button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
			</form>
		</div>
	</div>
</body>
</html>