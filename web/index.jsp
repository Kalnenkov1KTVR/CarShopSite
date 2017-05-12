<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<div class="offset1" id="main">

    <h2>Новости:</h2>

    <c:forEach var="article" items="${articles}">
        <div class="row">
            <div class="row"> 
                <h3>${article.mark} ${article.model}</h3>
                <div class="text-article"> ${fn:substring(article.model,0,300)}... </div>
                <div class="span5">Дата добавления: ${article.date}</div>                             
                <div class="span5"><a href="user?article_id=${article.id}"> Далее...</a></div>
            </div>
        </div>
    </c:forEach>


</div>
