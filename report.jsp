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
<link rel="stylesheet" href="views/aces/css/report.css">
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
				<li class="list__item active" id="video__edit-tab">Favorites</li>
				<li class="list__item" id="video__list-tab">Favorites Users</li>
				<li class="list__item" id="video__share-tab">Share Friends</li>
			</ul>
		</div>
		<div class="tab__content" id="tab__content">
			<div class="tab__pane show" id="video__edit">
				<table class="videoList__table-item  videoList__table">
					<tr>
						<td>Video Title</td>
						<td>Favourites Count</td>
						<td>Lasted Date</td>
						<td>Oldest Date</td>
					</tr>
					<tr>
						<td>Java Programing</td>
						<td>102</td>
						<td>1/12/2020</td>
						<td>1/12/2020</td>
					</tr>
				</table>
			</div>
			<div class="tab__pane" id="video__list">
				<form action="" method="post">
					<div class="form__inline">
						<div class="form__group">
							<label for="" id="" class="form__group-lable">Video Title
								<select name="" id="" class="form__group-select">
									<option value="">Java Programing</option>
							</select>
							</label>
							<button class="btn btn-delete">Report</button>
						</div>
					</div>
					<div class="videoList__table">
						<table class="videoList__table-item">
							<tr>
								<td>Username</td>
								<td>Fullname</td>
								<td>Email</td>
								<td>Favorite Date</td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
							</tr>
						</table>
					</div>
				</form>
			</div>
			<div class="tab__pane show" id="video__sahre">
				<form action="" method="post">
					<div class="form__inline">
						<div class="form__group">
							<label for="" id="" class="form__group-lable">Video Title
								<select name="" id="" class="form__group-select">
									<option value="">Java Programing</option>
							</select>
							</label>
							<button class="btn btn-delete">Report</button>
						</div>
					</div>
					<div class="videoList__table">
						<table class="videoList__table-item">
							<tr>
								<td>Sender Name</td>
								<td>Sender Email</td>
								<td>Receiver Email</td>
								<td>Send Date</td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
							</tr>
						</table>
					</div>
				</form>
			</div>
		</div>
	</div>

	<script>
		const videoEdit = document.querySelector('#video__edit-tab');
		const videoList = document.querySelector('#video__list-tab');
		const shareList = document.querySelector('#video__share-tab');

		const tabEdit = document.querySelector('#video__edit');
		const tabList = document.querySelector('#video__list');
		const tabShare = document.querySelector('#video__sahre');

		videoEdit.onclick = function() {
			if (tabList.classList.contains('show')) {
				tabList.classList.remove('show');
			}
			if (videoList.classList.contains('active')) {
				videoList.classList.remove('active');
			}
			if (tabShare.classList.contains('show')) {
				tabShare.classList.remove('show');
			}
			if (shareList.classList.contains('active')) {
				shareList.classList.remove('active');
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
			if (tabShare.classList.contains('show')) {
				tabShare.classList.remove('show');
			}
			if (shareList.classList.contains('active')) {
				shareList.classList.remove('active');
			}
			tabList.classList.add('show');
			videoList.classList.add('active');
		}
		shareList.onclick = function() {
			if (tabEdit.classList.contains('show')) {
				tabEdit.classList.remove('show');
			}
			if (videoEdit.classList.contains('active')) {
				videoEdit.classList.remove('active');
			}
			if (tabList.classList.contains('show')) {
				tabList.classList.remove('show');
			}
			if (videoList.classList.contains('active')) {
				videoList.classList.remove('active');
			}
			tabShare.classList.add('show');
			shareList.classList.add('active');
		}
	</script>
</body>
</body>
</html>