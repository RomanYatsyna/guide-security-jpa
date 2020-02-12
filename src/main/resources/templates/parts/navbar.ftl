<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="/">Home</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="registerUser">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="/registration">Register User</a>
            </li>
        </ul>
    </div>
    <div>
        <form method="post" action="/logout" class="form-inline my-2 my-lg-0">
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Logout</button>
        </form>
    </div>
</nav>