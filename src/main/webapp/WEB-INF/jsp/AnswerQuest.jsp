<%@ page import="com.udemy.microservice.repository.QuestRepos" %>
<%@ page import="org.springframework.beans.factory.annotation.Autowired" %>
<%@ page import="com.udemy.microservice.bean.question" %>
<%@ page import="java.util.List" %>
<%@ page import="com.udemy.microservice.controller.CreateQuestController" %>
<%@ page import="com.udemy.microservice.service.QuestService" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="d" %>
<%@ page contentType="text/html; ISO-8859-1" language="java" %>
<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
<%--    <meta http-equiv="refresh" content="10">--%>
    <title>Answer Page</title>
<%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">--%>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
<%--    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">--%>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@1,300&family=Sriracha&display=swap" rel="stylesheet">
    <style>
        body{
            font-family: 'Open Sans', sans-serif;
            font-family: 'Sriracha', cursive;
            background-color: #f3f2ef;
        }
        .effect2
        {
            position: relative;
        }
        .effect2:before, .effect2:after
        {
            z-index: -1;
            position: absolute;
            content: "";
            bottom: 15px;
            left: 10px;
            width: 80%;
            top: 80%;
            max-width:300px;
            background: #777;
            -webkit-box-shadow: 0 15px 10px #777;
            -moz-box-shadow: 0 15px 10px #777;
            box-shadow: 0 15px 10px #777;
            -webkit-transform: rotate(-3deg);
            -moz-transform: rotate(-3deg);
            -o-transform: rotate(-3deg);
            -ms-transform: rotate(-3deg);
            transform: rotate(-3deg);
        }
        .effect2:after
        {
            -webkit-transform: rotate(3deg);
            -moz-transform: rotate(3deg);
            -o-transform: rotate(3deg);
            -ms-transform: rotate(3deg);
            transform: rotate(3deg);
            right: 10px;
            left: auto;
        }
        .box {
            width:70%;
            height:200px;
            background:#FFF;
            margin:40px auto;
        }
        .boxer{
            box-shadow:
                    0 2.8px 2.2px rgba(0, 0, 0, 0.034),
                    0 6.7px 5.3px rgba(0, 0, 0, 0.048),
                    0 12.5px 10px rgba(0, 0, 0, 0.06),
                    0 22.3px 17.9px rgba(0, 0, 0, 0.072),
                    0 41.8px 33.4px rgba(0, 0, 0, 0.086),
                    0 100px 80px rgba(0, 0, 0, 0.12)
        ;
            min-height: 150px;
            width: 80vw;
            margin: 75px auto;
            background: white;
            border-radius: 5px;
        }
        .boxer-1{
            min-height: 100px;
            width: 60vw;
            margin: 50px auto;
            background: white;
        }
        .flotbtn{
            position: fixed;
            background-color: coral;
            colo
        }
    </style>
</head>
<body>
    <jsp:useBean id="questions" scope="request" type="java.util.List"/>
    <button class="btn btn-secondary flotbtn" type="button" data-bs-toggle="collapse" data-bs-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
        Other's Answer
    </button><br>
    <c:forEach var="question" items="${questions}">
        <div class="boxer">
        <button type="button" class="btn btn-primary">
            Question <span class="badge bg-secondary">${question.getId()+1}</span>
        </button>
        <span class="badge rounded-pill bg-info text-dark">Author: ${question.getUsername()}</span>
         <div class="boxer-1">
        <form action="answerHere" method="post">
        <p>${question.getQuest()}</p>
         <input name="quest" type="hidden" value="${question.getQuest()}">
            <div class="form-floating mb-3">
                <label for="floatingInput">username</label>
                <input type="text" name="uname" class="form-control" id="floatingInput" placeholder="your name..">
            </div>
            <div class="form-floating">
                <label for="floatingTextarea2">Answer</label>
            <textarea name="answers" class="form-control" placeholder="Leave your answer here" id="floatingTextarea2" style="height: 100px"></textarea>
            </div>
        <button class="btn btn-success">save</button></form></div>
            <div class="collapse box effect2" id="collapseExample">
            <div class="card card-body">
                <d:forEach var="answer" items="${question.getAnswer().entrySet()}">
                    <p>${answer.getKey()}: ${answer.getValue()}</p>
                </d:forEach>
            </div>
        </div><br>
        </div>
    </c:forEach>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>

</html>
