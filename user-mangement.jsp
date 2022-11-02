<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="views/aces/css/base.css">
<link rel="stylesheet" href="views/aces/css/video-mangement.css">
<link rel="stylesheet" href="views/aces/css/user-mangenment.css">
<link rel="stylesheet"
	href="views/aces/font/themify-icons/themify-icons.css">
</head>
<body>
	<div class="main">
		<div class="header">

			<div class="nav">
				<h1 class="header__heading">Administration</h1>
				<ul class="nav__list">
					<li class="nav__item"><a href="" class="nav__link"> Home </a>
					</li>
					<li class="nav__item"><a href="" class="nav__link"> <i
							class="ti-video-clapper"></i> Videos
					</a></li>
					<li class="nav__item"><a href="" class="nav__link"> <i
							class="ti-user"></i> Users
					</a></li>
					<li class="nav__item"><a href="" class="nav__link"> <i
							class="ti-receipt"></i> Reports
					</a></li>
				</ul>
			</div>
		</div>
		<div class="container">
			<ul class="list">
				<li class="list__item active" id="video__edit-tab">User Edting
				</li>
				<li class="list__item" id="video__list-tab">User List</li>
			</ul>
		</div>
		<div class="tab__content" id="tab__content">
			<div class="tab__pane show" id="video__edit">
				<form action="" method="post">
					<div class="card">
						<div class="card__body">
							<div class="body__data">
								<div class="form-group">
									<label for="form__group-username" class="form__group-lable">Username</label>
									<input type="text" name="username" id="form__group-username"
										class="form__group-input" placeholder="Username"
										aria-describedby="usernameHelp"> <small
										class="form__group-small" id="usernameHelp">Username
										is required</small>
								</div>
								<div class="form-group">
									<label for="form__group-fullname" class="form__group-lable">Fullname</label>
									<input type="text" name="fullname" id="form__group-fullname"
										class="form__group-input" placeholder="fullname"
										aria-describedby="fullnameHelp"> <small
										class="form__group-small" id="fullnameHelp">Fullname
										id is required</small>
								</div>
								<div class="form-group">
									<label for="form__group-password" class="form__group-lable">Password</label>
									<input type="password" name="password"
										id="form__group-Password" class="form__group-input"
										placeholder="Password" aria-describedby="passwordHelp">
									<small class="form__group-small" id="passwordHelp">Password
										id is required</small>
								</div>
								<div class="form-group">
									<label for="form__group-email" class="form__group-lable">Email</label>
									<input type="email" name="email" id="form__group-email"
										class="form__group-input" placeholder="Email"
										aria-describedby="emailhelp"> <small
										class="form__group-small" id="emailhelp">Email id is
										required</small>
								</div>
							</div>
						</div>

					</div>
					<div class="card__button">
						<button class="btn btn-create">Create</button>
						<button class="btn btn-update">Update</button>
						<button class="btn btn-delete">Delete</button>
						<button class="btn btn-reset">Reset</button>
					</div>

				</form>
			</div>
			<div class="tab__pane" id="video__list">
				<table class="videoList__table table">
					<tr class="videoList__table-item">
						<td>Username</td>
						<td>Fullname</td>
						<td>Email</td>
						<td>Role</td>
						<td>&nbsp;</td>
					</tr>
					<tr class="videoList__table-item">
						<td>TienDT</td>
						<td>Tran Dinh Minh Tien</td>
						<td>4tiensau@gmail.com</td>
						<td>Admin</td>
						<td><a href=""> <i class="ti-pencil"></i> Edit
						</a> <a href=""> <i class="ti-eraser"></i> Delete
						</a></td>
					</tr>
				</table>
			</div>
		</div>
	</div>

	<script>
		const videoEdit = document.querySelector('#video__edit-tab');
		const videoList = document.querySelector('#video__list-tab');
		const tabEdit = document.querySelector('#video__edit');
		const tabList = document.querySelector('#video__list');

		videoEdit.onclick = function() {
			if (tabList.classList.contains('show')) {
				tabList.classList.remove('show');
			}
			if (videoList.classList.contains('active')) {
				videoList.classList.remove('active');
			}
			tabEdit.classList.add('show');
			videoEdit.classList.add('active');

		}
		videoList.onclick = function() {
			if (tabEdit.classList.contains('show')) {
				tabEdit.classList.remove('show');
			}
			if (videoEdit.classList.contains('active')) {
				videoEdit.classList.remove('active');
			}
			tabList.classList.add('show');
			videoList.classList.add('active');
		}
	</script>
</body>
</html>