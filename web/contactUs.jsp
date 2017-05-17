<%-- 
    Document   : contactUs
    Created on : May 17, 2017, 1:46:50 PM
    Author     : pupil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="offset1" id="main">

    <h4>Написать письмецо:</h4>
    <form role="form" role="form" method="POST" action="" onsubmit="return valid()">
        <div class="form-group span5">
            <label for="username">Имя:</label>
            <input type="text" class="form-control" id="username" required>
        </div>
        <div class="form-group span5">
            <label for="contact">Email:</label>
            <input type="email" class="form-control" id="contact" required>
        </div>
        <div class="form-group span5">
            <label for="file">Прикрепить файл:</label>
            <input type="file" class="form-control" id="file">
        </div>
        <div class="form-group span10">
            <label for="message">Сообщение:</label>
            <textarea class="form-control" id="message" rows="5" style="max-width: 90%" required></textarea>
        </div>
        <div class="form-group span8">
        <button type="submit" class="btn btn-default">Отправить</button>
        <button type="reset" class="btn btn-default">Очистить</button>
        </div>
    </form>


</div>
