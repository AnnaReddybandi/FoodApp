<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
       <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
body {
	margin-left: 300px;
	margin-top: 200px;
	background-color: rgba(83, 146, 65, 0.8);
}

div {
	border: 2px solid rgba(220, 0, 48, 1);
	display: inline-block;
	border-radius:20px;
	background-color: rgba(116, 78, 126, 0.28);
}

h1 {
	text-align: center;
}

h2 {
	margin-left: 50px;
}
</style>




</head>
<body>
 <form:form action="saveitem" modelAttribute="item">
  <div> 
     <h1> name    : <form:input path="name"/></h1>
     <h1> cost    : <form:input path="cost"/></h1>
     <h1>Quantity : <form:input path="Quantity"/></h1>
     <h2> <input type="submit"></h2>
 </div>
 </form:form>


</body>
</html>