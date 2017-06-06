<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<div class="login">
    <div class="offset1">
        <h2>Авторизуйтесь!</h2>
        <p>${info}</p>
        <form action="login" method="POST">
            <div class="login">
                <div class="row">
                    <label class="span1">Логин: </label>
                    <input type="text" class="span5 form-control" placeholder="Логин" name="login" required>
                </div>
                <div class="row">
                    <label class="span1">Пароль: </label>
                    <input type="password" class="span5 form-control" placeholder="Пароль" name="password" required>
                    <input type="hidden" name="path">
                </div>
                <div class="row">
                    <button type="submit" class="btn btn-danger span1">Вход</button>
                    <input type="checkbox" checked="checked"> Запомнить меня
                </div>
            </div>
            <div class="row">
                <a href="newuser">Зарегистрироваться</a>             
            </div>
            <!--
            <div class="login" style="background-color:#f1f1f1">
                <button type="button" class="cancelbtn">Cancel</button>
                <span class="psw">Forgot <a href="#">password?</a></span>
            </div>
            -->
        </form>
    </div>
</div>

