<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form:form method="POST" commandName="Word" action="/words">

    <form:label path="word_ru">Russian word:</form:label>
    <form:input path="word_ru" />

    <form:label path="word_en">English word</form:label>
    <form:input path="word_en" />


    <footer>
        <input type="submit" class="btnLogin" value="Enter"/>
    </footer>


</form:form>
</body>
</html>
