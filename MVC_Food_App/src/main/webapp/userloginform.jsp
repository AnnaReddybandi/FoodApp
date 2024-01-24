<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
  body{
 
   margin: 0px;
    background-color: rgba(83, 146, 65, 0.8)
  }
  h1{
   text-align: center;
  
  }
  .table{
   border: 3px solid green;
   border-radius: 10px;
   margin-left: 500px;
   margin-top: 100px;
   background-color:   rgba(245, 101, 39, 0.8);
  }
  .head1{
     color: black;
     text-align: center;
     
  }
  .head2{
  text-align: center;
   color: black;
  }
  .submit{
     margin-left: 300px;
  
  }
</style>
</head>
<body>
    
     
               <h1>${check}</h1> 
  <form action="uservalidate" method="post">  
   <table border="2px" cellpadding="10px" class="table"> 
     <th class="head1"> <h1> User Login</h1></th>
     <tr class="head2"><td><label> Enter Email    :  <input type="email" name="email"></label></td> </tr>
     <tr class="head2"><td> <label>Enter Password :  <input type="password" name="password"></label></td> </tr>
     <tr ><td class="submit"><input type="submit"></td> </tr>
   </table>
  
  </form>

</body>
</html>