<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<!-- bootStrap -->
 <script type="text/javascript" src="//code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- summernote jQuery -->
<title>Insert title here</title>
<!-- include summernote css/js-->
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
	<link href="/resources/css/common.css" rel="stylesheet" type="text/css">
</head>
<body>
<c:import url="../template/header.jsp"></c:import>
	<h1>게시판 글 작성하기</h1>
	
	<form action="add" method="post" enctype="multipart/form-data">
		<div>
			작성자 <input type="text" value="${check.userName}" name="writer">
		</div>

		<div>
			글제목 <input type="text" name="title">
		</div>

		<div>
			글내용 <input type="text" name="contents">
		</div>
		
		<div id="addFiles">
			<button type="button" id="fileAdd" class="btn btn-warning">파일추가</button>
		</div>

		<div class="mb-3">
		<button type="submit" class="btn btn-primary">작성완료</button>
		</div>
	</form>
<c:import url="../template/footer.jsp"></c:import>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
	<script src="/resources/js/add.js"></script>
	<script type="text/javascript">
		$("#contents").summernote();
	</script>
</body>
</html>