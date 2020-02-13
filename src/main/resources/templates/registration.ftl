<#import "parts/common.ftl" as common>
<@common.page>
    <@common.alerts/>
    <form action="/registration" method="post">
        <div class="ml-4 mt-3">
            <div class="form-group col-md-3">
                <label for="inputLogin">Login</label>
                <input name="username" type="text" class="form-control" id="inputLogin" placeholder="Login">
            </div>
            <div class="form-group col-md-3">
                <label for="inputPassword">Password</label>
                <input name="password" type="password" class="form-control" id="inputPassword" placeholder="Password">
            </div>
            <div class="form-group col-md-3">
                <label for="inputPasswordConfirm">Confirm Password</label>
                <input name="passwordConfirm" type="password" class="form-control" id="inputPasswordConfirm"
                       placeholder="Confirm Password">
            </div>
            <div class="form-group col-md-3">
                <div class="form-check">
                    <input name="isAdmin" class="form-check-input" type="checkbox" id="isAdminCheckbox">
                    <label class="form-check-label" for="isAdminCheckbox">
                        ADMIN
                    </label>
                </div>
            </div>
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <button type="submit" class="btn btn-primary ml-3">Create user</button>
        </div>
    </form>
</@common.page>