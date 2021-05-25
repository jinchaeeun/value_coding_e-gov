<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!-- 상단 헤더 불러오기 -->
 <jsp:include page="../sub_header.jsp"></jsp:include>

<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>

<div class="login-box">
	<h1>로그인</h1>
	<div class="login">
		<span>아이디(이메일)</span>
		<input type="text" placeholder="아이디">
		<span>비밀번호</span>
		<input type="password"  placeholder="비밀번호">
		<button>로그인</button>
		<label><input type="checkbox" id="chk-notice" value="log-in">&nbsp로그인 상태 유지</label>
	</div>
	<div class="findIdPw">
		<a href="#none">아이디 찾기</a>
		<a href="#none">비밀번호 찾기</a>
		<a href="../member/join.jsp">회원가입</a>		
	</div>
<a id="kakao-login-btn"></a>

	<div class="sns-login">
		<ul>
			<li onclick="kakaoLogin();">
			  <a href="javascript:void(0)">
				<img src="//k.kakaocdn.net/14/dn/btqCn0WEmI3/nijroPfbpCa4at5EIsjyf0/o.jpg" width="222"/>
			  </a>
			</li>
		</ul>

		<!-- 카카오 스크립트 -->
		<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
		<script>
		Kakao.init('365e10715c6beba6ae9f5e655701ff59'); //발급받은 키 중 javascript키를 사용해준다.
		console.log(Kakao.isInitialized()); // sdk초기화여부판단
		
		//카카오로그인
		function kakaoLogin() {
			Kakao.Auth.login({
			  success: function (response) { //자료를 성공적으로 보냈을때 출력되는 부분
				Kakao.API.request({
				  url: '/v2/user/me',
				  success: function (response) {
					  console.log(response);	//콘솔에 가져온 정보 출력 이메일, 닉네임
					  location.href="../index.jsp";	//로그인 후 메인 페이지로 이동
				  },
				  fail: function (error) {
					console.log(error);
					alert("로그인 실패하였습니다.");
				  },
				})
			  },
			  fail: function (error) {
				console.log(error);
				alert("로그인 실패하였습니다.");
			  },
			})
		  }
		</script>
	</div>
</div>


<style>



.login-box .findIdPw a{
padding: 5px 10px 5px 10px;
border-right: 1px solid #ccc;
}
.login-box .findIdPw a:last-child{border: 0;}

.sns-login{
margin-top:20px;
}
</style>

<!-- 하단 헤더 불러오기 -->
 <jsp:include page="../sub_footer.jsp"></jsp:include>
