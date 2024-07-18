<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>details</title>
<style type="text/css">
span {
	display: inline-block;
	width: 200px;
	text-align: left;
}

.button-88 {
	display: flex;
	align-items: center;
	font-family: inherit;
	font-weight: 500;
	font-size: 16px;
	padding: 0.7em 1.4em 0.7em 1.1em;
	color: white;
	background: #ad5389;
	background: linear-gradient(0deg, rgba(20, 167, 62, 1) 0%,
		rgba(102, 247, 113, 1) 100%);
	border: none;
	box-shadow: 0 0.7em 1.5em -0.5em #14a73e98;
	letter-spacing: 0.05em;
	border-radius: 20em;
	cursor: pointer;
	user-select: none;
	-webkit-user-select: none;
	touch-action: manipulation;
}

.button-88:hover {
	box-shadow: 0 0.5em 1.5em -0.5em #14a73e98;
}

.button-88:active {
	box-shadow: 0 0.3em 1em -0.5em #14a73e98;
}
</style>
</head>
<body>
	<div align="center">
		<h2>Voter Details</h2>
		<span>NAME:&nbsp;</span><span>${details.fullName}</span><br /> <span>PHOTO:&nbsp;</span><span><img
			src="data:image/jpeg;base64,${details.data}" height="200" width="200"></span>

		<br><br>
		<button class="button-88" style="text-align: center;"><a href="/">Back Home</a></button>
	</div>
</body>
</html>