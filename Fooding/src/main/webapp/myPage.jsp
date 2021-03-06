<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<!-- header -->
<jsp:include page="WEB-INF/views/common/header.jsp"/>

<!-- css or js파일 연결 시키는 곳 -->
<link rel="stylesheet" href="/fooding/resources/css/myPage.css">

<div class="container" id="container">
		<div id="banner_wrap">
			<div id="banner" class="user">
				<div class="inner_wrap">
					<div class="inner">
						<div id="change_user_image" class="user_image i_wrap">
							<div class="image border_radius circle profile_image" id="btn-upload">
							<!-- <button type="button" id="btn-upload"></button> -->
							</div>
							<input type="file" id="file" name="file" onchange="changeValue(this)"/>
							<div class="border_radius circle"></div>
						</div>
						<script type="text/javascript">
						$(function() {
							$('#btn-upload').click(function(e) {
								e.preventDefault();
								$('#file').click();
							});
						});

						function changeValue(obj) {
							alert(obj.value);
						}
					</script>
					<div class="name">
							<span>Fooding</span>
						</div>
						<div class="intro">맛있는 발견의 즐거움 - Fooding</div>
						<div class="info">
							<a>예약 0</a> &nbsp;
							<a>리뷰 0</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	<div id="content_wrap">
		<div id="content" class="mypage">
			<ul class="tab">
				<li class="item selected"><a href="#">예약</a></li>
				<!-- <li class="item "><a href="#">티켓</a></li> -->
				<li class="item "><a href="#">리뷰</a></li>
				<li class="item "><a href="#">1:1 문의</a></li>
			</ul>
			<div id="reservation" class="body empty">
				<div class="filter">
					<a href="?reservation&amp;type=recent" class="">방문 예정 예약</a> <a
						href="?reservation&amp;type=past" class="">지나간 예약</a>
				</div>
				<!-- 예약이 없을 때 화면 -->
				<div class="blank">
					<div class="message">
						예약이 없습니다.<br>지금 레스토랑에 예약해보시겠어요?
					</div>
					<button class="disable" onclick="" tabindex="-1"></button>
				</div>

				<!-- 예약화면 -->
				<div class="list">
					<div class="reservation">
						<div class="i_wrap image">
							<div class="image border_radius hard"
								style="background-image: url(resources/images/myPage/brickoven.jpeg);"></div>
						</div>
						<div class="info">
							<div class="name">
								<a href="/restaurant/detail/26150">브릭오븐</a> <span
									class="label blue border_radius soft">예약 대기</span> <span
									class="label green border_radius soft">예약 확정</span> <span
									class="label blue border_radius soft">변경 대기</span>
							</div>
							<div class="date">예약정보: 2018.5.2 (수) 오후 12:00</div>
							<div class="party_size">인원: 6명</div>
						</div>

						<button class="red border_radius soft"
							data-type="poing.reservation.edit" data-id="869500" tabindex="-1" onclick="document.getElementById('id01').style.display='block'">변경
							/ 취소</button>
						<!-- Modal -->
						<div id="id01" class="w3-modal">
							<div class="w3-modal-content">
								<div class="w3-container">
									<span
										onclick="document.getElementById('id01').style.display='none'"
										class="w3-button w3-display-topright">&times;</span>
									<p>Some text. Some text. Some text.</p>
									<p>Some text. Some text. Some text.</p>
									<p>Some text. Some text. Some text.</p>
									<p>Some text. Some text. Some text.</p>
									<p>Some text. Some text. Some text.</p>
									<p>Some text. Some text. Some text.</p>
									<p>Some text. Some text. Some text.</p>
									<p>Some text. Some text. Some text.</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<jsp:include page="WEB-INF/views/myPage/myPageSidebar.jsp" />
	</div>
</div>
<!-- container -->

<!-- footer -->
<jsp:include page="WEB-INF/views/common/footer.jsp"/>