<#import "parts/common.ftl" as common>
<#include "parts/security.ftl">

<@common.page>
    <table class="table table-hover ml-3">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Name</th>
        </tr>
        </thead>
        <tbody>
        <#list allUsers as user>
            <#if user.id != sessionUser.id>
                <tr onclick="window.location='/'" ;>
                    <th scope="row">${user?index+1}</th>
                    <td>${user.username}</td>
                    <td>
                        <form action="/user_delete" method="post">
                            <input type="hidden" name="id" value="${user.id}">
                            <input type="hidden" name="_csrf" value="${_csrf.token}">
                            <button type="submit" class="btn btn-danger">Delete User</button>
                        </form>
                    </td>
                </tr>
            </#if>
        </#list>
        </tbody>
    </table>
</@common.page>