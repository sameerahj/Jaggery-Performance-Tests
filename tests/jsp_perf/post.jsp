<%@page import="org.apache.commons.httpclient.*"%>
<%@page import="org.apache.commons.httpclient.methods.PostMethod"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<body>
<%
	String url="http://localhost/common/welcome.php";
	HttpClient client=new HttpClient();
	PostMethod method=new PostMethod(url);
	method.setParameter("name", "abc");
	method.setParameter("address", "59, Flower road, Colombo 7");
	int statusCode = client.executeMethod(method);
	out.println(method.getResponseBodyAsString());
	method.releaseConnection();

%>
</body>
</html>
