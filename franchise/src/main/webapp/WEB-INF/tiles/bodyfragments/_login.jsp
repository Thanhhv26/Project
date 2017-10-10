<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
	<title>Login</title>
	<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
</head>

<body>

	<div class="container" style="display: none;">
		<!-- /login?error=true -->
		<c:if test="${param.error == 'true'}">
			<div class="alert alert-danger">
				<span class="glyphicon glyphicon-remove-sign"></span>
				Login Failed: ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
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

	<div class="container">
		<div class="row">
			<div class="Absolute-Center is-Responsive">
				<div id="logo-container"></div>
				<div class="col-sm-12 col-md-4 col-md-offset-4">
					<form action="${pageContext.request.contextPath}/j_spring_security_check" method='POST'>
						<h2 class="form-signin-heading">Please login</h2>
						<!-- /login?error=true -->
						<c:if test="${param.error == 'true'}">
							<div class="alert alert-danger">
								<span class="glyphicon glyphicon-remove-sign"></span> Login Failed:
								${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
							</div>
						</c:if>
						<div class="form-group input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span> 
							<input class="form-control" type="text" name='username' placeholder="Username" autofocus required />
						</div>
						<div class="form-group input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span> 
							<input class="form-control" type="password" name='password' placeholder="Password" required />
						</div>
						<div class="checkbox">
							<label> <input type="checkbox" required> I agree to the <a href="#">Terms and Conditions</a></label>
						</div>
						<div class="form-group">
							<button type="submit" class="btn btn-def btn-block">Login</button>
						</div>
						<div class="form-group text-center">
							<a href="#">Forgot Password</a>&nbsp;|&nbsp;<a href="#">Support</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>