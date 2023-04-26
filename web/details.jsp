<%@ page import="kz.kanglybay.javaEE.Item" %><%--
  Created by IntelliJ IDEA.
  User: Professional
  Date: 14.04.2023
  Time: 14:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Details</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body>
<jsp:include page="navbar.jsp"/>
<%
    Item item = (Item) request.getAttribute("item");
%>
<label class="form-label">Наименование</label>
<div><%=item.getName()%></div>
<label class="form-label">Описание</label>
<div><%=item.getDescription()%></div>
<label class="form-label">Крайний срок:</label>
<div><%=item.getDeadlineDate()%></div>
<div class="mb-3">
    <label class="form-label">Выполнено:</label>
    <select class="form-select" aria-label="Default select example">
        <option value="false">Да</option>
        <option value="true">Нет</option>
    </select>
</div>
<button type="submit" class="btn btn-primary">Сохранить</button>
<button type="submit" class="btn btn-primary">Удалить</button>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>
</html>
