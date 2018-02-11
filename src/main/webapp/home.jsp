<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page session="false"%>
<html>
<head>
    <title>Sign Up</title>
    <style type="text/css">
        span.error {
            color: red;
        }
    </style>
</head>
<body>
<h1>Sign Up</h1>

<form:form method="post" commandName="Word" action="/words" >
    <table>
        <tr>
            <td>Russian word:</td>
            <td><form:input path="word_ru"/></td>
            <td><span class="error"><form:errors path="word_ru" /></span></td>
        </tr>

        <tr>
            <td>English word:</td>
            <td><form:input path="word_en" /></td>
            <td><span class="error"><form:errors path="word_en" /></span></td>
        </tr>



        <tr>
            <td colspan="3"><input type="submit" value="Submit" /></td>
        </tr>
    </table>
</form:form>


</body>
</html>
