<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
   <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
  <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/additional-methods.min.js" integrity="sha256-vb+6VObiUIaoRuSusdLRWtXs/ewuz62LgVXg2f1ZXGo="crossorigin="anonymous"></script>
<!-- <script> -->

// $(document).ready(function(){
// 	$('form').validate({
		
// 		rules: {
// 			teacherName:{
// 				required:true,
// 				lettersonly:true,
				
// 			},
// 	count:{
// 		required:true,
// 		maxlength:2,
// 		number:true
// 	},
// 	section:{
// 		required:true,
// 		maxlength:1,
		
// 	}
			
			
// 		}
// 	});
// });
<!-- </script> -->
</head>
<style> body {     background-image:         url('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSCYYHljhcv013qsMl2WkOpB9tqQ9hKr4hJEeLdFDppMW7FSbAn');     background-repeat: no-repeat;     background-attachment: fixed;     background-size: cover;     background-size: 100% 100%; } </style>
<body>
<nav class="navbar navbar-expand-md bg-dark navbar-dark">
 <a class="navbar-brand" href="/">School Management</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  </nav>
  
  <div class="row">
  <div class="col-md-4"></div>
  <div class="col-md-4">
  <div class="container">
  
  <form action="/classToDb" method="post" style="border:1px blue;">

<div class="form-group">
      <label for="section">Section</label>
      <input type="text"   class="form-control" id="section" placeholder="Enter Section" name="section">
    </div>
    
   
<div class="form-group">
      <label for="teacherName">Class Teacher</label>
      <input type="text" class="form-control" id="teacherName" placeholder="Enter TeacherName " name="teacherName">
    </div>
    
    <div class="form-group">
      <label for="count">No of Students</label>
      <input type="number" class="form-control" id="count" placeholder="Enter no of students" name="count">
    </div>
     <button type="submit" class="btn btn-outline-success">Submit</button>
    
    </form>
    </div>
    </div>
    </div>
    
    

</body>
</html>