<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
Home page

<form action="/logout" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <div><input type="submit" value="Logout"/></div>
</form>
</body>
</html>