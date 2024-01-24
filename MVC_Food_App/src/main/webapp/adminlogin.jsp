<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
  body{
    margin-top: 150px;
    margin-left:500px;
    background-color: rgba(83, 146, 65, 0.8);
    align-content: center;
    width: 100%;
    height: 100vh; 
  }
  .admin{
    background-color:fuchsia;
  }
  .table{
  background-color:  rgba(245, 101, 39, 0.8);
  border: 5px solid green;
  border-radius: 20px;
  }
  .namepass{
   text-align: center;
  }
  .submit{
    color: lime;
    text-align: center;
    background-color:teal;
  }
  button a{
  text-decoration: none;
  color: black;
  }
</style>
</head>
<body> 
      <h1>KFC Food Restaurants</h1>
  <form action="adminvalidate" method="post">  
  <table border="2px" cellpadding="20px" class="table"> 
   <th colspan ="2" class= "admin"> Admin Login</th>
   <tr class="namepass">
   <td><label>  Enter Email    :  <input type="email" name="email"></label></td>
   </tr>
   <tr class="namepass">
   <td><label>  Enter Password :  <input type="password" name="password"></label></td>
   </tr>
   <tr class="submit">
   <td> <input  type="submit"> 
      <button> <a href="adadmin"> new admin</a> </button>       
   </td> 
   </tr>
       </table>
  </form>

</body>
</html>