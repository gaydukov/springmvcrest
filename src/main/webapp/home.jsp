<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="false"%>
<html>
<head>
    <title>Словарь</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <style type="text/css">
        span.error {
            color: red;
        }
    </style>
    <script type="text/javascript">

        window.onload=function () {
            //document.getById.button.addEventListener("submit", alert("fff"))

            document.getById.button.onclick=function () {
               // alert(document.getById.wordid.value)
                document.getById.action="/word/"+ document.getById.wordid.value;
            }

           // document.getElementById("getById").addEventListener("submit", alert("fff"))
                    //function() {

                //document.getById.action="/words/" + document.getById.wordid.value;
                // document.forms[0].action=
            //})
        }

    </script>

</head>
<body>
<h1>Словарь</h1>
<h2>Добавить слово</h2>
<form method="post" commandName="Word" action="/words" >
    <table>
        <tr>
            <td>Russian word:</td>
            <td><input type="text" name="word_ru"/></td>
            <td><span class="error"><errors path="word_ru" /></span></td>
        </tr>

        <tr>
            <td>English word:</td>
            <td><input type="text" name="word_en" /></td>
            <td><span class="error"><errors path="word_en" /></span></td>
        </tr>

        <tr>
            <td colspan="3"><input type="submit" value="Ok" /></td>
        </tr>
    </table>
</form>

<h2>Показать все слова</h2>
<form method="get" commandName="Word" action="/words" >
    <table>

        <tr>
            <td colspan="3"><input type="submit" value="OK" /></td>

        </tr>
    </table>
</form>

<h2>Показать слово</h2>
<form name="getById" method="get" action="/word">
    <table>

        <tr>
            <td>WordId:</td>
            <td><input type="text"  name="wordid"></td>

        </tr>

        <tr>
            <td colspan="3"><input type="submit" id="button" value="OK" /></td>
        </tr>
    </table>
</form>

<h2>Удалить слово</h2>
<form name="deleteById" method="post" commandName="Word" action="/word" >
    <table>

        <tr>
            <td>WordId:</td>
            <td><input type="text" name="wordid"></td>

        </tr>
        <tr>
            <td colspan="3"><input type="submit" name="delete" value="OK" /></td>
        </tr>
    </table>
</form>
</body>





</html>
