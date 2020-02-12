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