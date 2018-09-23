<%-- Copyright(c) Huvata. All Rights Reserved. --%>
<%@ tag pageEncoding="utf-8"%>
<%-- <%@ page isELIgnored="false" %> --%>
<!-- include -->
<%@ include file="/WEB-INF/tags/taglib.inc"%>
<!-- attribute -->
<%@ attribute name="title" required="false"%>

<head>
	<!-- <meta http-equiv="Content-Type" content="text/html; charset=utf-8"> -->
	<title>${title}</title>
	
	<!-- jquery -->
	<huvata:JsLib src="jquery/3.3.1/jquery.min.js"></huvata:JsLib>	
	<!-- bootstrap -->
	<huvata:CssLib src="bootstrap/3.2.0/css/bootstrap.min.css"></huvata:CssLib>
	<huvata:JsLib src="bootstrap/3.2.0/js/bootstrap.min.js"></huvata:JsLib>	
	<!-- font-awesome -->
	<huvata:CssLib src="font-awesome/4.7.0/css/font-awesome.min.css"></huvata:CssLib>
	<!-- angularjs -->
	<%-- <huvata:JsLib src="angularjs/1.7.2/angular.min.js"></huvata:JsLib> --%>
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
	<!-- common -->
	<huvata:Js src="common/common.js"></huvata:Js>
	
	<jsp:doBody />
</head>
