<#assign
known = Session.SPRING_SECURITY_CONTEXT??
>

<#if known>
    <#assign
    sessionUser = Session.SPRING_SECURITY_CONTEXT.authentication.principal
    name = sessionUser.getUsername()
    isAdmin = sessionUser.isAdmin()
    >
<#else>
    <#assign
    name = "unknown"
    isAdmin = false
    >
</#if>