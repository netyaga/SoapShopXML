<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Редактирование продукта</title>
    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/common.css" rel="stylesheet">
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
</head>
<body>
<jsp:include page="mainHeaderAdmin.jsp"/>
<form action="${contextPath}/admin/products/${product.productId}" method="post">
    <div class="container">
        <p>Создание продукта</p>
        <div>
            <input type="text" name="productName" value="${product.productName}"/>
        </div>
        <div>
            <input type="text" name="price" value="${product.price}"/>
        </div>
        <div>
            <input type="text" name="description" value="${product.description}"/>
        </div>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    </div>
    <input type="submit" class="button-ss" style="margin-left: 25%" value="Cохранить"/>
</form>
</body>
</html>
