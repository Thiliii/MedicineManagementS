<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.medicine.util.DBConnectionUtil"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>


<meta charset="UTF-8">
<title>Add Medicine</title>
</head>
<body >


        <div class="container-fluid">
            <!-- Page Heading -->
            <div class="row" id="main" >
                <div class="col-sm-12 col-md-12 " id="content">
                
<h1><center>Medicine & Drug Ordering</center></h1>
<h1>Update Medicine</h1>


						<%
						try {
							Connection conn = DBConnectionUtil.getDBConnection();
							PreparedStatement preparedStatement;
							Statement statement;
							preparedStatement = conn.prepareStatement("select * from MEDICINES where ID=?");
							preparedStatement.setInt(1, Integer.parseInt(request.getParameter("id")));

							ResultSet resultSet = preparedStatement.executeQuery();
							while (resultSet.next()) {
						%>
						<form method="POST" action="updatemedicine">


							 <div class="form-group row">
					    <label class="col-sm-2 col-form-label">Medicine Name</label>
					    <div class="col-sm-10">
					    	<input value="<%=resultSet.getString("NAME")%>" type="text" class="form-control" name="medicine" required="required">
					    </div>
					  </div>
					  
					  <div class="form-group row">
					    <label class="col-sm-2 col-form-label">Manufacturer</label>
					    <div class="col-sm-10">
					    	<input value="<%=resultSet.getString("MANUFACTURER")%>" type="text" class="form-control" name="manufacturer" required="required">
					    </div>
					  </div>
					  
					  <div class="form-group row">
					    <label class="col-sm-2 col-form-label">Company</label>
					    <div class="col-sm-10">
					    	<input value="<%=resultSet.getString("COMPANY")%>" type="text" class="form-control" name="company" required="required">
					    </div>
					  </div>
					  
					 
					  
					  <div class="form-group row">
					    <label class="col-sm-2 col-form-label">Supplier</label>
					    <div class="col-sm-10">
					    	<input value="<%=resultSet.getString("SUPPLIER")%>" type="text" class="form-control" name="supplier" required="required" >
					    </div>
					    
					  </div>

							<input type="hidden" name="id"
								value="<%=resultSet.getString("ID")%>" />
							<button type="submit" class="btn btn-primary"
								value="Update Order">Update</button>
							
						</form>

						<br>

						<form method="POST" action="deletemedicine">
							<input type="hidden" name="id"
								value="<%=resultSet.getString("ID")%>" />
							<button type="submit" class="btn btn-danger"
								value="Delete Order">Delete</button>
						</form>
						<%
							}
							} catch (Exception e) {

							}
							%>

					</div>              

<div class=col-md-12 col-lg-12">
<br><a class="btn btn-primary" href="addmedicine.jsp" role="button">New order</a>
<a class="btn btn-primary" href="Login.jsp" role="button">Logout</a>
</div>
					
					
                    
                    
                </div>
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container-fluid -->
  
    


</body>
</html>