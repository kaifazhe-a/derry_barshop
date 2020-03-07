<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
          <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

	<frameset rows="8%,*" frameborder="no">
		<frame src="<%=request.getContextPath()%>/to/top?token=${token}" name="top">
		<frameset cols="12%,*">
			<frame src="<%=request.getContextPath()%>/to/left?token=${token}" name="left">
			<frame src="<%=request.getContextPath()%>/to/right?token=${token}" name="right">
		</frameset>
	</frameset>
	
</html>