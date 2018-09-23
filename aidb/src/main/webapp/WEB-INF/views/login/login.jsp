<%-- Copyright(c) Huvata. All Rights Reserved. --%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/tags/taglib.inc"%>

<huvata:Html>
	<huvata:Head title="login">
		<!-- app -->
		<huvata:Css src="login/login.css"></huvata:Css>
		
		<c:url var="loginUrl" value="/login" />
		<c:url var="loginIcon" value="/static/image/login/loginIcon.png" />
	</huvata:Head>

	<huvata:Body>

		<div class="container" style="margin-top:40px">
			<div class="row">
				<div class="col-sm-6 col-md-4 col-md-offset-4">
					<div class="panel panel-default">
						<div class="panel-heading">
							<strong> Sign in to continue</strong>
						</div>
						<div class="panel-body">
							<div class="row">
								<div class="center-block">
									<img class="profile-img" src="${loginIcon}" alt="">
								</div>
							</div>
							<form action="${loginUrl}" method="post" class="form-horizontal">
								<c:if test="${param.error != null}">
									<div class="alert alert-danger">
										<p>Invalid username and password.</p>
									</div>
								</c:if>
								<c:if test="${param.logout != null}">
									<div class="alert alert-success">
										<p>You have been logged out successfully.</p>
									</div>
								</c:if>
								<div class="input-group input-sm">
									<label class="input-group-addon" for="username"><i class="fa fa-user"></i></label>
									<input type="text" class="form-control" id="username" name="ssoId" placeholder="Enter Username" required>
								</div>
								<div class="input-group input-sm">
									<label class="input-group-addon" for="password"><i class="fa fa-lock"></i></label> 
									<input type="password" class="form-control" id="password" name="password" placeholder="Enter Password" required>
								</div>
								<!-- <div class="input-group input-sm">
	                              <div class="checkbox">
	                                <label><input type="checkbox" id="rememberme" name="remember-me"> Remember Me</label>  
	                              </div>
	                            </div> -->
	                            <br>
								<input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}" />
									
								<div class="form-actions">
									<input type="submit"
										class="btn btn-block btn-primary btn-default" value="Log in">
								</div>
							</form>
						</div>
						<div class="panel-footer ">
							Don't have an account! <a href="#" onClick=""> Sign Up Here </a>
						</div>
	                </div>
				</div>
			</div>
		</div>

	</huvata:Body>
</huvata:Html>