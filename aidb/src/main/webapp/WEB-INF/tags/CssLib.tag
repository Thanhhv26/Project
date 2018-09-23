<%-- Copyright(c) Huvata. All Rights Reserved. --%>
<%@ tag pageEncoding="utf-8"%>
<!-- include -->
<%@ include file="/WEB-INF/tags/taglib.inc"%>
<!-- attribute -->
<%@ attribute name="src" required="true"%>
<%@ attribute name="media" required="false"%>

<link href="static/lib/${src}?<%= System.currentTimeMillis() %>"
rel="stylesheet" media="${(empty media) ? 'screen' : media}"></link>
