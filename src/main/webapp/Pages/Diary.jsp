<%--
  Created by IntelliJ IDEA.
  User: vbaku
  Date: 22.03.2018
  Time: 14:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="Module.Database" %>
<!DOCTYPE html>
<html>
<head>
    <title>Diary</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="../Styles/DiaryCss.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<header>
    <div id="navBar" >
        <a href="Home.html">Home</a>
        <a href="Diary.jsp">Your Diary</a>
        <a href="MLibrary.html">Music library</a>
        <a href="BLibrary.html">Book library</a>
    </div>

</header>

<div id="diary">

    <div id="block">
        <div id="textBlock">
            <p>Here you can write about your goals , about victories and defeats, about thoughts. Otherwise about everythink.</p>
        </div>
        <div id="textArea">
            <form name="text" method="post" action="/diary" accept-charset="UTF-8">
                <textarea id="text" name="reqDiary"><%=new Database().getDiary(session.getAttribute("login").toString())%> </textarea>
                <input type="submit" value="save"/>
            </form>
        </div>
    </div>
    <footer>
        <p>
            Project develop
            <a href="https://github.com/ColdStep" >
                @ColdStep<img src="../Backgrounds/gitlogo.png"></a>
        </p>

    </footer>
</div>
<%--<script src="JavaScript/diary.js"></script>--%>
</body>
</html>
