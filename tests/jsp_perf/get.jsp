<%@page import="org.apache.commons.httpclient.*"%>
<%@page import="org.apache.commons.httpclient.methods.GetMethod"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String url="http://localhost/common/test.php";
	HttpClient client=new HttpClient();
	HttpMethod method=new GetMethod(url);
	int statusCode = client.executeMethod(method);
	out.println(method.getResponseBodyAsString());
	method.releaseConnection();

%>
</body>
</html>
