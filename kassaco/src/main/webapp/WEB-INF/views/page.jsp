
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />
<spring:url var="fonts" value="/resources/fonts" />
<spring:url var="scss" value="/resources/scss" />
<spring:url var="vendors" value="/resources/vendors" />
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />


<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Kalima Sacco -${title}</title>
<!-- plugins:css -->
<link rel="stylesheet"
	href="${vendors}/iconfonts/mdi/css/materialdesignicons.min.css">
<link rel="stylesheet"
	href="${vendors}/iconfonts/ionicons/css/ionicons.css">
<link rel="stylesheet"
	href="${vendors}/iconfonts/typicons/src/font/typicons.css">
<link rel="stylesheet"
	href="${vendors}/iconfonts/flag-icon-css/css/flag-icon.min.css">
<link rel="stylesheet" href="${vendors}/css/vendor.bundle.base.css">
<link rel="stylesheet" href="${vendors}/css/vendor.bundle.addons.css">
<!-- endinject -->
<!-- plugin css for this page -->
<!-- End plugin css for this page -->
<!-- inject:css -->
<link rel="stylesheet" href="${css}/shared/style.css">
<!-- endinject -->
<!-- Layout styles -->
<link rel="stylesheet" href="${css}/demo_1/style.css">
<!-- End Layout styles -->
<link rel="shortcut icon" href="${images}/favicon.png" />
</head>
<body>

	<div class="container-scroller">
		<!-- partial:partials/_navbar.html -->
		<%@include file="./shared/navbar.jsp"%>
		<!-- partial -->
		<div class="container-fluid page-body-wrapper">
			<!-- partial:partials/_sidebar.html -->
			<%@include file="./shared/sidebar.jsp"%>
			<!-- partial -->
			<div class="main-panel">
				<c:if test="${userClickHome==true}">
					<%@include file="homeadmin.jsp"%>
				</c:if>
				<c:if test="${userClickProfile==true}">
					<%@include file="profile.jsp"%>
				</c:if>
				<c:if test="${userClickUsers==true}">
					<%@include file="users.jsp"%>
				</c:if>

				<!-- main-panel ends -->
				<!-- content-wrapper ends -->
				<!-- partial:partials/_footer.html -->
				<%@include file="./shared/footer.jsp"%>
				<!-- partial -->
			</div>

		</div>
		<!-- page-body-wrapper ends -->

	</div>
	<!-- container-scroller -->
	<!-- plugins:js -->
	<script src="${vendors}/js/vendor.bundle.base.js"></script>
	<script src="${vendors}/js/vendor.bundle.addons.js"></script>
	<!-- endinject -->
	<!-- Plugin js for this page-->
	<!-- End plugin js for this page-->
	<!-- inject:js -->
	<script src="${js}/shared/off-canvas.js"></script>
	<script src="${js}/shared/misc.js"></script>
	<!-- endinject -->
	<!-- Custom js for this page-->
	<script src="${js}/demo_1/dashboard.js"></script>
	<!-- End custom js for this page-->
</body>
</html>