<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>


<ol>


    <#list  petListByName as r>


        <#if r.petId==1>
            <li> 我日你妈 </li>
        <#else >
            <li> ${r.petName}</li>
        </#if>

    </#list>
</ol>

</body>
</html>