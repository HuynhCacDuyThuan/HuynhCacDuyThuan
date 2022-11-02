<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="views/aces/css/base.css">
<link rel="stylesheet" href="views/aces/css/video-mangement.css">
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
				<li class="list__item active" id="video__edit-tab">Video Edting
				</li>
				<li class="list__item" id="video__list-tab">Video List</li>
			</ul>
		</div>
		<div class="tab__content" id="tab__content">
			<div class="tab__pane show" id="video__edit">
				<form action="" method="post">
					<div class="card">
						<div class="card__body">
							<div class="body__image">
								<img src="views/aces/img/hinh-video.png" alt=""
									class="body__image-img">
							</div>
							<div class="body__data">
								<div class="form-group">
									<label for="form__group-youID" class="form__group-lable">Youtobe
										ID</label> <input type="text" name="youID" id="form__group-youID"
										class="form__group-input" placeholder="Youtobe ID"
										aria-describedby="youtobeID"> <small
										class="form__group-small" id="youtobeID">Youtobe id is
										required</small>
								</div>
								<div class="form-group">
									<label for="form__group-videoTitle" class="form__group-lable">Video
										Title</label> <input type="text" name="videoTitle"
										id="form__group-videoTitle" class="form__group-input"
										placeholder="Video Title" aria-describedby="videoTitleSmall">
									<small class="form__group-small" id="videoTitleSmall">Video
										title id is required</small>
								</div>
								<div class="form-group">
									<label for="form__group-view" class="form__group-lable">View
										Count</label> <input type="text" name="view" id="form__group-view"
										class="form__group-input" placeholder="View Count"
										aria-describedby="viewCountHelp"> <small
										class="form__group-small" id="viewCountHelp">View
										count id is required</small>
								</div>
								<div class="form__check form-check-inline">
									<label for=""> <input type="radio" name="status"
										class="form__check-input" id="status"> Active
									</label> <label for=""> <input type="radio" name="status"
										class="form__check-input" id="status"> Inactive
									</label>
								</div>
							</div>
						</div>
						<div class="card__footer">
							<label for="description" class="form__group-lable">Description</label>
							<textarea class="form__group-input form__group-input__lager"
								name="description" id="description" cols="30" rows="10"></textarea>
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
						<td>Youtobe ID</td>
						<td>Video Title</td>
						<td>Video Count</td>
						<td>Status</td>
						<td>&nbsp;</td>
					</tr>
					<tr class="videoList__table-item">
						<td>YTT</td>
						<td>Java Programing</td>
						<td>105</td>
						<td>Active</td>
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