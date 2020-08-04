<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	< % out.print ( "jsp에 오신 것을 환영합니다"); % > 
	
	Current Time: <%= java.util.Calendar.getInstance().getTime() %>   

	<%! int data=50; %>  
	<%= "Value of the variable is:"+data %>  

	<%!   
	int cube(int n){  
	return n*n*n;  
	}  
	%>  
	<%= "Cube of 3 is:"+cube(3) %>  
	<% out.print ( "오늘은 :" + java.util.Calendar.getInstance (). getTime ()); %>  
	<% response.sendRedirect ( "http://www.google.com");  %> 
	
	<%   
		  
		String name=request.getParameter("uname");  
		out.print("Welcome "+name);  
		  
		session.setAttribute("user",name);  
		  
	  
		  
	%>   
	

</body>
</html>