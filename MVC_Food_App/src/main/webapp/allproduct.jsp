<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
 body{
  margin: 40px;
  background-color: rgba(83, 146, 65, 0.8)
 }
 
 .table1{
   background-color:   rgba(245, 101, 39, 0.8);
 
 }
h1{
 margin-left: 500px;
}
  .updel a{
  text-decoration: none;
  color: black;
  border: 1px solid black;
  padding: 5px;
  background-color:rgba(245, 169, 70, 0.8); 
  }
  .updel a:hover{
  background-color: rgba(248, 88, 70, 0.66);
  }

</style>
</head>
<body>
     <h1>View All products </h1>
   <table border=2px align="center" cellpadding="20px" class="table1">
    <th>id</th>
    <th>name</th>
    <th>type</th>
    <th>cost</th>
    <th>Update</th>
    <th>Delete</th>
    <c:forEach var="p" items="${productslist}">
    <tr>
    <td> ${p.getId()}</td>
    <td> ${p.getName()}</td>
    <td> ${p.getType()}</td>
    <td> ${p.getCost()}</td>
    <td class="updel"> <a href="update?id=${p.getId()}">update</a></td>
    <td class="updel"> <a href="delete?id=${p.getId()}">delete</a></td>
    </tr>
    </c:forEach>
   </table>

</body>
</html>