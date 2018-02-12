<!DOCTYPE html>
<html>
<head>
    <title>Сайт Деда Мороза</title>
    <link rel="stylesheet" href="/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="/css/footer.css" type="text/css">
</head>
<body>
<nav class="navbar navbar-toggleable-md navbar-inverse bg-inverse">

    <a class="navbar-brand" href="#">SantaProject</a>

    <div class=" navbar-collapse">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item ">
                <a class="nav-link" href="/">Home </span></a>
            </li>
        </ul>


    <form action="/login" class="form-inline my-2 my-md-0">
        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Login</button>
    </form>
    </div>

</nav>
<div class="jumbotron" style="margin-top: -30px; ">
    <div class="container">
        <h1 class="display-3">С наступающим!</h1>
        <p><font size="5">Войдите в систему! </font></p>
        <#--<p><img width="700" height="350" class="img-thumbnail" alt="" src="/images/5.jpg"></p>-->

    </div>
</div>

<div class="container">
    <form class="loginForm" action="/login" method="post">

        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <#if model.error.isPresent()>
        <div class="alert alert-danger" role="alert">Логин или пароль введены неверно</div>
        </#if>
        <div><label> User Name : <input class="form-control" type="text" name="username"/> </label></div>
        <div><label> Password: <input class="form-control" type="password" name="password"/> </label></div>


        <div><input class="btn btn-primary" type="submit" value="Log In"/></div>
    </form>

</div>

<footer class="footer">
    <div class="container">
        <span class="text-muted">© JI2017</span>
    </div>
</footer>

</body>
</html>