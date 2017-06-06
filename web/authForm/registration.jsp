<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="${pageContext.servletContext.contextPath}/css/registration.css" rel="stylesheet" type="text/css">
        <title>Регистрация</title>
    </head>
    <body>
        <h4 class="row offset1"> ${reginfo} </h4>

        <div class="offset1">
            <form action="addNewUser" method="POST">            

                <h2>Введите все данные</h2>
                <div class="row">
                    <label class="span3">Имя: </label>
                    <input type="text" class="span5 form-control" name="name" placeholder="Имя">
                </div>
                <div class="row">
                    <label class="span3">Фамилия: </label> 
                    <input type="text" class="span5 form-control" name="surname" placeholder="Фамилия">
                </div>
                <div class="row">
                    <label class="span3">Логин: </label>
                    <input type="text" class="span5 form-control" name="login" placeholder="Логин">
                </div>
                <div class="row">
                    <label class="span3">Пароль: </label> 
                    <input type="password" class="span5 form-control" name="password" placeholder="Пароль">
                </div>
                <div class="row">
                    <label class="span3">Телефон: </label> 
                    <input type="text" class="span5 form-control" name="phone" placeholder="Телефон">
                </div>
                <div class="row">
                    <label class="span3">Электронная почта: </label> 
                    <input type="email" class="span5 form-control" name="email" placeholder="Электронная почта">
                </div>
                <div class="row">
                    <input type="submit" class="btn btn-danger" name="submit" value="Зарегистрироваться">
                </div>

            </form>
        </div>
    </body>
</html>
