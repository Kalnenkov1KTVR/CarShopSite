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
        <div class="offset1">
            <div class="row">
                <h2>Привет, ${username}!</h2>
                Добавить новое объявление<br>

                <a href="uploadPage" name="upload_file">Загрузить файл</a>

                <p>${info}</p>

            </div>



            <form role="form" role="form" method="POST" action="addarticle" onsubmit="return valid()">
                <input type="hidden" name="fileName" value="${fileName}">
                <div class="row">
                    <label class="span3">Тип кузова:</label>
                    <select class="span5 form-control" name="carbody" required>
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
                        <option value="Fine">Не требует ремонта</option>
                        <option value="Broken">Битый / не на ходу</option>
                        <option value="Non-repairable">На разбор целиком</option>
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
                        <option value="Original">Оригинал</option>
                        <option value="Duplicate">Дубликат</option>
                    </select>
                </div>
                <div class="row">
                    <label class="span3">Цвет:</label>
                    <select class="span5 form-control" name="color" required>
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
                    <input type="text" class="span5 form-control" name="run" required>
                </div>
                <div class="row">
                    <label class="span3">Привод:</label>
                    <select class="span5 form-control" name="driveUnit" required>
                        <option selected="selected" disabled="disabled" value="">Выбрать...</option>
                        <option value="Front">Передний</option>
                        <option value="Rear">Задний</option>
                        <option value="Full">Полный</option>
                    </select>
                </div>
                <div class="row">
                    <label class="span3">Объём двигателя (л):</label>
                    <input type="text" class="span5 form-control" name="engineVolume" required>
                </div>
                <div class="row">
                    <label class="span3">Тип двигателя:</label>
                    <select class="span5 form-control" name="engineType" >
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
                    <input type="text" class="span5 form-control" name="enginePower" required>
                </div>
                <div class="row">
                    <label class="span3">Сухая масса (кг):</label>
                    <input type="text" class="span5 form-control" name="dryMass" required>
                </div>
                <div class="row">
                    <label class="span3">Допустимая полная масса (кг):</label>
                    <input type="text" class="span5 form-control" name="fullMass" required>
                </div>
                <div class="row">
                    <label class="span3">Бак (л):</label>
                    <input type="text" class="span5 form-control" name="tank" required>
                </div>
                <div class="row">
                    <label class="span3">Коробка:</label>
                    <select class="span5 form-control" name="gear" required>
                        <option selected="selected" disabled="disabled" value="">Выбрать...</option>
                        <option value="Mech">Механическая</option>
                        <option value="Auto">Автомат</option>
                        <option value="Hald-auto">Полуавтомат</option>
                    </select>
                </div>
                <div class="row">
                    <label class="span3">Руль:</label>
                    <select class="span5 form-control" name="grip" required>
                        <option selected="selected" disabled="disabled" value="">Выбрать...</option>
                        <option value="Left">Левый</option>
                        <option value="Right">Правый</option>
                    </select>
                </div>
                <div class="row">
                    <label class="span3">Расход топлива (л/100км):</label>
                    <input type="text" class="span5 form-control" name="fuelRate" required>
                </div>
                <div class="row">
                    <label class="span3">Количество мест:</label>
                    <input type="text" class="span5 form-control" name="seats" required>
                </div>
                <div class="row">
                    <label class="span3">Количество дверей:</label>
                    <input type="text" class="span5 form-control" name="doors" required>
                </div>
                <div class="row">
                    <label class="span3">Цена:</label>
                    <input type="text" class="span5 form-control" name="price" required>
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
