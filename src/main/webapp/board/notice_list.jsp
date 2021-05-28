<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 상단 헤더 불러오기 -->
<jsp:include page="../sub_header.jsp"></jsp:include>
<style>
/* 서브메뉴 스타일 */
.snb-wrap {text-align: center; margin-top: 60px;}
.snb-wrap div {max-width: 1200px; margin: 0 auto; background: #fff;}
.snb-wrap ul {display: table; width: 100%;}
.snb-wrap li {display: table-cell; width: 33.33%;}
.snb-wrap li:hover span:before {width: 100%; left: 0;}
.snb-wrap li:hover span:after {opacity: 1;}

.snb-wrap li.on span:before {width: 100%; left: 0;}
.snb-wrap li.on span:after {opacity: 1;}
.snb-wrap li.on a {font-weight: bold;}

.snb-wrap li > a {display: block; padding: 20px; font-size: 16px;}
.snb-wrap li > a span {display: block; position: relative;}
.snb-wrap li > a span:before {content: ""; position: absolute; width: 0; height: 3px; background: #000; left: 0; bottom: -10px; transition: all 0.3s;}
.snb-wrap li > a span:after {content: ""; opacity: 0; width: 0; height: 0; border-top: 0 solid transparent; border-bottom: 5px solid #000; border-left: 5px solid transparent; border-right: 5px solid transparent; left: 50%; transform: translateX(-50%); position: absolute; bottom: -8px;}

/* 공지사항 스타일 */
.notice-wrap {text-align: center; max-width: 1200px; margin: 0 auto;}
.notice-wrap .notice-box {max-width: 1200px;}

.notice-box ul {background: #fff;}
.notice-box ul.th {border-top: 2px solid #000;}
.notice-box ul li {display: table; width: 100%;}

.notice-box ul li div {display: table-cell; border-bottom: 1px solid #ccc; padding: 10px; font-size: 15px;}

.notice-box ul li div.no {width: 10%;}
.notice-box ul li div.title {width: 40%;}
.notice-box ul li div.writer {width: 15%;}
.notice-box ul li div.answer {width: 10%;}
.notice-box ul li div.hot {width: 10%;}
.notice-box ul li div.date {width: 15%;}

.notice-box ul li div.title a {width: 40%; font-weight: bold;}
.notice-box ul li div.title a:hover {font-style: italic;}

/* 검색창 */
.search-box {overflow: hidden;}
.search-box div {float: right; padding: 10px;}
.search-box div input {font-size: 15px; padding: 3px 5px;}
.search-box div button {padding: 5px 10px; background: #8bcaff; color: #fff; font-weight: bold; border: 3px solid #8bcaff; border-radius: 5px;}
.search-box div button:hover {background: #3078b5; border: 3px solid #3078b5; }

/* 페이징 버튼 */
.paging div ul {padding: 10px;}
.paging div ul li {display: inline-block; padding: 2px 2px; background: #fff; border-radius: 2px; font-weight: bold; border: 1px solid #000;}
.paging div ul li.on {background: #ffe9c8; font-size: 13px;}
.paging div ul li:hover {background: #ffe9c8;}
.paging div ul li a {padding: 10px;}

/* 글쓰기 버튼 */
.write-btn-box {padding: 10px; overflow: hidden;}
.write-btn-box a {float: right; padding: 10px; background: #8bcaff; color: #fff; border-radius: 5px; font-weight: bold; margin: 5px;}
.write-btn-box a:hover {background: #3078b5;}
</style>

<div class="snb-wrap">
	<div>
		<ul>
			<li class="on"><a href="../board/notice.jsp"><span>공지사항</span></a></li>
			<li><a href="#none"><span>자유게시판</span></a></li>
		</ul>
	</div>
</div>

<div class="notice-wrap">
	<div class="search-box">
		<div>
			<input type="text">
			<button>검색</button>
		</div>
	</div> <!-- search-box -->

	<div class="notice-box" data-aos="flip-left" data-aos-delay="100">
		<ul class="th">
			<li>
				<div class="no">번호</div>
				<div class="title">제목</div>
				<div class="writer">작성자</div>
				<div class="date">작성일</div>
				<div class="answer">답변수</div>
				<div class="hot">조회수</div>		
			</li>
		</ul>
		<ul class="td">
			<li data-aos="fade-up" data-aos-delay="200">
				<div class="no">3</div>
				<div class="title"><a href="./notice_view.jsp">공지사항 입니다.</a></div>
				<div class="writer">관리자</div>
				<div class="date">2021-04-27</div>
				<div class="answer">2</div>
				<div class="hot">10</div>
				
			</li>
			<li data-aos="fade-up" data-aos-delay="300">
				<div class="no">2</div>
				<div class="title"><a href="./notice_view.jsp">공지사항 입니다.</a></div>
				<div class="writer">관리자</div>
				<div class="date">2021-04-27</div>
				<div class="answer">0</div>
				<div class="hot">25</div>
			</li>
			<li data-aos="fade-up" data-aos-delay="400">
				<div class="no">1</div>
				<div class="title"><a href="./notice_view.jsp">공지사항 입니다.</a></div>
				<div class="writer">관리자</div>
				<div class="date">2021-04-27</div>
				<div class="answer">1</div>
				<div class="hot">5</div>
			</li>
		</ul>
	</div> <!-- notice-box -->
	
	<div class="write-btn-box">
		<a href="./notice_write.jsp">글쓰기</a>
	</div>

	<div class="paging">
		<div>
			<ul>
				<li><a href="#none">처음으로</a></li>
				<li><a href="#none">이전</a></li>
				<li class="on"><a href="#none">1</a></li>
				<li><a href="#none">2</a></li>
				<li><a href="#none">3</a></li>
				<li><a href="#none">다음</a></li>
				<li><a href="#none">마지막</a></li>
			</ul>
		</div>
	</div> <!-- paging -->
</div> <!-- notice-wrap -->

<!-- 하단 푸터 불러오기 -->
<jsp:include page="../sub_footer.jsp"></jsp:include>