 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<head>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
   
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
   <style type="text/css">
.box
{
 position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    width: 30%;
    padding: 30px 10px 20px 10px;
    box-sizing: border-box;
    border: 1px solid #dadce0;
    -webkit-border-radius: 8px;
    border-radius: 8px;
 
}
input{
  margin-top:20px;
   
}
button{

    position: relative;
    top:10px;
    left:230px;
}
 .box p {
    font-size: 18px;
    font-family: "Times New Roman", Times, serif;
    font-weight: 900;
    letter-spacing: .1px;
    line-height: 1.5;
    margin-bottom: 25px;
    text-align: center;
    
  }
</style>
</head>
<body>
<%
HttpServletResponse httpResponse = (HttpServletResponse) response;
httpResponse.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1
httpResponse.setHeader("Pragma", "no-cache"); // HTTP 1.0
httpResponse.setDateHeader("Expires", 0);
%>

<div class="box">
   <p>Sign into your account</p>

  <form  class="px-4 py-3" action="LoginServlet" method="post">

  
    <div class="mb-3">
       
      <input type="text" class="form-control" name="username" required placeholder="Enter Username" id="exampleDropdownFormEmail1" placeholder="email@example.com">
    </div>
    
    <div class="mb-3 input1">
       
      <input type="password" class="form-control" onblur="check()"  name="password" required placeholder="Enter Password" id="exampleDropdownFormPassword1" placeholder="Password">
    </div>
    
    
    <button type="submit" class="btn btn-primary">Sign in</button>
  </form>
  <div class="dropdown-divider"></div>
 
  <a class="dropdown-item" href="signup.jsp">Create Account </a>
</div>



 

 
</body>
</html>