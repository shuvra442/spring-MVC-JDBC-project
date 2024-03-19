<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>

<html>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">

<body>

<h1 class="containetr text-center mt-4 text-primary">Student List</h1>
<br/>


<div class="text-dark container text-center flex">
<c:forEach var="emp" items="${list}">
 <div class="d-flex justify-content-around align-items-center p-3 rounded shadow-lg blod">
   <div>
      ${emp.id }
   </div>
   <div>
     ${emp.name }
   </div>
   <div>
      ${emp.qualification}
   </div>
   <div>
     ${emp.address } 
   </div>
   
   <a href="editstd/${emp.id}">
      <span class="material-icons"> 
         update
      </span> 
   </a>
   
   <a href="deletestd/${emp.id}">
     <span class="material-icons">
      delete
     </span>
   </a>
   
   
   
 </div>
 <br/>
</c:forEach>
</div>

<div class="text-center mt-3 blod size-4">
   <a href="studentForm" class="text-success" style="text-decoration:none;font-size: 2rem;">Add New Employee</a>
</div>
 
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

  </body>
  </html>