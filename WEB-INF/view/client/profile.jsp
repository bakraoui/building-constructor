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
    <title>Profile</title>

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
                        <h1 class="h3 mb-0 text-gray-800">Profile</h1>
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
                    		<div class="card shadow mb-4">
		                        <div class="card-header py-3">
		                            <h6 class="m-0 font-weight-bold text-purple">Les demandes d'achat</h6>
		                        </div>
		                        <div class="card-body">
	                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
	                                    <thead>
	                                        <tr>
	                                            <th>Id</th>
	                                            <th>Date de demande</th>
	                                            <th>Projet</th>
	                                            <th>Prix</th>
	                                            <th>Etat</th>
	                                            <th>Action</th>
	                                        </tr>
	                                    </thead>
	                                    <tbody>
	                                    	<c:forEach items="${demandes}" var="element">
												<tr>
													<td>${element.id}</td>
													<td>${element.dateDemande}</td>
													<td>${element.projet.titre}</td>
													<td>${element.projet.prixVente}DH</td>
													<td>${element.etat}</td>
													<td width="50px">
														<a href="?demande=${element.id}" class="btn btn-secondary btn-sm">Détails</a>
													</td>
												</tr>
											</c:forEach>
                                        <tbody>
	                                </table>
                        		</div>
                   			 </div>
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

    <!-- Page level plugins -->
    <script src="inc/vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="inc/vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="inc/js/demo/datatables-demo.js"></script>

</body>
</html>