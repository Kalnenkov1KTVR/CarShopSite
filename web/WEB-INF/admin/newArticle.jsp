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
        <form action="addarticle" method="POST">
            <input type="text" name="title" placeholder="Заголовок статьи">
            <br><textarea name="article" placeholder="Текст статьи"></textarea>
            <input type="submit" value="Добавить статью">
        </form>
        <br>
        Заголовки опубликованных статей
        <br>
        <c:forEach var="article" items="${articles}" varStatus="status">
            <p><a href="user?article_id=${article.id}">${status.index+1}. ${article.title}</a> <a href="deletearticle?id=${article.id}">Удалить</a></p>
        </c:forEach>



        <form role="form" role="form" method="POST" action="" onsubmit="return valid()">
            <div class="row">
                <label class="span3">Тип и тип кузова:</label>
                <select class="span5 form-control" id="carbodyType" >
                    <option selected="selected" disabled="disabled" value="">Выбрать...</option>
                    <option value="body1">Седан</option>
                    <option value="body2">Хэтчбэк</option>
                    <option value="body3">Пикап</option>
                    <option value="body4">Универсал</option>
                    <option value="body5">Внедорожник</option>
                    <option value="body6">Кабриолет</option>
                    <option value="body7">Купе</option>
                    <option value="body8">Минивэн</option>
                    <option value="body9">Родстер</option>
                    <option value="body10">Лимузин</option>
                    <option value="body11">Кроссовер</option>
                </select>
            </div>
            <div class="row">
                <label class="span3">Марка:</label>
                <input type="text" class="span5 form-control" id="mark" >
            </div>
            <div class="row">
                <label class="span3">Модель:</label>
                <input type="text" class="span5 form-control" id="model" >
            </div>
            <div class="row">
                <label class="span3">Дата первичной регистрации:</label>
                <input type="text" class="span5 form-control" id="firstReg" >
            </div>
            <div class="row">
                <label class="span3">Состояние:</label>
                <select class="span5 form-control" id="condition" >
                    <option selected="selected" disabled="disabled" value="">Выбрать...</option>
                    <option value="condition1">Не требует ремонта</option>
                    <option value="condition2">Битый / не на ходу</option>
                    <option value="condition3">На разбор целиком</option>
                </select>
            </div>
            <div class="row">
                <label class="span3">Регистрационный номер:</label>
                <input type="text" class="span5 form-control" id="regNumber" >
            </div>
            <div class="row">
                <label class="span3">Дата приобретения:</label>
                <input type="text" class="span3 form-control" id="purchaseDate">
            </div>
            <div class="row">
                <label class="span3">Паспорт т/с:</label>
                <select class="span3 form-control" id="passport" >
                    <option selected="selected" disabled="disabled" value="">Выбрать...</option>
                    <option value="passport1">Оригинал</option>
                    <option value="passport2">Дубликат</option>
                </select>
            </div>
            <div class="row">
                <label class="span3">Цвет:</label>
                <select class="span5 form-control" id="color" >
                    <option selected="selected" disabled="disabled" value="">Выбрать...</option>
                    <option value="color24">бежевый</option>
                    <option value="color8">белый</option>
                    <option value="color21">желтый</option>
                    <option value="color6">зеленый</option>
                    <option value="color19">золотистый</option>
                    <option value="color27">коричневый</option>
                    <option value="color10">красный</option>
                    <option value="color30">оранжевый</option>
                    <option value="color32">розовый</option>
                    <option value="color25">светло-бежевый</option>
                    <option value="color22">светло-желтый</option>
                    <option value="color7">светло-зеленый</option>
                    <option value="color28">светло-коричневый</option>
                    <option value="color11">светло-красный</option>
                    <option value="color31">светло-оранжевый</option>
                    <option value="color3">светло-синий</option>
                    <option value="color18">светло-фиолетовый</option>
                    <option value="color15">светло серый</option>
                    <option value="color12">серебристый</option>
                    <option value="color14">серый</option>
                    <option value="color2">синий</option>
                    <option value="color23">темно-бежевый</option>
                    <option value="color20">темно-желтый</option>
                    <option value="color5">темно-зеленый</option>
                    <option value="color9">темно-красный</option>
                    <option value="color29">темно-оранжевый</option>
                    <option value="color1">темно-синий</option>
                    <option value="color16">темно-фиолетовый</option>
                    <option value="color26">темно коричневый</option>
                    <option value="color13">темно серый </option>
                    <option value="color17">фиолетовый</option>
                    <option value="color4">черный</option>
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
                    <option value="driveunit1">Передний</option>
                    <option value="driveunit2">Задний</option>
                    <option value="driveunit3">Полный</option>
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
                    <option value="gear1">Механическая</option>
                    <option value="gear2">Автомат</option>
                    <option value="gear">Полуавтомат</option>
                </select>
            </div>
            <div class="row">
                <label class="span3">Руль:</label>
                <select class="span5 form-control" id="grip" >
                    <option selected="selected" disabled="disabled" value="">Выбрать...</option>
                    <option>Левый</option>
                    <option>Правый</option>
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
