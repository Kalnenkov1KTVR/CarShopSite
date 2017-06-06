<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<div class="offset1" id="main">
    
    <h4 class="row offset1"> ${reginfo} </h4>
    
    <h2>Новости:</h2>

    <c:forEach var="article" items="${articles}">

        <table class="row">
            <h3>${article.mark} ${article.model}</h3>
            <tr>
                <td class="row">
                    <div class="thumb span4"><img src="fileServlet/${article.image}" width="275" height="200"></div>

                </td>
                <td class="row">

                    <h4 class="price">${article.price} €</h4>
                    <div>
                        Дата добавления: ${article.date}<br>
                        <a href="user?article_id=${article.id}"> Далее...</a>
                    </div>  
                    <div class="row"></div>
                    <div>
                        <div class="bold line span3">Год</div>
                        <div class="line span4">${article.firstReg}</div>
                    </div>
                    <div>
                        <div class="bold line span3">Пробег</div>
                        <div class="line span4">${article.run}</div>
                    </div>
                    <div>
                        <div class="bold line span3">Кузов</div>
                        <div class="line span4">${article.carbody}</div>
                    </div>
                    <div>
                        <div class="bold line span3">Двигатель</div>
                        <div class="line span4">${article.engineType}</div>
                    </div>
                    <div>
                        <div class="bold line span3">Привод</div>
                        <div class="line span4">${article.driveUnit}</div>
                    </div>
                    <div>
                        <div class="bold line span3">Руль</div>
                        <div class="line span4">${article.grip}</div>
                    </div>
                </td>
            </tr>
        </table>

    </c:forEach>

</div>





