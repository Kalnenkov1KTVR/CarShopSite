<%-- 
    Document   : contactUs
    Created on : May 17, 2017, 1:46:50 PM
    Author     : pupil
--%>

<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>

<div class="offset1" id="main">

    <h4>Написать:</h4>
    <form role="form" role="form" action="contact" method="POST" onsubmit="return valid()">
        <div class="form-group span5">
            <label for="username">Имя:</label>
            <input type="text" class="form-control" id="username" name="username" required>
        </div>
        <div class="form-group span5">
            <label for="contact">Email:</label>
            <input type="email" class="form-control" id="contact" name="contact" required>
        </div>
        <div class="form-group span5">
            <label for="file">Прикрепить файл:</label>
            <input type="file" class="form-control" id="file">
        </div>
        <div class="form-group span10">
            <label for="message">Сообщение:</label>
            <textarea class="form-control" id="message" rows="5" style="max-width: 90%" required name="body" ></textarea>
        </div>
        <div class="form-group span8">
            <button type="submit" class="btn btn-default" name="send" value="send" id="send">Отправить</button>
            <button type="reset" class="btn btn-default">Очистить</button>
        </div>
    </form>
    <%
        if (request.getParameter("username") != null) {
            String username = request.getParameter("username");
            String contact = request.getParameter("contact");
            String message = request.getParameter("message");

            if (mail.SendEmail.run(contact, username, message)) {
    %>
    <p class="goodtogo end">Сообщение успешно отправлено.</p>
    <%            } else {
    %>
    <p class="warning end">Ошибка при отправке сообщения.</p>
    <%            }
        }
    %>

</div>



