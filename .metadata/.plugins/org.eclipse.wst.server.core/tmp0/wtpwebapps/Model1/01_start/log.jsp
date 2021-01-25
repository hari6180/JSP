<%@page import="org.slf4j.LoggerFactory"%>
<%@page import="org.slf4j.Logger"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%
	// "log.jsp" 파일에 대한 Log4j 객체 생성하기
	Logger logger = LoggerFactory.getLogger("log.jsp");

	// 수준별 로그 메시지 기록
	logger.debug("Hello Debug Log");
	logger.info("Hello Info log");
	logger.warn("Hello Waring log");
	logger.error("Hello Error log");
%>
<!doctype html>
<html>

<head>
    <meta charset="UTF-8" />
    <title>Hello JSP</title>
</head>

<body>
    
</body>

</html>