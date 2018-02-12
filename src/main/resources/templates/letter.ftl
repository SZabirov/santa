<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">
    <link rel="stylesheet" href="/css/footer.css" type="text/css">


    <title>Письмо Деду Морозу</title>

    <!-- Bootstrap core CSS -->
    <link href="/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="cover.css" rel="stylesheet">

</head>

<body>
<nav class="navbar navbar-toggleable-md navbar-inverse bg-inverse">

    <a class="navbar-brand" href="#">SantaProject</a>

    <div class="navbar-collapse">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="/">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="/letter">Написать письмо</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/behavior">Оценить поведение</a>
            </li>
        </ul>

        <form action="/logout" class="form-inline my-2 my-md-0">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Logout</button>
        </form>

    </div>
</nav>
<div class="container">
    <h1>Письмо Деду Морозу:</h1>
    <form method="post">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

        <div class="form-group">
            <label for="email">Ваш email: </label>
            <input type="email" required="true" class="form-control" name="email" id="email" aria-describedby="emailHelp" placeholder="Введите email">
            <small id="emailHelp" class="form-text text-muted">Email требуется для обратной связи</small>
        </div>

        <div class="form-group">
            <label for="name">Как к вам обращаться Дедушке: </label>
            <input type="text" required="true" class="form-control" id="name" name="name" placeholder="Введите имя">
        </div>

        <div class="form-group">
            <label for="age">Сколько вам лет: </label>
            <input type="number" required="true" class="form-control" id="age" name="age" placeholder="Введите возраст">
        </div>

        <div class="form-group">
            <label for="letterText">Текст письма: </label>
            <textarea maxlength="255" required="true" class="form-control" id="letterText" name="letterText" rows="3" placeholder="Напишите письмо"></textarea>
        </div>

        <input class="btn btn-primary" type="submit">

    </form>
</div>

<footer class="footer">
    <div class="container">
        <span class="text-muted">© JI2017</span>
    </div>
</footer>
</body>
</html>