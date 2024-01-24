<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
      .head{
       margin: 200px;
      }
      .head1{
      display: flex;
      justify-content:space-around; 
      margin: 20px;    
      }
      .head2{
       border: 3px solid black;
       margin :20px;
       background-color:rgba(200, 95, 39, 0.5);
       padding: 50px;
       width: 200px;
       height: 60p;
       border-radius: 20px
      }
      .head2 a{
       text-decoration: none;
       color:black;
       font-size: x-large;
       font-style: italic; 
      }
      .head2 a:hover{
      color:red;
      }
   
   
   </style>
   
</head>
<body>  
    <div class="head">   
  <h1 align="center"> Admin login successful</h1>
     <div class="head1">
        <div class="head2"> <a href="adduser">add user</a>  </div>
        <div class="head2"> <a href="userloginform.jsp">Login user</a></div>
        <div class="head2"> <a href="addproduct"> Add Product</a></div>
     </div>
      <div class="head1">
         <div class="head2"> <a href="veiwallproducts">View all Products</a></div>
         <div class="head2"> <a href="viewallfoodorder">View all orders</a></div>
         <div class="head2"> <a href="viewallcustomer">view all customers</a></div>
      </div>
     
 </div>
  
  
</body>
</html>