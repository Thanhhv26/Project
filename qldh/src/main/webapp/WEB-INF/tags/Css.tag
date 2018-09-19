<%@ tag pageEncoding="utf-8"%>

<%@ attribute name="src" required="true"%>
<%@ attribute name="media" required="false"%>

<link href="${baseUrl}/css/${src}?<%= System.currentTimeMillis() %>"
rel="stylesheet" media="${(empty media) ? 'screen' : media}"></link>