<html>
<head>

    <title>Новогодний Тест </title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
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
        <p><font size="5">Хочешь узнать, хорошо ли ты вел себя в этом году? Тогда пройди тест и получи результат! <br/>
            И тогда, возможно, именно ты получишь подарок от самого Дедушки Мороза!</font></p>
    <#--<p><img width="700" height="350" class="img-thumbnail" alt="" src="/images/5.jpg"></p>-->

    </div>
</div>

<div class="container" style="margin-bottom: 100px">
    <form action="/behavior" method="post">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <p><label for="name">Как тебя зовут? </label><br>


            <input type="text" class="form-control" name="name"/>
        </p>

        <p><br><label for="homework">Делаешь ли ты домашнее задание или работу по
            дому? </label><br></p>
        <p><input type="radio" name="homework" value="yes"> Да<Br>
            <input type="radio" name="homework" value="no"> Нет<Br>
            <input type="radio" name="homework" value="partly"> Частично<Br></p>

        <p><br><label for="parents">Слушаешься ли ты своих родителей?</label><br></p>
        <p><input type="radio" name="parents" value="yes"> Да<Br>
            <input type="radio" name="parents" value="no"> Нет<Br>
            <input type="radio" name="parents" value="partly"> Частично<Br></p>

        <p><br><label for="help">Помогаешь ли ты маме по дому?</label><br></p>
        <p><input type="radio" name="help" value="yes"> Да<Br>
            <input type="radio" name="help" value="no"> Нет<Br>
            <input type="radio" name="help" value="partly"> Частично<Br></p>

        <p><br><label for="lie">Приходилось ли тебе врать своим родителям?</label><br></p>
        <p><input type="radio" name="lie" value="no"> Да<Br>
            <input type="radio" name="lie" value="yes"> Нет<Br>
            <input type="radio" name="lie" value="partly"> Иногда<Br></p>

        <p><br><label for="school">Хорошо ли ты вел себя в школе?</label><br></p>
        <p><input type="radio" name="school" value="yes"> Да,хорошо<Br>
            <input type="radio" name="school" value="no"> Нет,плохо<Br>
            <input type="radio" name="school" value="partly"> Не очень<Br></p>

        <p><br><label for="teacher">Слушаешься ли ты своих учителей?</label><br></p>
        <p><input type="radio" name="teacher" value="yes"> Да<Br>
            <input type="radio" name="teacher" value="no"> Нет<Br>
            <input type="radio" name="teacher" value="partly"> Частично<Br></p>

        <p><br><label for="marks">Хорошо ли ты закончил четверть?</label><br></p>
        <p><input type="radio" name="marks" value="yes"> Да,хорошо<Br>
            <input type="radio" name="marks" value="no"> Нет,плохо<Br>
            <input type="radio" name="marks" value="partly"> Не очень,но я буду стараться<Br></p>

        <p><br><label for="letter">Ты отправил Дедушке Морозу свое письмо?</label><br></p>
        <p><input type="radio" name="letter" value="yes">Да,уже написал и отправил,жду ответа!<Br>
            <input type="radio" name="letter" value="no">Нет,зачем это делать?<Br>
            <input type="radio" name="letter" value="partly">Нет,но хочу написать и отправить!<Br></p>

        <p><br><label for="force">Ты веришь в магическую силу Деда Мороза?</label><br></p>
        <p><input type="radio" name="force" value="yes">Да<Br>
            <input type="radio" name="force" value="no">Нет<Br>
            <input type="radio" name="force" value="partly">Частично<Br></p>


        <p><br><label for="newyear">Как ты будешь вести себя в следущем году?</label><br></p>
        <p><input type="radio" name="newyear" value="yes"> Хорошо,Не подведу Дедушку Мороза! <Br>
            <input type="radio" name="newyear" value="no"> Так же как и всегда...<Br>
            <input type="radio" name="newyear" value="partly"> Я буду стараться вести себя хорошо лучше , чем в
            прошлом году!<br></p>


        <p><br><input type="submit" value="Отправить" class="btn btn-primary btn-block"><br></p>
    </form>
</div>

<footer class="footer">
    <div class="container">
        <span class="text-muted">© JI2017</span>
    </div>
</footer>
</body>
</html>


