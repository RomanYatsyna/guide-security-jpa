<#import "parts/common.ftl" as common>
<@common.loginPage>
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
</@common.loginPage>