<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<section id="navbar" class="navbar navbar-expand sticky-top">
		<div class="container">
			<div class="navbar-brand fw-bold h2">
				<a href="/hexa/home">Hexa</a>
			</div>
			<ul class="navbar-nav gap-4 d-flex align-items-center"
				id="navbar-nav">
				<li class="nav-item active fw-bold"><a href="/hexa/home">Home</a></li>
			
				<c:if test="${sessionScope.userInfo == null}">
					<li class="nav-item"><a href="/hexa/login" class="text-primary shadow-sm p-1 fw-bold">Sign In</a></li>
					<li class="nav-item"><a href="/hexa/register" class="text-success  shadow-sm p-1  fw-bold">Sign Up</a></li>
				</c:if>


				<c:if test="${sessionScope.userInfo != null}">
					<li class="nav-item text-capitalize fw-bold"><span data-bs-toggle="modal" data-bs-target="#acc-edit">${sessionScope.userInfo.user_name}</span></li>
					<li class="nav-item"><a href="/hexa/logout" class="text-danger p-1 shadow-sm  fw-bold">Logout</a></li>
				</c:if>
	
					<!-- edited from here -->
					<li class="nav-item"><i class="fa-solid fa-magnifying-glass btn" id="btn-search" onclick="window.location.href='/hexa/search'"></i></li>
				</ul>
			<i class="fa-solid fa-bars" id="btn-menu"></i>
		<div id="menu-layer" class=""></div>
	</section>

	<!-- for account edit -->
	<div class="modal fade" id="acc-edit">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<header class="modal-header">
					<div class="w-100 d-flex justify-content-between">
						<h6 class="h4 text-danger">Edit Info</h6>
						<span class="btn-close" data-bs-dismiss="modal" data-bs-target="#acc-edit"></span>
					</div>
				</header>
				<form action="" method="POST" class="modal-body">
					<div class="form-group my-1">
						<label for="" class="form-label fw-bold text-danger">Username</label>
						<input type="text" class="form-control" value="${sessionScope.userInfo.user_name}" placeholder="Username"/>
						<!-- for id -->
						<input type="hidden" name="" value="${sessionScope.userInfo.user_id}"/>
					</div>
					<div class="form-group my-1">
						<label for="" class="form-label fw-bold text-danger">Email Address</label>
						<input type="email" class="form-control" value="${sessionScope.userInfo.user_email}" placeholder="Username"/>
					</div>
					<div class="form-group my-1">
						<label for="" class="form-label fw-bold text-danger">Password</label>
						<input type="password" class="form-control" value="${sessionScope.userInfo.user_password}" placeholder="Username"/>
					</div>
					<div class="form-group my-1 d-flex justify-content-end align-items-center gap-1">
						<a href="" class="btn btn-warning text-danger" data-bs-dismiss="modal" data-bs-target="#acc-edit">Cancel</a>
						<button type="submit" class="btn btn-success">Update</button>
					</div>
				</form>
			</div>
		</div>
</div>

	