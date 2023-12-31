<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>


<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" type="image/x-icon" href="inc/assets/newlogo.png" />
    <title>Changer les informations</title>

    <!-- Custom fonts for this template-->
    <link href="inc/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="inc/css/style.css" rel="stylesheet">
    <link href="inc/css/profileStyle.css" rel="stylesheet">
    <link href="inc/css/myStyle.css" rel="stylesheet">

</head>
<body id="page-top">
    <div id="wrapper">
    
        <!-- Sidebar -->
        <c:import url="inc/sidebar.jsp"></c:import>


        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">
            
                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>
                    <div class="mx-3 my-auto">
                        <h1 class="h3 mb-0 text-gray-800">Changer les informations</h1>
                    </div>
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item no-arrow">
                            <a class="nav-link" href="logout" id="userDropdown" role="button"
                                aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Se déconnecter</span>
                                <i class="fas fa-sign-out-alt"></i>
                            </a>
                        </li>
                    </ul>
                </nav>
                
                <!-- Begin Page Content -->
                <div class="container-fluid">
                    <!-- Content Row -->
                    <div class="row">
                    	<div class="card-body">
                    		<form method="post" action="client-change-infos" class="user col-md-6 mx-auto">
                                <div class="form-group row">
                                    	<div class="col-sm-6 mb-3 mb-sm-0">
                                        	<input type="text" class="form-control form-control-user" id="prenom" name="prenom" 
                                            	aria-describedby="prenomErreur" placeholder="Prénom" 
                                            	<c:if test="${!empty client.prenom}">value="${client.prenom}"</c:if> 
                               					<c:if test="${empty client.prenom}">value="${sessionScope.sessionUser.prenom}"</c:if>>
                                        	<div id="prenomErreur" class="text-danger form-text px-3">${form.erreurs.prenom}</div>
	                                    </div>
	                                    
	                                    <div class="col-sm-6 mb-3 mb-sm-0">
	                                        <input type="text" class="form-control form-control-user" id="nom" name="nom" 
                                            	aria-describedby="nomErreur" placeholder="Nom" 
                                            	<c:if test="${!empty client.nom}">value="${client.nom}"</c:if> 
                               					<c:if test="${empty client.nom}">value="${sessionScope.sessionUser.nom}"</c:if>>
	                                        <div id="nomErreur" class="text-danger form-text px-3">${form.erreurs.nom}</div>
	                                    </div>
                               		</div>
                               		
	                                <div class="form-group row">
	                                    <div class="col-sm-6 mb-3 mb-sm-0">
	                                        <input type="text" class="form-control form-control-user" id="cin" name="cin" 
                                            	aria-describedby="cinErreur" placeholder="CIN" 
                                            	<c:if test="${!empty client.cin}">value="${client.cin}"</c:if> 
                               					<c:if test="${empty client.cin}">value="${sessionScope.sessionUser.cin}"</c:if>>
	                                        <div id="cinErreur" class="text-danger form-text px-3">${form.erreurs.cin}</div>
	                                    </div>
	                                    
	                                    <div class="col-sm-6 mb-3 mb-sm-0">
	                                        <input type="text" class="form-control form-control-user" id="tele" name="tele" 
	                                            aria-describedby="teleErreur" placeholder="Numéro de téléphone" 
                                            	<c:if test="${!empty client.tele}">value="${client.tele}"</c:if> 
                               					<c:if test="${empty client.tele}">value="${sessionScope.sessionUser.tele}"</c:if>>
	                                        <div id="teleErreur" class="text-danger form-text px-3">${form.erreurs.tele}</div>
	                                    </div>
	                                </div>
	                                
	                                <div class="form-group">
	                                     <input type="email" class="form-control form-control-user" id="email" name="email"
                                            	aria-describedby="emailErreur" placeholder="Adresse email" 
                                            	<c:if test="${!empty client.email}">value="${client.email}"</c:if> 
                               					<c:if test="${empty client.email}">value="${sessionScope.sessionUser.email}"</c:if>>
	                                     <div id="emailErreur" class="text-danger form-text px-3">${form.erreurs.email}</div>
	                                </div>
                                <button type="submit" class="btn btn-user btn-block text-light" id="connexionBtn">Valider</button>
               				</form>
            			</div>
           			</div>
            	</div>
			</div>
            <!-- Footer -->
                 <c:import url="/inc/includes/footer.jsp"></c:import>
        </div>
    </div>

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>
    
	<!-- Bootstrap core JavaScript-->
    <script src="inc/vendor/jquery/jquery.min.js"></script>
    <script src="inc/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="inc/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="inc/js/sb-admin-2.min.js"></script>

</body>
</html>