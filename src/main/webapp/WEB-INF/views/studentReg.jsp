<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
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
<script type="text/javascript">
$(document).ready(function(){
	$('#form1').submit(function(e){
		var studentName=$("#studentName").val();
		var age=$("#age").val();
		var dob=$("#dateOfBirth").val();
		var myDate=new Date(dob);
		var today=new Date();
		var regExName=/^([A-Z][A-Za-z]+){1,7}$/;
		var regExAge=/^([0-9]){1,2}$/;
		
		
		if(!regExName.test(studentName)){
			e.preventDefault();
			
			//$("#studentName").after("");
			$("#errspan").text("not valid");
		}
		if(!regExAge.test(age)){
			
			e.preventDefault();
			$("#errage").text("not valid");
		}
if(myDate>today){
			
			e.preventDefault();
			$("#dateOfBirth").after("<span>Future date not accepted</span>");
		}
		
		
		
		
	});
});
</script>
<!-- <script > -->

<!-- //    function validateDOB() -->
<!-- //    { -->
<!-- //     var dateString = document.getElementById('dateOfBirth').value; -->
<!-- //     var myDate = new Date(dateString); -->
<!-- //     var today = new Date(); -->
<!-- //     if ( myDate > today ) {  -->
<!-- //         $('#dateOfBirth').after('<p>You cannot enter a date in the future!.</p>'); -->
<!-- //         return false; -->
<!-- //     } -->
<!-- //     return true; -->
<!-- // } -->
<!-- </script> -->
<script>

// function validateAge()
// {
// var ageNumber=document.getElementById('age').value;
// if(ageNumber.length>2){
// 	 $('#age').after('<p>Age should be 2 digits only</p>');
// 	 return false;
// }

// 	return true;
</script>

</head>
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
   <form action="/studentToDb" method="post" id="form1"  >

<span>${e.message}</span>
<div class="form-group">
      <label for="studentName">Name</label>
      <input type="text"    class="form-control" id="studentName" placeholder="Enter name" name="studentName">
      <span id="errspan"> </span>
    </div>
    
   
<div class="form-group">
      <label for="dateOfBirth">Date of Birth</label>
      <input type="date" class="form-control" id="dateOfBirth" placeholder="Enter Date of Birth " name="dateOfBirth">
    </div>
    
    <div class="form-group">
      <label for="age">Age</label>
      <input type="number"  class="form-control" id="age" placeholder="Enter your age" name="age"  >
      <span id="errage"> </span>"
    </div>
    
    <div class="form-group">
    <label for="studentSection">Section</label>
     <select name = "studentSection" id="studentSection">
      
          <c:forEach var="sec" items="${sectionList}">
      <option  value="${sec.classId}">${sec.section}</option>
   
      </c:forEach>
       </select>
    
     </div>
     <button type="submit" class="btn btn-outline-success" >Submit</button>
    
    
    </form>
    </div>
   
    </div>
    </div>

</body>
</html>