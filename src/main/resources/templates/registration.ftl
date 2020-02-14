<#import "parts/common.ftl" as common>
<@common.page>
    <@common.alerts/>
    <form action="/registration" method="post">
        <div class="ml-4 mt-3">
            <div class="form-group col-md-3">
                <label for="inputLogin">Login</label>
                <input name="username"
                       type="text"
                       class="form-control ${(usernameError??)?string("is-invalid", "")}"
                       id="inputLogin"
                       placeholder="Login"
                       value="<#if user??>${user.username}</#if>">
                <#if usernameError??>
                    <div class="invalid-feedback">
                        ${usernameError}
                    </div>
                </#if>
            </div>
            <div class="form-group col-md-3">
                <label for="inputPassword">Password</label>
                <input name="password"
                       type="password"
                       class="form-control ${(passwordError??)?string("is-invalid", "")}"
                       id="inputPassword"
                       placeholder="Password">
                <#if passwordError??>
                    <div class="invalid-feedback">
                        ${passwordError}
                    </div>
                </#if>
            </div>
            <div class="form-group col-md-3">
                <label for="inputPasswordConfirm">Confirm Password</label>
                <input name="confirmPassword"
                       type="password"
                       class="form-control ${(confirmPasswordError??)?string("is-invalid", "")}"
                       id="inputPasswordConfirm"
                       placeholder="Confirm Password">
                <#if confirmPasswordError??>
                    <div class="invalid-feedback">
                        ${confirmPasswordError}
                    </div>
                </#if>
            </div>
            <div class="form-group col-md-3">
                <div class="form-check">
                    <input name="isAdmin"
                           class="form-check-input"
                           type="checkbox"
                           id="isAdminCheckbox" ${(isAdmin!"false"=="true")?string("checked", "")}>
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