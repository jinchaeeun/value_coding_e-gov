<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 상단 헤더 불러오기 -->
<jsp:include page="../sub_header.jsp"></jsp:include>
<style>
/* 공지사항 뷰 스타일 */
.notice-view-wrap {max-width: 1200px; margin: 0 auto; margin-top: 60px;}

.view h2 {text-align: center; font-size: 32px; padding: 20px;}

.view .view-hd {text-align: center; overflow: hidden; padding-bottom: 10px;}
.view .view-hd span {float: right; margin: 0 5px;}
.view .view-hd p {float: right; margin-right: 20px;}
.view .view-hd p.title {float: left; font-size: 20px; margin-left: 10px;}

.view .view-content {background: #fff; padding: 20px; border: 1px solid #ccc; min-height: 500px;}

.view .view-file {background: #fff; margin: 10px 0;}
.view .view-file a {display: block; padding: 5px; border-bottom: 1px dashed #ccc;}
.view .view-file a:last-child {border-bottom: 0;}

.write-btn-box {padding: 10px; overflow: hidden;}
.write-btn-box a {float: right; padding: 10px; background: #8bcaff; color: #fff; border-radius: 5px; font-weight: bold; margin: 5px;}
.write-btn-box a:hover {background: #3078b5;}

</style>

<div class="notice-view-wrap">
	<div class="notice-box">
		<div class="view">
			<h2>공지사항</h2>
			
			<div class="view-hd">
				<p class="title"><b>공지사항 입니다.</b></p>
				<span>답변수 : 1</span>
				<span>조회수 : 5</span>
				<span>등록일 : 2021-04-27</span>
				<span>작성자 : <b>관리자</b></span>
			</div>

			<div class="view-content">
				<p>공지사항 작성 후 출력 되는 페이지 입니다.</p>
				<p>공지사항 작성은 textarea로 작성이 되었습니다.</p>
			</div>

			<div class="view-file">
				<a href="#none"><i class="fa fa-download" aria-hidden="true"></i> 첨부파일 다운로드.jpg</a>
				<a href="#none"><i class="fa fa-download" aria-hidden="true"></i> 첨부파일 다운로드.jpg</a>
			</div>
		</div> <!-- view -->
	</div> <!-- notice-box -->
	
	<style>
		.answer-wrap {border: 1px solid #ccc; padding: 10px;}
		.answer-wrap .answer-box {}
		.answer-wrap .answer-box h3 {padding: 5px; border-bottom: 1px solid #000; margin-bottom: 10px;}
		.answer-wrap .answer-box .answer {margin-bottom: 10px; border-bottom: 1px solid #ddd;}
		
		.answer-wrap .answer-box .answer .answer-writer {display: inline-block; width: 15%; vertical-align: top;}
		.answer-wrap .answer-box .answer .answer-writer span {font-size: 14px;}
		
		.answer-wrap .answer-box .answer .answer-content-box {display: inline-block; width: 80%; vertical-align: middle;}
		.answer-wrap .answer-box .answer .answer-content-box .answer-content {font-size: 13px; margin-bottom: 10px;}
		.answer-wrap .answer-box .answer .answer-content-box .answer-info {color: #ccc; font-size: 11px; margin-bottom: 10px;}
		.answer-wrap .answer-box .answer .answer-content-box .answer-info a {color: #ccc;}
	</style>
	<div class="answer-wrap">
		<div class="answer-box">
			<h3>댓글</h3>
			
			<div class="answer">
				<div class="answer-writer">
					<span>관리자</span>
				</div>
				
				<div class="answer-content-box">
					<div class="answer-content">
						<p>공지사항 댓글 입니다.</p>
					</div>
					
					<div class="answer-info">
						<span>2021.05.26 14:55</span>&nbsp;&nbsp;&nbsp;
						<a>답글쓰기</a>
					</div> <!-- answer-info -->
				</div> <!-- answer-content-box -->
			</div> <!-- answer -->
			
			<div class="answer">
				<div class="answer-writer">
					<span>관리자</span>
				</div>
				
				<div class="answer-content-box">
					<div class="answer-content">
						<p>공지사항 댓글 입니다.</p>
					</div>
					
					<div class="answer-info">
						<span>2021.05.26 14:55</span>&nbsp;&nbsp;&nbsp;
						<a>답글쓰기</a>
					</div> <!-- answer-info -->
				</div> <!-- answer-content-box -->
			</div> <!-- answer -->
			
			<div class="answer">
				<div class="answer-writer">
					<span>관리자</span>
				</div>
				
				<div class="answer-content-box">
					<div class="answer-content">
						<p>공지사항 댓글 입니다. 길게 한번 써봤습니다. 엔터가 안먹히는 이유가 뭘까요?<br>모르겠습니다.</p>
					</div>
					
					<div class="answer-info">
						<span>2021.05.26 14:55</span>&nbsp;&nbsp;&nbsp;
						<a>답글쓰기</a>
					</div> <!-- answer-info -->
				</div> <!-- answer-content-box -->
			</div> <!-- answer -->
			
			<style>
				.answer-write-wrap {padding: 10px;}
				.answer-write-wrap .answer-write-box {overflow: hidden;}
				.answer-write-wrap .answer-write-box p {font-size: 13px; font-weight: bold; margin-bottom: 10px;}
				.answer-write-wrap .answer-write-box textarea {border: 1.5px solid #000; border-radius: 2px; width: 100%; height: 100px; padding: 5px;}
				.answer-write-wrap .answer-write-box input {float: right; padding: 5px 10px; border: 0; background-color: #fff; color: #888;}
				
			</style>
			<div class="answer-write-wrap">
				<div class="answer-write-box">
					<p>로그인한 사람의 닉네임</p>
					<textarea rows="" cols="" placeholder="댓글을 남겨주세요."></textarea>
					<input type="button" value="등록">
				</div>
			</div>
		</div> <!-- answer-box -->
	</div> <!-- answer-wrap -->
	
	<div class="write-btn-box">
		<a href="./notice_list.jsp">목록으로</a>
		<a href="./notice_write.jsp">수정</a>
		<a href="#none">삭제</a>
	</div>
</div> <!-- notice-view-wrap -->
<!-- 하단 푸터 불러오기 -->
<jsp:include page="../sub_footer.jsp"></jsp:include>