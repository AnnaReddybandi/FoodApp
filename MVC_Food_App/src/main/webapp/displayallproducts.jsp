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
 th{
  background-color: rgba(134, 28, 45, 0.65);
 
 }
 th{
  background-color: rgba(14, 28, 45, 0.55);
 }
 
 
 td a{
 
 text-decoration: none;
 color: black;
 }
 
 div{
  display: flex;
  justify-content: space-around;
 
 }
 button a{
  
   text-decoration: none;
   color: black;
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
        <th>Add</th>
   
   <c:forEach var="product" items="${productlist}">
        <tr>
        <td> ${product.getId() } </td> 
        <td> ${product.getName() } </td>
        <td> ${product.getType() } </td>
        <td> ${product.getCost() } </td>
        <td> <a href="additem?id=${product.getId()}">add</a> </td>
        
        </tr>
		</c:forEach>
   </table>
    <div>
    <button><a href="useroptions.jsp">Back</a> </button>
    <button><a href="savefoodorders">Submit</a></button>
    </div>
                                           
 	    

</body>
</html>