 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  
   <form:form action="display"  modelAttribute="foodorder">
   <pre> 
  Enter   Id : <form:input path="id"  readonly="true"/>  <br>
  Enter name : <form:input path="name" /> <br>
  Enter mobilenumber : <form:input path="mobilenumber" />  <br>
  Enter totalcost :<form:input path="totalcost"/>   <br>
              
              </pre>
   </form:form>
</body>
</html>