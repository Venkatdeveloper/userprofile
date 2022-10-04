 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="com.userprofile.*" %>
<!DOCTYPE html>
<html>
<head>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
      <link rel="stylesheet" href="profile.css">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        #logout{
        
          position:relative;
          left:90%;
          top:30px;
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
 

 
<% 
String username=(String)session.getAttribute("name");
   User user=User.userdetails(username);
%>
   
   <a id="logout" class="btn btn-primary" href="LogoutServlet">Logout</a>
    <div class="col">
        <div class=row1>
            <h2>My profile</h2>
            <br>
          <form action="UpdateServlet"  method="post">
                <div class="row g-3" style="width:500px">
                  <div class="col-sm-6">
                    <label for="firstName" class="form-label"> name</label>
                    <input type="text" class="form-control" id="firstName" name="username" placeholder="<%=user.getUserName() %>" disabled required>
                    <div class="invalid-feedback">
                        Valid first name is disabled.
                    </div>
                  </div>
      
                 
                  <div class="col-12">
                    <label for="username" class="form-label">Mobile No</label>
                    <div class="input-group has-validation">
                      
                      <input type="number" class="form-control" id="username" name="mobile" placeholder="<%=user.getUserMobile() %>" disabled required>
                    
                    </div>
                  </div>
              
      
                  <div class="col-12">
                    <label for="email" class="form-label">Email <span class="text-muted"></span></label>
                    <input type="email" class="form-control" name="email" id="email" placeholder="<%=user.getUserEmail() %>" disabled required>
                    <div class="invalid-feedback">
                      Please enter a valid email address 
                    </div>
                  </div>
      
                    <div class="col-12">
                    <label for="address" class="form-label">Date Of Birth</label>
                    <input type="text" class="form-control" name="dob" id="dob" placeholder="<%=user.getUserDateOFBirth() %>" disabled required>
                    <div class="invalid-feedback">
                     
                    </div>
                  </div>
      
      
            
               
                <div class="edit">
                    <a  style="display:none" href="profile.jsp" id="cancel"    class="w-100 btn btn-primary btn-lg" >Cancel</a>
                    <button  style="display:none"  disabled id="save" class="w-100 btn btn-primary btn-lg"  type="submit">Save</button>
                   
                </div>  
           </div>
         
            </form>
                
       
            <button onclick="edit()"  id="edit" class="btn btn-primary btn-lg" >Edit</button>

               
    </div>
     
  </div>
   
   <script>
     function edit()
     {
        var save=document.getElementById("save");
        let collect=document.getElementsByClassName("form-control");
        let collect2=document.getElementsByClassName("form-select");
        document.getElementById("dob").type="date"
        if(save.disabled==true)
        {
               
                for(let i=0;i<collect.length;i++)
                {
                    collect[i].disabled=false;
                    console.log("ccdscsd");
                }  
                for(let i=0;i<collect2.length;i++)
                {
                    collect2[i].disabled=false;
                    console.log("ccdscsd");
                }
        }
        save.disabled=false;
        document.getElementById("cancel").style.display="block"
        document.getElementById("save").style.display="block"
        document.getElementById("edit").style.display="none";
       
     }
     function save()
     {
        var save=document.getElementById("save");
        let collect=document.getElementsByClassName("form-control");
        let collect2=document.getElementsByClassName("form-select");
        if(save.disabled==false)
        {
               
                for(let i=0;i<collect.length;i++)
                {
                    collect[i].disabled=true;
                    console.log("ccdscsd");
                }  
                for(let i=0;i<collect2.length;i++)
                {
                    collect2[i].disabled=true;
                    console.log("ccdscsd");
                }
        }
        document.getElementById("save").disabled=true;
       
        document.getElementById("edit").style.display="block";
     }
      
   </script>
</body>
</html>