<%-- Copyright(c) Huvata. All Rights Reserved. --%>
<%@ tag pageEncoding="utf-8"%>
<!-- include -->
<%@ include file="/WEB-INF/tags/taglib.inc"%>
<!-- attribute -->
<%@ attribute name="module" required="false"%>
<%@ attribute name="controller" required="false"%>

<!DOCTYPE html>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]> <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]> <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<c:choose>
	<c:when test="${not empty module && not empty controller}">
		<html data-ng-app="${module}" data-ng-controller="${controller}" data-ng-cloak class="no-js"><!--<![endif]-->
	</c:when>
	<c:when test="${not empty module && empty controller}">
		<html data-ng-app="${module}" data-ng-controller="commonCtrl" data-ng-cloak class="no-js"><!--<![endif]-->
	</c:when>
	<c:otherwise>
		<html class="no-js"><!--<![endif]-->
	</c:otherwise>
</c:choose>

<jsp:doBody />

<!-- https://github.com/FezVrasta/bootstrap-material-design/blob/master/README.md -->

</html>