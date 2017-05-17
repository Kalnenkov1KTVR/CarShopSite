<%-- 
    Document   : comments
    Created on : May 17, 2017, 1:27:02 PM
    Author     : pupil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="offset1" id="main">
    <c:forEach var="article" items="${articles}">

        <table class="row">
            <h3>${article.mark} ${article.model}</h3>
            <a href="user?article_id=${article.id}"> Далее...</a>
            <c:forEach var="comment" items="${article.comments}">
                <div class="row">
                    Автор: <label>${comment.userLogin}</label>
                    Дата: ${comment.date}
                    <br>
                    <label>${comment.title}</label>
                    <p>${comment.text}</p>
                    <c:if test="${userGroup eq 'ADMINS'}">
                        <a href="deleteComment?article_id=${article.id}&comment_id=${comment.id}" name="delete_comment">Удалить</a>
                    </c:if>
                </div>                


            </c:forEach>
        </table>

    </c:forEach>
</div>