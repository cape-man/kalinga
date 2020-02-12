<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta charset="utf-8">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-expand-md bg-dark navbar-dark">
 <a class="navbar-brand" href="/">School Management</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  </nav>
  <h1>Student Details</h1>
   <form action="/getAllStudent" method="post">
<div class="container">
   <div class="form-group">
    <label for="studentSection">Section</label>
     <select name = "studentSection" id="studentSection">
      
          <c:forEach var="sec" items="${sectionList}">
      <option  value="${sec.classId}">${sec.section}</option>
   
      </c:forEach>
       </select>
    
     </div>
     <button type="submit" class="btn btn-outline-success">Submit</button>
     </div>
     </form>
     
     <div class="container">
		

		<table class="table table-striped">
			<thead>
				<tr>
					<th>Student Name</th>
					<th>Date of Birth</th>
					<th>Age</th>
					<th>Section</th>
					
				</tr>

			</thead>
			<tbody>
				<c:forEach var="student" items="${listStudent}">
					<tr>
						<td>${student.studentName}</td>
						<td>${student.dateOfBirth}</td>
						<td>${student.age}</td>
						<td>${studentSection}</td>
						
						
					</tr>

				</c:forEach>
			</tbody>

		</table>
	</div>

</body>
</html>