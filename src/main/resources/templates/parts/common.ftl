<#macro page>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <#-- Bootstrap libs -->
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet"
              id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <meta charset="UTF-8">
        <title>Home</title>
    </head>
    <body>
    <#include "navbar.ftl">
    <#nested>
    </body>
    </html>
</#macro>

<#macro loginPage>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <#-- Bootstrap libs -->
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet"
              id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <meta charset="UTF-8">
        <title>Login</title>
        <link rel="stylesheet" href="/css/style.css" type="text/css"/>
    </head>
    <body>
    <#nested>
    </body>
    </html>
</#macro>

<#macro alerts>
    <#if alertSuccess??>
        <div class="alert alert-success" role="alert">
            <b>${alertSuccess}</b>
        </div>
    <#elseif alertDanger??>
        <div class="alert alert-danger" role="alert">
            <b>${alertDanger}</b>
        </div>
    <#elseif alertWarning??>
        <div class="alert alert-warning" role="alert">
            <b>${alertWarning}</b>
        </div>
    </#if>
</#macro>