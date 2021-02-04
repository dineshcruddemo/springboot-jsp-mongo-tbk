<%@page contentType="text/html; ISO-8859-1" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Home</title>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Sriracha&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<%--    <link type="text/css" rel="stylesheet" href="<%= request.getContextPath()%>/src/main/resources/static/style.css"/>--%>
       <style>
        body{
            background-color: #f6f6f6;
        }
        .welcome{
            font-family: 'Sriracha', cursive;
            padding: 15px;
            margin: 100px auto;
            width: 70%;
            height: 300px;
            background-color: white;
            padding-top: 30px;
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
            width: 50%;
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


       </style>
</head>
<body>
<div class="welcome effect2">
    <h2>Welcome to Quest</h2>
    <p >Do you have unknown problems or Do you have ability to solve others problem?.Then you are in right place. click your choice to find it</p>
    <a href="/quest" class="btn btn-outline-danger">Create question</a>
    <a href="/allQuest" class="btn btn-outline-success">Give Answer</a>
</div>

</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
</html>