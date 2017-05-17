<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="row offset1">

    <c:if test="${regUser != null}">
        <h2>Привет, ${username}!</h2>
        <a href="logout">logout</a><br>
        <br>
    </c:if>



    <div class="">
        <div class="row" style="margin-left: 30px">

            <h3>${article.mark} ${article.model}</h3>
            <div class="row span4">
                <div class="thumb row" ><img src="" width="275" height="200"></div>
                <div class="thumb row" ><img src="" width="275" height="200"></div>
                <div class="thumb row" ><img src="" width="275" height="200"></div>
            </div>
            <div class="row" style="margin-right: 30px">


                <label>Тип кузова: </label>
                ${article.carbody}
                <br>
                <label>Дата первичной регистрации: </label>
                ${article.firstReg}
                <br>
                <label>Состояние: </label>
                ${article.carCondition}
                <br>
                <label>Регистрационный номер: </label>
                ${article.regNumber}
                <br>
                <label>Дата приобретения: </label>
                ${article.purchaseDate}
                <br>
                <label>Паспорт т/с: </label>
                ${article.passport}
                <br>
                <label>Цвет: </label>
                ${article.color}
                <br>
                <label>Пробег (км): </label>
                ${article.run}
                <br>
                <label>Привод: </label>
                ${article.driveUnit}
                <br>
                <label>Объём двигателя (л): </label>
                ${article.engineVolume}
                <br>
                <label>Тип двигателя: </label>
                ${article.engineType}
                <br>
                <label>Мощность двигателя (лс): </label>
                ${article.enginePower}
                <br>
                <label>Сухая масса (кг): </label>
                ${article.dryMass}
                <br>
                <label>Допустимая полная масса (кг): </label>
                ${article.fullMass}
                <br>
                <label>Бак (л): </label>
                ${article.tank}
                <br>
                <label>Коробка: </label>
                ${article.gear}
                <br>
                <label>Руль: </label>
                ${article.grip}
                <br>
                <label>Расход топлива (л/100км): </label>
                ${article.fuelRate}
                <br>
                <label>Количество мест: </label>
                ${article.seats}
                <br>
                <label>Количество дверей: </label>
                ${article.doors}
                <br>
                <label>Цена: </label>
                ${article.price}
                <br>
                <label>Техосмотр действителен: </label>
                ${article.checkTime}	
                <br>
                <label>Другое: </label>
                ${article.moreInfo}	
                <br>
                <label>Автор: </label>
                ${article.userLogin}	
                <br>
                <label>Дата публикации: </label>
                ${article.date}	

            </div>

        </div>




        <h3>Комментарии:</h3>
        <div class="row">
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
        </div>


        <c:if test="${userGroup eq 'ADMINS' || userGroup eq 'USERS'}">


            <h3>Добавить комментарий:</h3>
            <form action="addComment" method="POST">


                <div class="row">
                    <div class="row">
                        <label>Заголовок:</label>
                        <br>
                        <input type="text" class="span5 form-control" name="comment_title" required>
                    </div>
                    <div class="row">
                        <label>Сообщение:</label>
                        <br>
                        <textarea class="span8 form-control" style="max-width: 85%;" name="comment_text" rows="6" required></textarea>
                        <input type="hidden" name="article_id" value="${article.id}">
                    </div>
                    <div class="row">
                        <button type="submit" class="btn btn-danger">Отправить</button>
                    </div>
                </div>

            </form>
        </c:if>


    </div>
</div>