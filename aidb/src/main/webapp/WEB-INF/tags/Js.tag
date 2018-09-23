<%-- Copyright(c) Huvata. All Rights Reserved. --%>
<%@ tag pageEncoding="utf-8"%>
<!-- include -->
<%@ include file="/WEB-INF/tags/taglib.inc"%>
<!-- attribute -->
<%@ attribute name="src" required="true"%>

<script src="static/js/${src}?<%= System.currentTimeMillis() %>"></script>
