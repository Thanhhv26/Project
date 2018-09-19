<%@ tag pageEncoding="utf-8"%>

<%@ attribute name="src" required="true"%>
<%@ attribute name="media" required="false"%>

<link href="${baseUrl}/lib/${src}?<%= System.currentTimeMillis() %>"
rel="stylesheet" media="${(empty media) ? 'screen' : media}"></link>