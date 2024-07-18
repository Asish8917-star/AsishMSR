<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="asish" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Voter List</title>
</head>

<body
	style="background: url('https://image-optimizer.cyberriskalliance.com/unsafe/3840x0/https://files.scmagazine.com/wp-content/uploads/2024/02/TaylorBanksColjpg.jpg'); background-repeat: no-repeat; background-size: cover; background-attachment: fixed;">
	<div align="center">
		<h1 style="color: cyan">Voters List for Election - 2024</h1>
	</div>
	<div align="left">
		<br>
		<table border="1">
			<tr style="color: cyan">
				<th>NAME</th>
				<th>AGE</th>
				<th>PHONE</th>
				<th>VOTERID</th>
				<th>PHOTO</th>
				<th>ACTION</th>
			</tr>
			<asish:forEach var="a" items="${data}">

				<tr style="color: white">
					<td><a href="/details/${a.id}">${a.fullName}</a></td>
					<td>${a.age}</td>
					<td>${a.phone}</td>
					<td>${a.voterId}</td>
					<td><img src="data:image/jpeg;base64,${a.data}" height="100"
						width="100"></td>
					<td><a href="/update?id=${a.id}&file=${a.data}"><button class="button-85">Edit</button></a>&nbsp;&nbsp;<a href="/delete?id=${a.id}"><button class="button-85">Delete</button></a>
				</tr>
			</asish:forEach>
		</table>
		<br>
		<div align="center"> <a href="/new" style="color: white"><button style="background-color: #04AA6D;">create new</button></a></div>
</body>
<style>

.button-85 {
  padding: 0.6em 2em;
  border: none;
  outline: none;
  color: rgb(255, 255, 255);
  background: #111;
  cursor: pointer;
  position: relative;
  z-index: 0;
  border-radius: 10px;
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
}

.button-85:before {
  content: "";
  background: linear-gradient(
    45deg,
    #ff0000,
    #ff7300,
    #fffb00,
    #48ff00,
    #00ffd5,
    #002bff,
    #7a00ff,
    #ff00c8,
    #ff0000
  );
  position: absolute;
  top: -2px;
  left: -2px;
  background-size: 400%;
  z-index: -1;
  filter: blur(5px);
  -webkit-filter: blur(5px);
  width: calc(100% + 4px);
  height: calc(100% + 4px);
  animation: glowing-button-85 20s linear infinite;
  transition: opacity 0.3s ease-in-out;
  border-radius: 10px;
}

@keyframes glowing-button-85 {
  0% {
    background-position: 0 0;
  }
  50% {
    background-position: 400% 0;
  }
  100% {
    background-position: 0 0;
  }
}

.button-85:after {
  z-index: -1;
  content: "";
  position: absolute;
  width: 100%;
  height: 100%;
  background: #222;
  left: 0;
  top: 0;
  border-radius: 10px;
}
</style>
</div>
</html>