<%@ page contentType="text/html; ISO-8859-1" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <title>Answer Success Page</title>
    <style>
        body{
            background-color: darksalmon;
        }
        .success-ans{
            font-family: 'Sriracha', cursive;
            margin: 100px auto;
            width: 70%;
            height: 300px;
            padding: 30px 15px 15px;
            background-color: #FFFFFF;
        }
        .effect1{
            -webkit-box-shadow: 0 10px 6px -6px #777;
            -moz-box-shadow: 0 10px 6px -6px #777;
            box-shadow: 0 10px 6px -6px #777;
        }
    </style>
</head>
<body>
<div class="success-ans effect1">
    <p>Your answer is successfully submitted</p>
    <a href="/">Go to Home</a>
    <a href="/allQuest">Answer Page</a>
</div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
</html>
