<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>       
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<%
  request.setCharacterEncoding("utf-8");
%>
<html>
<head>
<meta charset=”UTF-8">
<c:set var="file1" value="${param.param1}"  />   
<title>이미지 파일 출력하기</title>
</head>
<body>

파라미터 1 :<c:out value="${file1}"  /><br>

<c:if test="${not empty file1 }">
<img src="${contextPath}/download.do?fileName=${file1}"  width=300 height=300 /><br>
</c:if>

<a href="${contextPath}/download.do?fileName=${file1}" >파일 내려받기</a><br>
</body>
</html>
