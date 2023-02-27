<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Management System</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
	   <style>
    * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;
 
}

body {
    min-height: 100vh;
}

a {
    text-decoration: none;
    color: #1105fb;

    
}

li {
    list-style: none;
}

h1{
    color: rgb(245, 127, 17);
}

h2 {
    color: rgb(49, 27, 6);
}
h3 {
    color: #999;
}

.btn {
    background: #2b0650;
    color: white;
    padding: 5px 10px;
    text-align: center;
}

.btn:hover {
    color: #f05462;
    background: white;
    padding: 3px 8px;
    border: 2px solid #f05462;
}

.title {
    display: flex;
    align-items: center;
    justify-content: space-around;
    padding: 15px 10px;
    border-bottom: 2px solid #999;
}

table {
    padding: 10px;
}

th,
td {
    text-align: left;
    padding: 8px;
}

.side-menu {
    position: fixed;
    background: #1a1616;
    width: 20vw;
    min-height: 100vh;
    display: flex;
    flex-direction: column;
}

.side-menu .logo {
    height: 10vh;
    display: flex;
    align-items: center;
    justify-content: center;
}

.side-menu li {
    font-size: 24px;
    padding: 10px 40px;
    color: white;
    display: flex;
    align-items: center;
}

.side-menu li:hover {
    background: white;
    color: #f05462;
}

.container {
    position: absolute;
    right: 25%;
    width: 80vw;
    height: 100vh;
    background: #f1f1f1;
}


.container .content {
    position: relative;
    margin-top: 10vh;
    min-height: 90vh;
    background: #f1f1f1;
}

.container .content .cards {
    padding: 20px 15px;
    display: flex;
    align-items: center;
    justify-content: space-between;
    flex-wrap: wrap;
}

.container .content .cards .card {
    width: 250px;
    height: 150px;
    background: white;
    margin: 20px 10px;
    display: flex;
    align-items: center;
    justify-content: space-around;
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}

.container .content .content-2 {
    min-height: 60vh;
    display: flex;
    justify-content: space-around;
    align-items: flex-start;
    flex-wrap: wrap;
}

.container .content .content-2 .rececent-employee {
    min-height: 50vh;
    flex: 5;
    background: white;
    margin: 0 25px 25px 25px;
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
    display: flex;
    flex-direction: column;
}


@media screen and (max-width: 1050px) {
    .side-menu li {
        font-size: 18px;
    }
}

@media screen and (max-width: 940px) {
    .side-menu li span {
        display: none;
    }
    .side-menu {
        align-items: center;
    }
    .side-menu li img {
        width: 40px;
        height: 40px;
    }
    .side-menu li:hover {
        background: #f05462;
        padding: 8px 38px;
        border: 2px solid white;
    }
}

@media screen and (max-width:536px) {
    .brand-name h1 {
        font-size: 16px;
    }
    .container .content .cards {
        justify-content: center;
    }
    .side-menu li img {
        width: 30px;
        height: 30px;
    }
    .container .content .content-2 .recent-employee table th:nth-child(2),
    .container .content .content-2 .recent-employee table td:nth-child(2) {
        display: none;
    }
} 
    </style>
</head>
<body>
	<header>
	  <div class="side-menu">
        <div class="logo">
            <h1>DBU</h1>
        </div>
        <ul>
            <li><a href="#"><img src="dashboard (2).png" alt="">&nbsp; <span>Dashboard</span></a> </li>
            <li> <a href="employee-list.jsp"><img src="reading-book (1).png" alt="">&nbsp;<span>View Employee</span></a> </li>
            <li><a href="new"><img src="teacher2.png" alt="">&nbsp;<span>Add Employee</span> </a></li>
            <li><a href="edit?id=<c:out value='${employee.id}' />"><img src="payment.png" alt="">&nbsp;<span>Update Employee</span></a> </li>
            <li><a href="home.jsp"><img src="settings.png" alt="">&nbsp;<span>Logout</span> </a></li>
        </ul>
    </div>
	</header>
	<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${employee != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${employee == null}">
					<form action="insert" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${employee != null}">
            			Edit Employee
            		</c:if>
						<c:if test="${employee == null}">
            			Add New Employee
            		</c:if>
					</h2>
				</caption>

				<c:if test="${employee != null}">
					<input type="hidden" name="id"
						value="<c:out value='${employee.id}' />" />
				</c:if>

				<fieldset class="form-group">
					<label>Employee Name</label> <input type="text"
						value="<c:out value='${employee.name}' />" class="form-control"
						name="name" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label>Employee Email</label> <input type="email"
						value="<c:out value='${employee.email}' />" class="form-control"
						name="email">
				</fieldset>

				<fieldset class="form-group">
					<label>Employee Country</label> <input type="text"
						value="<c:out value='${employee.country}' />" class="form-control"
						name="country">
				</fieldset>

				<fieldset class="form-group">
					<label>Employee Role</label> <input type="text"
						value="<c:out value='${employee.role}' />" class="form-control"
						name="role">
				</fieldset>

				<button type="submit" class="btn btn-success">Save</button>
				</form>

			</div>
		</div>
	</div>
</body>
</html>