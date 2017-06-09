<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="${pageContext.servletContext.contextPath}/css/newArticle.css" rel="stylesheet" type="text/css">
        <title>Добавить новую статью</title>
        <script src="${pageContext.request.servletContext.contextPath}/resource/js/newArticle.js" defer></script>
    </head>
    <body>
        <div class="offset1">
            <div class="row">
                <h2>Привет, ${username}!</h2>
                Добавить новое объявление<br>

                <h4>Загрузить файл:</h4>
                <form method="POST" action="upload" enctype="multipart/form-data" >
                    Выберите файл в вашей файловой системе:
                    <input type="file" name="file" id="file" multiple="true"/><br>
                    <input type="submit" value="Загрузить" name="upload" id="upload" />
                </form>
                
                <p>${info}</p>

            </div>



            <form role="form" role="form" method="POST" action="addarticle" onsubmit="return valid()">
                <input type="hidden" name="fileNames" value="${fileNames}">
                <div class="row">
                    <label class="span3">Тип кузова:</label>
                    <select class="span5 form-control" name="carbody" required>
                        <option selected="selected" disabled="disabled" value="">Выбрать...</option>
                        <option value="Седан">Седан</option>
                        <option value="Хэтчбэк">Хэтчбэк</option>
                        <option value="Пикап">Пикап</option>
                        <option value="Универсал">Универсал</option>
                        <option value="Внедорожник">Внедорожник</option>
                        <option value="Кабриолет">Кабриолет</option>
                        <option value="Купе">Купе</option>
                        <option value="Минивэн">Минивэн</option>
                        <option value="Родстер">Родстер</option>
                        <option value="Лимузин">Лимузин</option>
                        <option value="Лимузин">Лимузин</option>
                    </select>
                </div>
                <div class="row">
                    <label class="span3">Марка:</label>
                    <input type="text" class="span5 form-control" name="mark" required>
                </div>
                <div class="row">
                    <label class="span3">Модель:</label>
                    <input type="text" class="span5 form-control" name="model" required>
                </div>
                <div class="row">
                    <label class="span3">Дата первичной регистрации:</label>
                    <input type="date" class="span3 form-control" name="firstReg" required>
                </div>
                <div class="row">
                    <label class="span3">Состояние:</label>
                    <select class="span5 form-control" name="condition" required>
                        <option selected="selected" disabled="disabled" value="">Выбрать...</option>
                        <option value="Не требует ремонта">Не требует ремонта</option>
                        <option value="Битый / не на ходу">Битый / не на ходу</option>
                        <option value="На разбор целиком">На разбор целиком</option>
                    </select>
                </div>
                <div class="row">
                    <label class="span3">Регистрационный номер:</label>
                    <input type="text" class="span5 form-control" name="regNumber" required>
                </div>
                <div class="row">
                    <label class="span3">Дата приобретения:</label>
                    <input type="date" class="span3 form-control" name="purchaseDate" required>
                </div>
                <div class="row">
                    <label class="span3">Паспорт т/с:</label>
                    <select class="span3 form-control" name="passport" required>
                        <option selected="selected" disabled="disabled" value="">Выбрать...</option>
                        <option value="Оригинал">Оригинал</option>
                        <option value="Дубликат">Дубликат</option>
                    </select>
                </div>
                <div class="row">
                    <label class="span3">Цвет:</label>
                    <select class="span5 form-control" name="color" required>
                        <option selected="selected" disabled="disabled" value="">Выбрать...</option>
                        <option value="бежевый">бежевый</option>
                        <option value="белый">белый</option>
                        <option value="желтый">желтый</option>
                        <option value="зеленый">зеленый</option>
                        <option value="золотистый">золотистый</option>
                        <option value="коричневый">коричневый</option>
                        <option value="красный">красный</option>
                        <option value="оранжевый">оранжевый</option>
                        <option value="розовый">розовый</option>
                        <option value="серебристый">серебристый</option>
                        <option value="серый">серый</option>
                        <option value="синий">синий</option>
                        <option value="фиолетовый">фиолетовый</option>
                        <option value="черный">черный</option>
                    </select>
                </div>
                <div class="row">
                    <label class="span3">Пробег (км):</label>
                    <input type="text" class="span5 form-control" name="run" id="run" required>
                </div>
                <div class="row">
                    <label class="span3">Привод:</label>
                    <select class="span5 form-control" name="driveUnit" required>
                        <option selected="selected" disabled="disabled" value="">Выбрать...</option>
                        <option value="Передний">Передний</option>
                        <option value="Задний">Задний</option>
                        <option value="Полный">Полный</option>
                    </select>
                </div>
                <div class="row">
                    <label class="span3">Объём двигателя (л):</label>
                    <input type="number" class="span5 form-control" name="engineVolume" id="engineVolume" required>
                </div>
                <div class="row">
                    <label class="span3">Тип двигателя:</label>
                    <select class="span5 form-control" name="engineType" >
                        <option selected="selected" disabled="disabled" value="">Выбрать...</option>
                        <option value="Бензин">Бензин</option>
                        <option value="Бензин инжектор">Бензин инжектор</option>
                        <option value="Бензин карбюратор">Бензин карбюратор</option>
                        <option value="Бензин ротор">Бензин ротор</option>
                        <option value="Бензин турбонаддув">Бензин турбонаддув</option>
                        <option value="Бензин инжектор с нагнетателем">Бензин инжектор с нагнетателем</option>
                        <option value="Дизель">Дизель</option>
                        <option value="Дизель турбонаддув">Дизель турбонаддув</option>
                        <option value="Газ">Газ</option>
                        <option value="Электромотор">Электромотор</option>
                        <option value="Гибрид">Гибрид</option>
                    </select>
                </div>
                <div class="row">
                    <label class="span3">Мощность двигателя (лс):</label>
                    <input type="text" class="span5 form-control" name="enginePower" id="enginePower" required>
                </div>
                <div class="row">
                    <label class="span3">Сухая масса (кг):</label>
                    <input type="text" class="span5 form-control" name="dryMass" id="dryMass" required>
                </div>
                <div class="row">
                    <label class="span3">Допустимая полная масса (кг):</label>
                    <input type="text" class="span5 form-control" name="fullMass" id="fullMass" required>
                </div>
                <div class="row">
                    <label class="span3">Бак (л):</label>
                    <input type="text" class="span5 form-control" name="tank" id="tank" required>
                </div>
                <div class="row">
                    <label class="span3">Коробка:</label>
                    <select class="span5 form-control" name="gear" required>
                        <option selected="selected" disabled="disabled" value="">Выбрать...</option>
                        <option value="Механическая">Механическая</option>
                        <option value="Автомат">Автомат</option>
                        <option value="Полуавтомат">Полуавтомат</option>
                    </select>
                </div>
                <div class="row">
                    <label class="span3">Руль:</label>
                    <select class="span5 form-control" name="grip" required>
                        <option selected="selected" disabled="disabled" value="">Выбрать...</option>
                        <option value="Левый">Левый</option>
                        <option value="Правый">Правый</option>
                    </select>
                </div>
                <div class="row">
                    <label class="span3">Расход топлива (л/100км):</label>
                    <input type="text" class="span5 form-control" name="fuelRate" id="fuelRate" required>
                </div>
                <div class="row">
                    <label class="span3">Количество мест:</label>
                    <input type="text" class="span5 form-control" name="seats" id="seats" required>
                </div>
                <div class="row">
                    <label class="span3">Количество дверей:</label>
                    <input type="text" class="span5 form-control" name="doors" id="doors" required>
                </div>
                <div class="row">
                    <label class="span3">Цена:</label>
                    <input type="text" class="span5 form-control" name="price" id="price" required>
                </div>
                <div class="row">
                    <label class="span3">Техосмотр действителен:</label>					
                    <input type="date" class="span3 form-control" name="checkTime" required>
                </div>
                <div class="row">
                    <label class="span3">Другое:</label>
                    <textarea class="span5 form-control" name="moreInfo" style="min-width: 83%; max-width: 83%;"></textarea>	
                </div>	
                <button type="submit" class="btn-lg btn-danger">Отправить</button>
            </form>
        </div>

    </body>
</html>
