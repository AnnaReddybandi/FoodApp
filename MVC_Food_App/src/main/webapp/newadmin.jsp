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
   background-color: rgba(83, 146, 65, 0.8)
  }
  h1{
  
   color: black;
  }
  .main{
    border:5px solid black;
   display: inline-block;
   margin-left: 300px;
   margin-top:200px;
    text-align: center;
    background-color: rgba(245, 101, 39, 0.8);
    border-radius: 20px;
  }
  
.submit{
 text-align: center;
}


</style>





</head>
<body>
<form action="addadmin">
    
           <pre>         
      <div class="main">     
                  <h1> Add New Admin  </h1>   
     <label> Enter email    : <input type="email" name="email">   </label> <br>
     
     <label> Enter password : <input type="password" name="password"></label> <br>
     
     <label class="submit" >  <input type="submit"></label>
      </div>
        </pre>  
</form>

</body>
</html>