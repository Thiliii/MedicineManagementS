<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>


<meta charset="UTF-8">
<title>Oder Medicine</title>
</head>
<body >


        <div class="container-fluid">
            <!-- Page Heading -->
            <div class="row" id="main" >
                <div class="col-sm-12 col-md-12 " id="content">
                
                    <h1><center>Medicine & Drug Ordering</center></h1>
                    <h2>Order Medicine</h2>
                    
    
                    <form method="POST" action="addmedicine">
                    
					 <div class="form-group row">
					    <label class="col-sm-2 col-form-label">Medicine Name</label>
					    <div class="col-sm-10">
					    	<input type="text" class="form-control" name="medicine" required="required">
					    </div>
					  </div>
					  
					  <div class="form-group row">
					    <label class="col-sm-2 col-form-label">Manufacturer</label>
					    <div class="col-sm-10">
					    	<input type="text" class="form-control" name="manufacturer" required="required">
					    </div>
					  </div>
					  
					  <div class="form-group row">
					    <label class="col-sm-2 col-form-label">Company</label>
					    <div class="col-sm-10">
					    	<input type="text" class="form-control" name="company" required="required">
					    </div>
					  </div>
					  
					 
					  
					  <div class="form-group row">
					    <label class="col-sm-2 col-form-label">Supplier</label>
					    <div class="col-sm-10">
					    	<input type="text" class="form-control" name="supplier" required="required" >
					    </div>
					    
					  </div>
					  
	

					  
					  <button type="submit" class="btn btn-primary" value="Add order" >Submit</button>
			
					</form>
					<br>
					<div >
					
					
						<table>
						<a href="viewmedicines.jsp">
						<button type="submit" class="btn btn-success" value="List All Oders" >List All Medicines</button></a>
						
                        <a class="btn btn-primary" href="Login.jsp" role="button">Logout</a>
						
						</table>

					
					</div>
					                    
                    
                </div>
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container-fluid -->
  
  
</body>
</html>