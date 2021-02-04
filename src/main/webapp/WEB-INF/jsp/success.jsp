<%@ page contentType="text/html; ISO-8859-1" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
     <title>success page</title>
    <style>
        body{
            background-color: #f6f6f6;
        }
        .success-quest{
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
    <div class="success-quest effect1">
    <h2>Congrats. You have created question successfully</h2>
    <a href="/">Go to Home</a>
    <a  href="/allQuest">Answer page</a>
    </div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
</html>