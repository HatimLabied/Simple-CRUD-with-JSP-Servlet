<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit Student</title>
 <link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>



<div class="container">
  <div class="jumbotron">
    <h1>Bootstrap Tutorial</h1>
    <p>Bootstrap is the most popular HTML, CSS, and JS framework for developing
    responsive, mobile-first projects on the web.</p>
  </div>
 
</div>





<%@page import='com.hatim.Student' %>
<%@page import='com.hatim.StudentDao'%>
  
<%  
String id=request.getParameter("id");  
Student s=StudentDao.getRecordById(Integer.parseInt(id));  

 

%> 




<div class="container">

 <form action="studentEdit.jsp" method="post">
  
   ID:<br>
  <input type="text" name="id"  class="form-control" value="<%=s.getId() %>"><br>
  First name:<br>
  <input type="text" name="name"  class="form-control" value="<%= s.getName()%>"><br>
  Password:<br>
  <input type="password" name="password"  class="form-control" value="<%= s.getPassword()%>"><br> 
    Email:<br>
  <input type="text" name="email"  class="form-control" value="<%= s.getEmail()%>"><br> 
      Gender:<br>
      <div class="radio">
    <input type="radio" name="gender" value="homme" > homme<br>
          </div>
                <div class="radio">
  <input type="radio" name="gender" value="femme" >femme<br>
      </div>
      Country:<br>
  <select name="country" >
  <option value="Maroc">Maroc</option>
  <option value="tunisie">tunisie</option>
  <option value="france">france</option>
  <option value="afrique sud">frique sud</option>
  <option value="autre">autre/option>
</select>
 
  
  <input type="submit" value="Edit" class="btn btn-primary btn-lg pull-right">
</form> 


     </div>














</body>
</html>
