<!DOCTYPE html>
<html lang="en">
<head>
    <#-- Bootstrap libs -->
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="stylesheet" href="/css/style.css" type="text/css"/>
</head>
<body>

<form action="/login" method="post">
    <div class="simple-login-container">
        <h2>Авторизация</h2>
        <div class="row">
            <div class="col-md-12 form-group">
                <input type="text" name="username" class="form-control" placeholder="Username">
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 form-group">
                <input type="password" name="password" placeholder="Enter your Password" class="form-control">
            </div>
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <div class="row">
            <div class="col-md-12 form-group">
                <input type="submit" class="btn btn-block btn-login" placeholder="Password">
            </div>
        </div>
    </div>
</form>

</body>
</html>