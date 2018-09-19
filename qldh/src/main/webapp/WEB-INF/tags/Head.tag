<%@ tag pageEncoding="utf-8"%>

<%@ include file="/WEB-INF/tags/taglib.inc"%>

<%@ attribute name="title" required="false"%>
<%@ attribute name="titleArguments" required="false"%>
<%@ attribute name="titleArgumentSeparator" required="false"%>

<c:set var="baseUrl" scope="application">
	<c:url value="/resources"></c:url>
</c:set>
<c:set var="contextPath" value="${pageContext.request.contextPath}" scope="application" />
<c:set var="currentLocale" value="${pageContext.response.locale.language}" scope="application" />
<c:if test="${currentLocale == null || fn:length(currentLocale) <= 0}">
	<c:set var="currentLocale" value="en" scope="application" />
</c:if>

<%-- START: angular version --%>
<c:set var="angularVer" value="1.4.9" />
<c:set var="angularUIVer" value="0.13.4" />
<%-- END: angular version --%>

<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="Cache-Control" content="max-age=0,no-cache" />
<meta http-equiv="Expires" content="Tue, 01 Jan 1980 1:00:00 GMT" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Content-Language" content="${currentLocale}">
<meta name="language" content="${currentLocale}">
<meta http-equiv="Content-Type" content="text/html;charset=Utf-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<%-- <meta name="errorIntenert" content="${errorInternet}"/> --%>
<meta name="_csrf" content="${_csrf.token}"/>
<!-- default header name is X-CSRF-TOKEN -->
<meta name="_csrf_header" content="${_csrf.headerName}"/>
<meta name="_csrf_param" content="${_csrf.parameterName}"/>

<%-- <link rel="icon" type="image/png" href="${baseUrl}/image/dbace_mini.ico" /> --%>

<title><spring:message code="${title}" arguments="${titleArguments}" argumentSeparator="${titleArgumentSeparator}" /></title>

<huvata:CssLib src="" />

<style type="text/css">
[ng\:cloak], [ng-cloak], .ng-cloak {
	display: none !important;
}
</style>

<!-- ------------------------------------------------- -->
<!-- BASESCRIPT -->
<!-- ------------------------------------------------- -->
<script type="text/javascript">
	var getContextPath = function() {
		return '${contextPath}';
	};
	var getCurrentLocale = function() {
		return '${currentLocale}';
	};
	var getResourcePath = function() {
		return '${baseUrl}';
	};

	var numberDBACE = '${numberDBACE}';
	var roundDBACE = '${roundDBACE}';
	
	//https://github.com/CodeSeven/toastr
	toastr.options = {
		"closeButton" : true,
		"debug" : false,
		"newestOnTop" : true,
		"progressBar" : false,
		"positionClass" : "toast-top-right",
		"preventDuplicates" : false,
		"showDuration" : "300",
		"hideDuration" : "1000",
		"timeOut" : "10000",
		"extendedTimeOut" : "1000",
		"showEasing" : "swing",
		"hideEasing" : "linear",
		"showMethod" : "fadeIn",
		"hideMethod" : "fadeOut"
	}
	
</script>

<!-- START::angular i18n -->
<%-- <c:if test="${currentLocale == 'jp' || currentLocale == 'ja' || currentLocale == 'ja-jp'}">
	<huvata:JsLib src="angularjs/${angularVer}/i18n/angular-locale_ja-jp.js" />
</c:if> --%>
<%-- <c:if test="${currentLocale == null || fn:length(currentLocale) <= 0 || currentLocale == 'en' || currentLocale == 'us'}">
	<exex:JsLib src="angularjs/${angularVer}/i18n/angular-locale_en-us.js" />
</c:if>
<c:if test="${currentLocale == 'vi' || currentLocale == 'vn' || currentLocale == 'vi-vn'}">
	<exex:JsLib src="angularjs/${angularVer}/i18n/angular-locale_vi-vn.js" />
</c:if> --%>
<!-- END::angular i18n -->

<jsp:doBody />

</head>