<#macro page>
    <!doctype html>
    <html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <title>Your Sol</title>
    </head>
    <header class="header-wrap">
        <nav class="nav-wrap navbar navbar-expand-lg navbar-light m-auto" style="max-width: 1092px">
            <a class="navbar-brand" href="#">
<#--                <img width="120" height="76" src="/svg/logo.svg" alt="Your Sol">-->
                YOUR SOL
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto ml-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Главная <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Кольца</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Бутылки</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Пледы</a>
                    </li>
                </ul>
                <a class="navbar-brand" href="#">
                    <img width="24" height="24" src="svg/shopping-cart-solid.svg" alt="basket"/>
                </a>
            </div>
        </nav>
    </header>
    <body>

    <script src="js/jquery-3.4.1.slim.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <#nested>
    </body>
    </html>
</#macro>