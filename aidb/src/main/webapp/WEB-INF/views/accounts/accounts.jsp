<%-- Copyright(c) Huvata. All Rights Reserved. --%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/tags/taglib.inc"%>

<huvata:Html module="accountsModule" controller="accountsController">

	<huvata:Head title="Accounts List">
		<huvata:Js src="accounts/components.js"></huvata:Js>
		<huvata:Css src="accounts/accounts.css"></huvata:Css>		
		<huvata:Js src="accounts/accounts.js"></huvata:Js>
	</huvata:Head>

	<huvata:Body>
	
	<div >
		<h3>Accounts List:</h3>		
		<button type="button" id="btnCreate" class="btn btn-success btn-sm glyphicon glyphicon-plus" data-toggle="modal" data-target="#modalCreate"></button>
		<button type="submit" id="btnRefresh" class="btn btn-success btn-sm glyphicon glyphicon-refresh"></button>
		<br><br>
		<div class="panel panel-info">
		  <!-- Default panel contents -->
		  <div class="panel-heading">Accounts</div>
		  <table id="tblCities" class="table table-striped table-bordered table-hover display">
				<thead>
					<tr class="text-center">
						<th class="text-center">id</th>
						<th class="text-center">ssoId</th>
						<th class="text-center">password</th>
						<th class="text-center">firstName</th>
						<th class="text-center">lastName</th>
						<th class="text-center">email</th>
						<th class="text-center">Action</th>
					</tr>
				</thead>
				<tbody>
					<tr data-ng-repeat="account in accounts">
				    	<td class="text-center">{{account.id}}</td>
						<td class="text-center">{{account.ssoId}}</td>
						<td class="text-center">{{account.password}}</td>
						<td class="text-center">{{account.firstName}}</td>
						<td class="text-center">{{account.lastName}}</td>
						<td class="text-center">{{account.email}}</td>
						<td class="text-center">
							<button type="button" id="btnDetail" class="btn btn-info btn-sm glyphicon glyphicon-zoom-in btnDetail" data-toggle="modal" data-target="#modalDetail"></button>
							<button type="button" class="btn btn-warning btn-sm glyphicon glyphicon-pencil btnUpdate" data-toggle="modal" data-target="#modalUpdate"></button>
							<button type="button" id="btnDelete" class="btn btn-danger btn-sm glyphicon glyphicon-remove btnDelete" data-toggle="modal" data-target="#modalDelete"></button>
						</td>
				  	</tr>
				</tbody>
			</table>
			</div>
		</div>
		
		<!-- Modal --Begin -->
		<jsp:include page="../accounts/accountsCreate.jsp" />
		<jsp:include page="../accounts/accountsUpdate.jsp" />
		<jsp:include page="../accounts/accountsDetail.jsp" />
		<jsp:include page="../accounts/accountsDelete.jsp" />
		<jsp:include page="../accounts/accountsDetail.jsp" />
		<!-- Modal --End  -->

		<!-- <tabs>
			<pane title="Localization">
		        <span>Date: {{ '2012-04-01' | date:'fullDate' }}</span><br>
		        <span>Currency: {{ 123456 | currency }}</span><br>
		        <span>Number: {{ 98765.4321 | number }}</span><br>
		      </pane>
		      <pane title="Pluralization">
		        <div ng-controller="BeerCounter">
		          <div ng-repeat="beerCount in beers">
		            <ng-pluralize count="beerCount" when="beerForms"></ng-pluralize>
		          </div>
		        </div>
			</pane>
	    </tabs> -->
    
		<%-- <div class="generic-container">
			<%@include file="authheader.jsp" %>
			<div class="panel panel-default">
				  <!-- Default panel contents -->
			  	<div class="panel-heading"><span class="lead">List of Users </span></div>
				<table class="table table-hover">
		    		<thead>
			      		<tr>
					        <th>Firstname</th>
					        <th>Lastname</th>
					        <th>Email</th>
					        <th>SSO ID</th>
					        <sec:authorize access="hasRole('ADMIN') or hasRole('DBA')">
					        	<th width="100"></th>
					        </sec:authorize>
					        <sec:authorize access="hasRole('ADMIN')">
					        	<th width="100"></th>
					        </sec:authorize>					        
						</tr>
			    	</thead>
		    		<tbody>
					<c:forEach items="${users}" var="user">
						<tr>
							<td>${user.firstName}</td>
							<td>${user.lastName}</td>
							<td>${user.email}</td>
							<td>${user.ssoId}</td>
						    <sec:authorize access="hasRole('ADMIN') or hasRole('DBA')">
								<td><a href="<c:url value='/edit-user-${user.ssoId}' />" class="btn btn-success custom-width">edit</a></td>
					        </sec:authorize>
					        <sec:authorize access="hasRole('ADMIN')">
								<td><a href="<c:url value='/delete-user-${user.ssoId}' />" class="btn btn-danger custom-width">delete</a></td>
	        				</sec:authorize>
						</tr>
					</c:forEach>
		    		</tbody>
		    	</table>
			</div>
			<sec:authorize access="hasRole('ADMIN')">
			 	<div class="well">
			 		<a href="<c:url value='/newuser' />">Add New User</a>
			 	</div>
		 	</sec:authorize>
	   	</div> --%>
	</huvata:Body>
</huvata:Html>