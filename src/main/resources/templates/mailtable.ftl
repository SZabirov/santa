<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Сайт Деда Мороза</title>
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
            <li class="nav-item active">
                <a class="nav-link" href="/letters">Посмотреть все письма</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/kids">Ребята</a>
            </li>
        </ul>

        <form action="/logout" class="form-inline my-2 my-md-0">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Logout</button>
        </form>

    </div>
</nav>

<div class="container">
    <table class="table">
        <tr>
            <th>Номер ребенка</th>
            <th>Имя</th>
            <th>E-mail</th>
            <th>Возраст</th>
            <th>Текст Письма</th>
        </tr>

    <#list letterList as list>
    <tr>
        <td>${list.id}</td>
        <td>${list.name}</td>
        <td>${list.email}</td>
        <td>${list.age}</td>
        <td>${list.letter}</td>
    </tr>
    </#list>
    </table>
</div>

<footer class="footer">
    <div class="container">
        <span class="text-muted">© JI2017</span>
    </div>
</footer>
</body>
</html>