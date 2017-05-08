<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="${pageContext.servletContext.contextPath}/css/newArticle.css" rel="stylesheet" type="text/css">
        <title>Добавить новую статью</title>
    </head>
    <body>
        <h2>Привет, ${username}!</h2>
        Редактировать статью<br>
        <a href="uploadPage" name="upload_file">Загрузить файл</a>

        <p>${info}</p>
        <br>
        <form action="updateArticle" method="POST">
            <input type="hidden" name="article_id" value="${article.id}">
            <input type="text" name="model" placeholder="Model" value="${article.model}">
            <br><textarea name="mark" placeholder="Mark">${article.mark}</textarea>
            <input type="submit" value="Редактировать статью">
        </form>
        <br>
    </body>
</html>
