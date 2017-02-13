<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ユーザー新規登録画面</title>
</head>
<body>

	<h2>ユーザー新規登録画面</h2>

	<font color="red">
	<c:if test="${ not empty errorMessages }">
		<c:forEach items="${ errorMessages }" var="message"><br />
			<c:out value="${ message }" />
		</c:forEach>
		<c:remove var="errorMessages" scope="session"/>
	</c:if>
	</font>


	<form action="./signUp" method="post">

		<label for="loginId">ログインID</label>
		<input name="loginId" id="loginId" maxlength="20" /><br />

		<label for="password">パスワード</label>
		<input name="password" id="password" type="password" maxlength="255" /><br />

		<label for="name">名前</label>
		<input name="name" id="name" maxlength="10"/><br />


		<label for="branchId">支店名</label>
		<select name="branchId">
			<c:forEach items="${ branchList }" var="branch"><br />
				<option value="${ branch.id }" ><c:out value="${ branch.name }" /></option>
			</c:forEach>
		</select>

		<label for="departmentId">役職</label>
		<select name="departmentId">
			<c:forEach items="${ departmentList }" var="department"><br />
				<option value="${ department.id }" ><c:out value="${ department.name }" /></option>
			</c:forEach>
		</select>
		<br />
		<br />

		<input type="submit" value="登録" /> <br />

		<a href="controlUser">ユーザー管理画面へ</a>

	</form>
<br /><br /><br /><br />
<div class="copyright">Copyright(c)Tanimoto Hiroshi</div>

</body>
</html>