<%@ page import="java.util.ArrayList" %>
<%@ page import="kz.kanglybay.javaEE.Item" %>
<%@ page import="javax.swing.*" %><%--
  Created by IntelliJ IDEA.
  User: Professional
  Date: 14.04.2023
  Time: 11:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>HOME</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body>
<jsp:include page="navbar.jsp"/>

<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#additemmodal">
    Добавить задание
</button>


<table class="table">
    <thead>
    <tr>
        <th scope="col">ID</th>
        <th scope="col">Наименование</th>
        <th scope="col">Крайний срок</th>
        <th scope="col">Выполнено</th>
        <th scope="col">Детали</th>
    </tr>
    </thead>
    <%
        ArrayList<Item> list = (ArrayList<Item>) request.getAttribute("list");
        if (list != null) {
            for (Item item : list) {
    %>
        <tbody>
        <tr>
            <td scope="row"><%=item.getId()%>
            </td>
            <td><%=item.getName()%>
            </td>
            <td><%=item.getDeadlineDate()%>
            </td>
            <td><%
                    if (item.isStatus()==false){
                %>
                Да
                <%
                    }else {
                %>
                Нет
                <%}%>
            </td>
            <td><button type="button" class="text-white bg-primary"><a href="/details?id=<%=item.getId()%>">Детали</a></button></td>
        </tr>
        </tbody>
    <%
            }
        }
    %>
</table>
<!-- Modal -->

<div class="modal fade" id="additemmodal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <form action="addItem" method="post">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div style="margin-left: 16%">
                        <div style="width: 70%">
                            <div class="mainDiv">
                                <div class="mb-3">
                                    <label for="exampleInputEmail1" class="form-label">Наименование</label>
                                    <input type="text" class="form-control" id="exampleInputEmail1"
                                           aria-describedby="emailHelp" name="name">
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Описание</label>
                                    <textarea rows="10" name="description" class="form-control">

                  </textarea>
                                </div>
                                <div class="mb-3">
                                    <label for="exampleInputEmail1" class="form-label">Крайний срок</label>
                                    <br>
                                    <input type="date" class="form-control" name="deadlineDate">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Закрыть</button>
                    <button type="submit" class="btn btn-primary">Сохранить</button>
                </div>
            </div>
        </form>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
        crossorigin="anonymous"></script>
</div>
</body>
</html>
