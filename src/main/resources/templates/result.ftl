<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>Result</title>
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/css/footer.css" type="text/css">
</head>
<body>
<nav class="navbar navbar-toggleable-md navbar-inverse bg-inverse">
    <a class="navbar-brand" href="#">SantaProject</a>

    <div class="navbar-collapse">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="/">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item ">
                <a class="nav-link" href="/letter">Написать письмо</a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="/behavior">Оценить поведение</a>
            </li>
        </ul>

        <form action="/logout" class="form-inline my-2 my-md-0">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Logout</button>
        </form>

    </div>
</nav>

<div class="jumbotron" style="margin-top: -30px; ">
    <div class="container">
        <h1 class="display-3">Анкета поведения</h1>

    <#--<p><img width="700" height="350" class="img-thumbnail" alt="" src="/images/5.jpg"></p>-->

    </div>
</div>

<div class="container">
    <h1>Ваш результат составляет: ${res}/100</h1>

</div>

<footer class="footer">
    <div class="container">
        <span class="text-muted">© JI2017</span>
    </div>
</footer>
</body>
</html>