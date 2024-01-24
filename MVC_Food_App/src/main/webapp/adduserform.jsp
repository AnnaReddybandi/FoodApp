<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style type="text/css">
   body{
    margin: 0px; 
    background-color: rgba(83, 146, 65, 0.8)
   }
   .tablehead{
    margin-left: 250px;
   }
   .heading{
    background-color: purple;
    color: black;
   }
 </style>

</head>
<body>
   
 <form:form action="saveuser" modelAttribute="user">
       <table border="3px" cellpadding="5px" class="tablehead">
          <th class="heading"> <h1> Add new user  </h1></th>
          <tr><td><h1>Name     : <form:input path="name"/></h1></td></tr>
          <tr><td><h1>Email    : <form:input path="email"/></h1></td></tr>
          <tr><td><h1>password : <form:input path="password"/></h1></td> </tr>
          <tr><td> <h1><input type="submit" value="save"></h1></td> </tr>
       </table>
 </form:form>
</body>
</html>