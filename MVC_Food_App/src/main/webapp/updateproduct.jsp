
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

body{
 margin: 0px;
 background-color: rgba(83, 146, 65, 0.8);
}
.main{
       border: 3px solid black;
       margin-left:100px;
       background-color:rgba(245, 101, 39, 0.8);
       padding: 40px;
       width: 300px;
       height: 80p;
       border-radius: 20px

}
h1{
margin-left:100px;

}

</style>

</head>

<body>
  
      <h1>Update the Products</h1>
 
   <form:form action="updateProduct" modelAttribute="productinfo"  class="main">
   <pre> 
  Enter   Id : <form:input path="id"  readonly="true"/>  <br>
  Enter Name : <form:input path="name" />  <br>
  Enter Type : <form:input path="type" /> <br>
  Enter Cost :<form:input path="cost" />   <br>
              <input type="submit">
              </pre>
   </form:form>
   
   
   
</body>
</html>