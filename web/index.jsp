<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<div id="main">
    <p>Добро пожаловать.</p>
    <p>Новости:</p>

    <c:forEach var="article" items="${articles}">
        <article>
            <h2>${article.title}</h2>
            <div class="text-article"> ${fn:substring(article.article,0,300)} ... </div>
            <div class="fotter-article">
                <span class="read"><a href="user?article_id=${article.id}"> Читать...</a></span>
                <span class="date-article">Дата статьи: ${article.date}</span>
            </div>
        </article>
    </c:forEach>

</div>
