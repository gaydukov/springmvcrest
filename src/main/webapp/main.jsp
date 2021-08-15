
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript">

        window.onload=function () {

            document.showAll.button.addEventListener("click", alert("fff"))

            // document.getById.button.onclick=function () {
            //     alert("Привет")
            // }
            // document.getElementById("getById").addEventListener("submit", alert("fff"))
            //function() {

            //document.getById.action="/words/" + document.getById.wordid.value;
            // document.forms[0].action=
            //})
        }

    </script>
</head>
<body>

<form method="POST" commandName="Word" action="/words">

    <label path="word_ru">Russian word:</label>
    <input path="word_ru" />
    <br>
    <label path="word_en">English word</label>
    <input path="word_en" />


    <footer>
        <input type="submit" class="btnLogin" value="Enter"/>
    </footer>


</form>
<form name="showAll" method="get" action="/words">
    <h1>Показать все слова</h1>
    <input type="submit" name="button" value="OK" />
</form>
</body>
</html>
