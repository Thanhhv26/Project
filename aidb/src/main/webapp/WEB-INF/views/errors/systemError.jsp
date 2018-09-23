<%-- Copyright(c) SystemEXE corp. All Rights Reserved. --%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ include file="/WEB-INF/views/common/taglib.inc"%>
<exex:Html module="frm1000Module">
	<exex:Head title="system.error.title">
		<exex:Js src="system/systemError.js" />
	</exex:Head>
	<exex:Body controller="frm1000Ctrl" init='init()' cssClass="">
		<exex:Layout>
			<center>
				<span style="color:#ff0000;">
					<spring:message code="system.error.content" />
				</span>
				<br /><br />
				<a id="btnBack" href="#" style="color: black;margin-top:10px;"><spring:message code="system.error.login.return" /></a>
			</center>
		</exex:Layout>
	</exex:Body>
</exex:Html>