
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="study.jsp.model2.controller.Member"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	// ArrayList에 Beans 객체 추가하기
	List<Member> list = new ArrayList<Member>();
	
	// list 객체에 JavaBeans의 객체를 이름표를 적용하여 추가한다.
	Member mem1 = new Member();
	mem1.setName("학생1");
	mem1.setAge(20);
	list.add(mem1);
	
	Member mem2 = new Member();
	mem2.setName("학생2");
	mem2.setAge(20);
	list.add(mem2);
	
	Member mem3 = new Member();
	mem3.setName("학생3");
	mem3.setAge(20);
	list.add(mem3);
	
	// Map 객체를 request객체에 등록한다.
	request.setAttribute("list", list);
%>

<!doctype html>
<html>

<head>
    <meta charset="UTF-8" />
    <title>Hello JSP</title>
</head>

<body>
	<ul>
		<c:forEach var="k" items="${list}" varStatus="status">
			<li>
				list[${status.index}] = ${k.name}/${k.age}
			</li>
		</c:forEach>
	</ul>
</body>

</html>