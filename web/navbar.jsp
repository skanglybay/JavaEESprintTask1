<%--
  Created by IntelliJ IDEA.
  User: Professional
  Date: 14.04.2023
  Time: 14:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>navbar</title>
</head>
<body>
<nav class="navbar navbar-expand-lg bg-body-tertiary ">
    <div class="container-fluid bg-primary text-white">
        <a class="navbar-brand" href="/home"><h2>TASK MANAGER</h2></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/home">Все задания</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
</body>
</html>
