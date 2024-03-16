<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>

<html>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<body>

<h1 class="containetr text-dark text-center">Student List</h1>
<br/>


<div class="text-primary ">
<c:forEach var="emp" items="${list}">
  ${emp.id }
  ${emp.name }
  ${emp.qualification}
  ${emp.address } <br/>
</c:forEach>
</div>

<!--  
<table border="2" width="70%" cellpadding="2">
<tr><th>Id</th><th>Name</th><th>Salary</th><th>Designation</th><th>Edit</th><th>Delete</th></tr>
 <c:forEach var="emp" items="${list}">
 
   <tr>
   <td>${emp.id}</td>
   <td>${emp.name}</td>
   <td>${emp.qualification}</td>
   <td>${emp.address}</td>
   <td><a href="editstd/${emp.id}">Edit</a></td>
   <td><a href="deletestd/${emp.id}">Delete</a></td>
   </tr>
   </c:forEach>
   </table> --> 
   <br/>
  <a href="studentForm">Add New Employee</a>
  
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

  </body>
  </html>