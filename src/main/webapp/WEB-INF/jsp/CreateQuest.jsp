<%@page language="java"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8" content="application/json">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@1,300&family=Sriracha&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <title>CreateQuest</title>
    <style>
        body{
            background-color: #f6f5f5;
            font-family: 'Open Sans', sans-serif;
            font-family: 'Sriracha', cursive;
        }
        .questioner{
            margin: 150px 200px 200px;
            left:100px;
        }
    </style>
</head>
<body>
    <div class="questioner">
        <form action="create-post" method="post">
            <div class><h2>Questioner</h2></div class>
            <div class="form-group">
            <label for="user">UserName:</label>
            <input class="form-control" name="username" id="user" required/></div><br>
            <div class="form-group">
            <label for="question" >Question</label>
            <textarea name="quest" class="form-control" placeholder="enter your question here" id="question" required></textarea></div><br>
            <button type="reset" class="btn btn-warning">clear</button>
            <button class="btn btn-success">post</button>
        </form>
    </div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
</html>
