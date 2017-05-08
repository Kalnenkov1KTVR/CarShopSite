<%-- 
    Document   : newArticle
    Created on : 03.03.2017, 17:46:00
    Author     : jvm
--%>

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
        Добавить новую статью<br>
        <a href="uploadPage" name="upload_file">Загрузить файл</a>

        <p>${info}</p>
        <br>


        Заголовки опубликованных статей
        <br>
        <c:forEach var="article" items="${articles}" varStatus="status">
            <p><a href="user?article_id=${article.id}">${status.index+1}. ${article.model}</a> <a href="deletearticle?id=${article.id}">Удалить</a></p>
        </c:forEach>



        <form role="form" role="form" method="POST" action="addarticle" onsubmit="return valid()">
            <div class="row">
                <label class="span3">Тип кузова:</label>
                <select class="span5 form-control" name="carbody" >
                    <option selected="selected" disabled="disabled" value="">Выбрать...</option>
                    <option value="Sedan">Седан</option>
                    <option value="Hatchback">Хэтчбэк</option>
                    <option value="Pickup">Пикап</option>
                    <option value="Universal">Универсал</option>
                    <option value="Offroader">Внедорожник</option>
                    <option value="Cabriolette">Кабриолет</option>
                    <option value="Coupe">Купе</option>
                    <option value="Minivan">Минивэн</option>
                    <option value="Roadster">Родстер</option>
                    <option value="Limousine">Лимузин</option>
                    <option value="Crossover">Кроссовер</option>
                </select>
            </div>
            <div class="row">
                <label class="span3">Марка:</label>
                <input type="text" class="span5 form-control" name="mark" >
            </div>
            <div class="row">
                <label class="span3">Модель:</label>
                <input type="text" class="span5 form-control" name="model" >
            </div>
            <div class="row">
                <label class="span3">Дата первичной регистрации:</label>
                <input type="date" class="span5 form-control" id="firstReg" >
            </div>
            <div class="row">
                <label class="span3">Состояние:</label>
                <select class="span5 form-control" name="condition" >
                    <option selected="selected" disabled="disabled" value="">Выбрать...</option>
                    <option value="Fine">Не требует ремонта</option>
                    <option value="Broken">Битый / не на ходу</option>
                    <option value="Non-repairable">На разбор целиком</option>
                </select>
            </div>
            <div class="row">
                <label class="span3">Регистрационный номер:</label>
                <input type="text" class="span5 form-control" id="regNumber" >
            </div>
            <div class="row">
                <label class="span3">Дата приобретения:</label>
                <input type="date" class="span3 form-control" id="purchaseDate">
            </div>
            <div class="row">
                <label class="span3">Паспорт т/с:</label>
                <select class="span3 form-control" id="passport" >
                    <option selected="selected" disabled="disabled" value="">Выбрать...</option>
                    <option value="Original">Оригинал</option>
                    <option value="Duplicate">Дубликат</option>
                </select>
            </div>
            <div class="row">
                <label class="span3">Цвет:</label>
                <select class="span5 form-control" id="color" >
                    <option selected="selected" disabled="disabled" value="">Выбрать...</option>
                    <option value="beige">бежевый</option>
                    <option value="white">белый</option>
                    <option value="yellow">желтый</option>
                    <option value="green">зеленый</option>
                    <option value="golden">золотистый</option>
                    <option value="brown">коричневый</option>
                    <option value="red">красный</option>
                    <option value="orange">оранжевый</option>
                    <option value="pink">розовый</option>
                    <option value="silver">серебристый</option>
                    <option value="grey">серый</option>
                    <option value="blue">синий</option>
                    <option value="violet">фиолетовый</option>
                    <option value="black">черный</option>
                </select>
            </div>
            <div class="row">
                <label class="span3">Пробег (км):</label>
                <input type="text" class="span5 form-control" id="run" >
            </div>
            <div class="row">
                <label class="span3">Привод:</label>
                <select class="span5 form-control" id="driveUnit" >
                    <option selected="selected" disabled="disabled" value="">Выбрать...</option>
                    <option value="Front">Передний</option>
                    <option value="Rear">Задний</option>
                    <option value="Full">Полный</option>
                </select>
            </div>
            <div class="row">
                <label class="span3">Объём двигателя (л):</label>
                <input type="text" class="span5 form-control" id="engineVolume" >
            </div>
            <div class="row">
                <label class="span3">Тип двигателя:</label>
                <select class="span5 form-control" id="engineType" >
                    <option selected="selected" disabled="disabled" value="">Выбрать...</option>
                    <option value="enginetype1">Бензин</option>
                    <option value="enginetype2">Бензин инжектор</option>
                    <option value="enginetype3">Бензин карбюратор</option>
                    <option value="enginetype4">Бензин ротор</option>
                    <option value="enginetype5">Бензин турбонаддув</option>
                    <option value="enginetype6">Бензин инжектор с нагнетателем</option>
                    <option value="enginetype7">Дизель</option>
                    <option value="enginetype8">Дизель турбонаддув</option>
                    <option value="enginetype9">Газ</option>
                    <option value="enginetype10">Электромотор</option>
                    <option value="enginetype11">Гибрид</option>
                </select>
            </div>
            <div class="row">
                <label class="span3">Мощность двигателя (лс):</label>
                <input type="text" class="span5 form-control" id="enginePower" >
            </div>
            <div class="row">
                <label class="span3">Сухая масса (кг):</label>
                <input type="text" class="span5 form-control" id="dryMass">
            </div>
            <div class="row">
                <label class="span3">Допустимая полная масса (кг):</label>
                <input type="text" class="span5 form-control" id="fullMass">
            </div>
            <div class="row">
                <label class="span3">Бак (л):</label>
                <input type="text" class="span5 form-control" id="tank" >
            </div>
            <div class="row">
                <label class="span3">Коробка:</label>
                <select class="span5 form-control" id="gear" >
                    <option selected="selected" disabled="disabled" value="">Выбрать...</option>
                    <option value="Mech">Механическая</option>
                    <option value="Auto">Автомат</option>
                    <option value="Hald-auto">Полуавтомат</option>
                </select>
            </div>
            <div class="row">
                <label class="span3">Руль:</label>
                <select class="span5 form-control" id="grip" >
                    <option selected="selected" disabled="disabled" value="">Выбрать...</option>
                    <option value="Left">Левый</option>
                    <option value="Right">Правый</option>
                </select>
            </div>
            <div class="row">
                <label class="span3">Расход топлива (л/100км):</label>
                <input type="text" class="span5 form-control" id="fuelRate" >
            </div>
            <div class="row">
                <label class="span3">Количество мест:</label>
                <input type="text" class="span5 form-control" id="seats" >
            </div>
            <div class="row">
                <label class="span3">Количество дверей:</label>
                <input type="text" class="span5 form-control" id="doors" >
            </div>
            <div class="row">
                <label class="span3">Цена:</label>
                <input type="text" class="span5 form-control" id="price" >
            </div>
            <div class="row">
                <label class="span3">Техосмотр действителен:</label>					
                <input type="text" class="span5 form-control" id="checkTime">
            </div>
            <div class="row">
                <label class="span3">Другое:</label>
                <textarea class="span7 form-control" id="moreInfo"></textarea>	
            </div>	
            <div class="row">
                <label class="span3">Прикрепить файл:</label>
                <input type="file" class="form-control" multiple id="addfile">
            </div>
            <button type="submit" class="btn btn-default">Отправить</button>
        </form>


    </body>
</html>
