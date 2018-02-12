<html lang="en">
<head>
    <title>Сайт Деда Мороза</title>
    <meta charset="utf-8">

    <link href="/css/bootstrap.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="/css/footer.css" type="text/css">
    <script src="/js/bootstrap.min.js"></script>

</head>
<body>
<nav class="navbar navbar-toggleable-md navbar-inverse bg-inverse">
    <a class="navbar-brand" href="#">SantaProject</a>

    <div class=" navbar-collapse">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="/">Home <span class="sr-only">(current)</span></a>
            </li>

    <#if isAuthenticated == true>

        <#if role == 'SANTA'>
        <li class="nav-item">
            <a class="nav-link" href="/letters">Посмотреть все письма</a>
        </li>
            <li class="nav-item">
                <a class="nav-link" href="/kids">Ребята</a>
            </li>
        <#else>
        <li class="nav-item">
            <a class="nav-link" href="/letter">Написать письмо</a>
        </li>
            <li class="nav-item">
                <a class="nav-link" href="/behavior">Оценить поведение</a>
            </li>


        </#if>
    </#if>
        </ul>

    <#if isAuthenticated == true>
        <form action="/logout" class="form-inline my-2 my-md-0">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Logout</button>
        </form>
    <#else>
    <form action="/login" class="form-inline my-2 my-md-0">
        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Login</button>
    </form>
    </#if>

    </div>
</nav>

<div class="jumbotron" style="margin-top: -30px;">
    <div class="container">
        <h1 class="display-3">Здравствуйте, ребята!</h1>
        <p><font size="5">Это главная страница Деда Мороза! </font></p>
        <p><img width="700" height="350" class="img-thumbnail" alt="" src="/images/1.jpg"></p>
        <p><a class="btn btn-primary btn-lg" role="button" href="#maincontent">Узнать больше</a></p>
    </div>
</div>

<div class="container">
    <!-- Example row of columns -->
    <div class="row" style="margin-bottom: 100px">
        <div class="col-md-4" id="maincontent">
            <h2>Письмо</h2>
            <p><img width="900" height="396" class="img-thumbnail" alt="" src="/images/2.jpg"></p>
            <p><font size="5">Отправьте письмо <br/> Деду Морозу </font></p>
            <p><a class="btn btn-secondary" role="button" href="/letter">Написать письмо</a></p>
        </div>
        <div class="col-md-4">
            <h2>Подарок</h2>
            <p><img width="900" height="396" class="img-thumbnail" alt="" src="/images/3.jpg"></p>
            <p><font size="5">Купите подарок себе <br/> и своим друзьям </font></p>
            <p><a class="btn btn-secondary" role="button" href="#">Посмотреть подарки</a></p>
        </div>
        <div class="col-md-4">
            <h2>Анкета поведения</h2>
            <p><img width="900" height="396" class="img-thumbnail" alt="" src="/images/4.jpg"></p>
            <p><font size="5">Оцените, как вы себя вели в этом году</font></p>
            <p><a class="btn btn-secondary" role="button" href="/behavior">Заполнить бланк</a></p>
        </div>
    </div>


</div> <!-- /container -->

<footer class="footer">
    <div class="container">
        <span class="text-muted">© JI2017</span>
    </div>
</footer>

</body>
</html>
