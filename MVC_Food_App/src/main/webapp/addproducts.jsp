<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
 body{
  margin: 200px;
  background-color: rgba(83, 146, 65, 0.8)
 
 }
 .table{
 width: 300px;
 height: 100px;
 
 }

.heading{
 font-size: x-large;
 font-weight: lighter;
 font-style: oblique;
 color: blue;
 background-color: lime;

}
.trow{
 color: gray;
 text-align: center;
 display:flex;
}
.submit1 input{
 margin-left: 250px;

}

</style>
</head>
<body>   
 <form:form action="saveproducts" modelAttribute="Products">
 
 <table class="table" border="3px" cellpadding="10px"> 
      <th class="heading">Add Products</th>
      <tr> <td class="trow"> <h1> Name   : <form:input path="name"/></h1></td></tr>
      <tr> <td class="trow">  <h1>Type  : <form:input path="type"/></h1> </td> </tr> 
      <tr> <td class="trow"> <h1> Cost  : <form:input path="cost"/></h1></td> </tr>
      <tr> <td class="submit1">  <input type="submit" value="save"> </td>  </tr>
       </table>
 </form:form>

</body>
</html>