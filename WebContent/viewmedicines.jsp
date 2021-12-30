<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.medicine.util.DBConnectionUtil"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<h1>List of Medicines</h1>

						<table class="table table-striped">
							<thead>
								<tr>
									<th scope="col">Medicine Name</th>
									<th scope="col">Manufacturer</th>
									<th scope="col">Company</th>
									<th scope="col">Supplier</th>
									

								</tr>
							</thead>

							<%
							try {
								Connection conn = DBConnectionUtil.getDBConnection();
								PreparedStatement preparedStatement;
								Statement statement;
								preparedStatement = conn.prepareStatement("select * from MEDICINES");
								
								ResultSet resultSet = preparedStatement.executeQuery();
								while (resultSet.next()) {
							%>
							<tbody>
								<tr>

									<td><%=resultSet.getString("NAME")%></td>
									<td><%=resultSet.getString("MANUFACTURER")%></td>
									<td><%=resultSet.getString("COMPANY")%></td>
									<td><%=resultSet.getString("SUPPLIER")%></td>
									
						
									<td>
										<form method="GET" action="updatemedicine">
											<input type="hidden" name="id"
												value="<%=resultSet.getString("ID")%>" />
											<button type="submit" class="btn btn-primary"
												value="Select Order">Edit</button>
										</form>
									</td>

								</tr>
							</tbody>

							<%
							}
							} catch (Exception e) {

							}
							%>
						</table>

					</div>
				</div>                
                
                
                
<div class=col-md-12 col-lg-12">
<a class="btn btn-primary" href="addmedicine.jsp" role="button">New order</a>
<a class="btn btn-primary" href="Login.jsp" role="button">Logout</a>
</div>
					
					
                    
                    
                </div>
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container-fluid -->
  
    
	

</body>
</html>