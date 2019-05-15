<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<link rel="stylesheet"
	href="<c:url value="/resources/bootstrap.min.css" />">
<script src="<c:url value="/resources/jquery.js" />"></script>


<link rel="stylesheet"
	href="<c:url value="/resources/custom-resources/cssClass-min.css" />">
<link rel="stylesheet"
	href="<c:url value="/resources/custom-resources/fonts/font-awesome.min.css" />">
<script src="<c:url value="/resources/custom-resources/app.js" />"></script>
<script
	src="<c:url value="/resources/custom-resources/valigniter.js" />"></script>
<script
	src="<c:url value="/resources/custom-resources/bootbox.min.js" />"></script>

</head>
<body>

	<div class="container" style="margin-top: 50px;">
		<div class="row">
			<div class="col-md-10">
				<div class="card">
					<div class="card-heading  text-center text-primary"
						style="background: #93CBF9; color: #fff; font-size: 15px;">
						PDS<span class="pull-right"></span>
					</div>
					<div class="card-body">
						<form:form method="post" role="form" modelAttribute="album"
							action="${contextPath}/pds" class="form-horizontal"
							enctype="multipart/form-data">
							<div class="form-group">
								<div class="col-sm-9">
									<form:input type="text" class="form-control" path="albumName"
										placeholder="Album Name" />
								</div>
							</div>
							<jsp:include page="/WEB-INF/views/pds/multiple.jsp" />
							<div class="form-group">
								<div class="col-sm-offset-4 col-sm-5">
									<button type="submit" class="btn btn-primary">&nbsp;
										Save &nbsp;</button>
								</div>
							</div>
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
