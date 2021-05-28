<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 상단 헤더 불러오기 -->
<jsp:include page="../sub_header.jsp"></jsp:include>

<link rel="stylesheet" type="text/css" href="../js/ckeditor5/sample/styles.css">
<script type="text/javascript" src="../js/ckeditor5/build/ckeditor.js"></script>

<style>
/* 공지사항 글쓰기 스타일 */
.notice-write-wrap {max-width: 1200px; margin: 0 auto; margin-top: 60px;}
.notice-write-wrap .notice-write-box {padding: 20px;}
.notice-write-wrap .notice-write-box h1 {text-align: center; font-size: 32px; margin-bottom: 30px;}

.notice-write-wrap .notice-write-box .write-form {border: 1px solid #ccc; background: #fff;}
.notice-write-wrap .notice-write-box .write-form ul {padding: 10px;}
.notice-write-wrap .notice-write-box .write-form ul li {padding: 10px;}
.notice-write-wrap .notice-write-box .write-form ul li > label {display: block; font-size: 15px; margin-bottom: 10px;}
.notice-write-wrap .notice-write-box .write-form ul li > .title {width: 80%;}
.notice-write-wrap .notice-write-box .write-form ul li > select {width: 18%; font-size: 15px; padding: 5px;}
.notice-write-wrap .notice-write-box .write-form ul li > div > label {font-size: 15px;}
.notice-write-wrap .notice-write-box .write-form ul li > div > input {padding: 5px;}
.notice-write-wrap .notice-write-box .write-form ul li > input {font-size: 15px; padding: 5px; width: 100%;}
.notice-write-wrap .notice-write-box .write-form ul li textarea {font-size: 12px; width: 100%; height: 400px; padding: 5px;}

.write-btn-box {padding: 10px; overflow: hidden;}
.write-btn-box a {float: right; padding: 10px; background: #8bcaff; color: #fff; border-radius: 5px; font-weight: bold; margin: 5px;}
.write-btn-box a:hover {background: #3078b5;}

/* 체크박스 모양을 조절하는 스타일 */
.checkbox input[type=checkbox] {  
    display: none;  
}

.checkbox input[type=checkbox] + label{
    display: inline-block;  
    cursor: pointer;  
    position: relative;  
    padding-left:20px;  
    font-size: 12px;
	color:#444;
}
.checkbox input[type=checkbox]+ label:before {
    font: normal normal normal 14px/1 FontAwesome;
    font-size: inherit;
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    content: "";  
    display: inline-block;  
    width: 16px;  
    height: 16px;
	padding:1px;
    position: absolute;  
    left: 0;  
    top:0px;
    background-color: #fff;  
	border:1px solid #000;
    border-radius: 2px; 
}

.checkbox input[type=checkbox]:checked + label:before { 
    content:"\f00c";  /* 체크모양 */
    font-size: 13px; 
    font-weight:600; 
    color: #222;  
    background:#fff;
	border:1px solid #000;
    text-align: center;  
}
</style>
<div class="notice-write-wrap">
	<div class="notice-write-box">
		<h1>글쓰기</h1>
			
		<div class="write-form">
			<ul>
				<li>
					<label for="">제목</label>
					<input class="title" type="text" placeholder="제목을 입력하세요">
					
					<select name="" id="">
						<option value="">공지사항</option>
						<option value="">자유게시판</option>
						<option value="">언어</option>
						<option value="">데이터베이스</option>
						<option value="">데이터과학</option>
						<option value="">개발도구</option>
						<option value="">프로젝트 관리</option>
					</select>
				</li>
				<li>
					<label for="">내용</label>
					<textarea name="" id="editor"></textarea>
					<!-- <div id="editor"></div> -->
				</li>
				<li>
					<label for="">첨부파일 #01</label>
					<input type="file">
				</li>
				<li>
					<label for="">첨부파일 #02</label>
					<input type="file">
				</li>
				<li class="check-box">
					<label for="">공지 선택</label>
					<div class="checkbox">
						<input type="checkbox" id="check-notice"> 
						<label for="check-notice" class="check-text">선택시 공지사항</label>
					</div>
				</li>
			</ul>
		</div> <!-- write-form -->
	</div> <!-- notice-write-box -->
	
	<div class="write-btn-box">
		<a href="./notice_list.jsp">목록으로</a>
		<a href="#none">저장</a>
	</div>
</div> <!-- notice-write-wrap -->

<script type="text/javascript">
ClassicEditor
.create(document.querySelector('#editor'), {
	heading: {
        options: [
            { model: 'paragraph', title: 'Paragraph', class: 'ck-heading_paragraph' },
            { model: 'heading1', view: 'h1', title: 'Heading 1', class: 'ck-heading_heading1' },
            { model: 'heading2', view: 'h2', title: 'Heading 2', class: 'ck-heading_heading2' },
            { model: 'heading3', view: 'h3', title: 'Heading 3', class: 'ck-heading_heading3' }
        ]
    },
	toolbar: {
		items: [
			'heading',
			'|',
			'fontFamily',
			'fontSize',
			'fontColor',
			'bold',
			'underline',
			'italic',
			'blockQuote',
			'specialCharacters',
			'|',
			'bulletedList',
			'numberedList',
			'indent',
			'outdent',
			'|',
			'codeBlock',
			'insertTable',
			'mediaEmbed',
			'link',
			'imageUpload',
			'undo',
			'redo'
		]
	},
	fontFamily: {
		options: [
			'default',
			'Arial',
			'궁서체',
			'바탕',
			'돋움'
		],
		supportAllValues: true
	},
	language: 'ko',
	image: {
		toolbar: [
			'imageTextAlternative',
			'imageStyle:full',
			'imageStyle:side'
		]
	},
	table: {
		contentToolbar: [
			'tableColumn',
			'tableRow',
			'mergeTableCells',
			'tableCellProperties',
			'tableProperties'
		]
	},
	licenseKey: '',
})
.then(editor => {
	window.editor = editor;
})
.catch(error => {
	console.error( 'Oops, something went wrong!' );
	console.error( 'Please, report the following error on https://github.com/ckeditor/ckeditor5/issues with the build id and the error stack trace:' );
	
	console.error( error );
});
</script>
<!-- 하단 푸터 불러오기 -->
<jsp:include page="../sub_footer.jsp"></jsp:include>