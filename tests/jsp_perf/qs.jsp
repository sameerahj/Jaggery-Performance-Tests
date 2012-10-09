<%@page import="java.lang.reflect.Array"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%!

public ArrayList<Integer> quickSort(ArrayList<Integer> numbers){
	if(numbers.size()<2) return numbers;
	int pivot = 0;
	ArrayList<Integer> low=new ArrayList<Integer>();
	ArrayList<Integer> high=new ArrayList<Integer>();
	int sameAsPivot=0;
	for(int number:numbers){
		if(number > numbers.get(pivot))
			high.add(number);
		else if(number<numbers.get(pivot))
			low.add(number);
		else
			sameAsPivot++;
	}
	low = quickSort(low);
	for (int i = 0; i < sameAsPivot; i++)
        low.add(numbers.get(pivot));
	high = quickSort(high);
	ArrayList<Integer> sorted=new ArrayList<Integer>();
	for(int number:low)
		sorted.add(number);
	for(int number:high)
		sorted.add(number);
	
	return sorted;
}

%>

<%
	final int NUMBERS_TO_SORT = 200;	
	ArrayList<Integer> seq=new ArrayList<Integer>();
	Random rand = new Random();
    for (int i = 0; i < 100; i++)
        seq.add(rand.nextInt(NUMBERS_TO_SORT));
	ArrayList<Integer> result=quickSort(seq);
	for(int number:result){
		out.print(number+", ");
	}
%>

</body>
</html>