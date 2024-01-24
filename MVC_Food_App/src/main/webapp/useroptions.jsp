<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Your JSP Page</title>
     <style type="text/css">
     
     body{
       margin :200px;
        background-color: rgba(83, 146, 65, 0.8);
     
     }
    
     
    h2{
     border: 2px solid rgba(220, 0, 48, 1);
     border-radius: 10px;
     padding: 30px;
     display: inline-block;
     margin-left: 30px;
    background-color: rgba(116, 78, 126, 0.28);
    }
     h2:hover{
       border :3px solid  rgba(199, 20, 82, 0.92);
      background-color: rgba(215, 170, 57, 0.92);
     
     }
    
    
    
     h2 a{
      text-decoration: none;
      text-align: center;
      color: rgba(47, 8, 28, 0.8);
      
     }
     h1{
      margin-left: 250px;
     }
     
     </style>
    
    
</head>
<body>
       <div class="main">  
              <h1>User Options</h1>
        <h2><a href="addorderfood">Order food</a></h2> 
        <h2><a href="veiwfoodorder">View food Order</a></h2>  
        <h2><a href="profile">view Profile</a></h2>  
       </div>
</body>
</html>
 