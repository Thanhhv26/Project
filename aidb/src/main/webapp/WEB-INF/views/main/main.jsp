<%-- Copyright(c) Huvata. All Rights Reserved. --%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/tags/taglib.inc"%>

<huvata:Html>

	<huvata:Head title="Main">		
		<c:url var="loginIcon" value="/static/image/login/loginIcon.png" />		
		<c:url var="accounts" value="/accounts" />
	</huvata:Head>

	<huvata:Body>
	
		<%@include file="authheader.jsp" %>
		
		<div class="row">
		
		  <div class="col-xs-6 col-md-3">
		    <a href="${accounts}" class="thumbnail">
		      <img class="profile-img" src="${loginIcon}" alt="">
		    </a>
		  </div>
		  		  
		  <div class="col-xs-6 col-md-3">
		    <a href="#" class="thumbnail">
		      <img class="profile-img" src="${loginIcon}" alt="">
		    </a>
		  </div>
		  
		  <div class="col-xs-6 col-md-3">
		    <a href="#" class="thumbnail">
		      <img class="profile-img" src="${loginIcon}" alt="">
		    </a>
		  </div>
		  
		  <div class="col-xs-6 col-md-3">
		    <a href="#" class="thumbnail">
		      <img class="profile-img" src="${loginIcon}" alt="">
		    </a>
		  </div>
		  
		</div>
		
	</huvata:Body>
</huvata:Html>