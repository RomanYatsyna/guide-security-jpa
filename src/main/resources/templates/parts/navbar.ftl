<#include "security.ftl">
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="/">Home</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="scenarios">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="/">Scenarios</a>
            </li>
            <#if isAdmin>
                <li class="nav-item">
                    <a class="nav-link" href="/registration">Register User</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/user_list">User Listr</a>
                </li>
            </#if>
        </ul>
    </div>
    <div class="navbar-text mr-3">${name}</div>
    <div>
        <form method="post" action="/logout" class="form-inline my-2 my-lg-0">
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Logout</button>
        </form>
    </div>
</nav>
