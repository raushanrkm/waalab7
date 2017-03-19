<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
<link rel="stylesheet"	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">

</head>
<body>

<h1>Registration Form</h1><br />
    
    
    <form:form action ="registration" method="post" modelAttribute="student" class="form-horizontal" >
    
    <form:errors path="*" cssClass="alert alert-danger" element="div"/>
    <div>
   
		<label for="id">ID:</label>
		<form:input path="id"/>
		<form:errors path="id" cssClass="text-danger" />
		</br>
		</div>
		<div>
		<label for="firstName">FirstName</label>
		<form:input path="firstName"/>
		<form:errors path="firstName" cssClass="text-danger"/>
		</br>
		</div>
		
		<div>
        <label for ="lastName">lastName</label>
        <form:input path="lastName"/>
        <form:errors path="lastName" cssClass="text-danger"/>
        		</br>
        		
        		</div>
        <div>
        <label for ="email">Email</label>
        <form:input path="email"/>
        <form:errors path ="email" cssClass="text-danger"/>
        		</br>
        </div>
        <label for ="gender">Gender</label>
        <form:select id="gender" path="gender">
        
        <form:option value="" label="--select gender--"></form:option>
        <form:options items="${genders}"/>
        </form:select>
        <form:errors path="gender" cssClass="text-danger"/>
        		<br/>
        
         <label for ="birthday">BirthDay</label>
         <form:input path="birthday"/>
         
          <form:errors path="birthday" cssClass="text-danger"/>
         		<br/>
         
         <label for="phone">Phone</label>
         <form:input path="phone.area"/>
         <form:input path="phone.prefix"/>
         <form:input path="phone.number"/>
         
           <form:errors path="phone" cssClass="text-danger"/>
         		<br/>
         
         
         <div class="form-group">
					<div class="col-lg-offset-2 col-lg-10">
						<input type="submit" id="btnAdd" class="btn btn-primary" value ="Add"/>
					</div>
				</div>
        
    
    </form:form>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
 
</body>
</html>