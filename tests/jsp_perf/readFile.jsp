<%@page import="java.io.*"%>
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
try{
	  //Open the file for both reading and writing
	  RandomAccessFile rand = new RandomAccessFile("/home/sameera/tomcat/webapps/perf/sample.txt","r"); 
	  int i=(int)rand.length();
	  rand.seek(0);  //Seek to start point of file
	  for(int ct = 0; ct < i; ct++){
	  byte b = rand.readByte(); //read byte from the file
	  out.print((char)b); //convert byte into char
	  }
	  rand.close();
	  }
	  catch(IOException e)
	  {
	  out.println(e.getMessage());
	  }
	  
%>

</body>
</html>
